node {

    def image
    def projectName
    def helmRepo

    projectName = env.gitlabSourceRepoName;
    helmRepo = env.HELMREPO;
    /* 
    ------------------------------------------------------
    ---> Clone repository 
    ------------------------------------------------------*/
    stage('Clone repository and prepare git-project data') {
        checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: env.gitlabTargetBranch]], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'docker-hub-credentials', url: env.gitlabSourceRepoURL, refspec: '']]]
        shortCommit = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
        longCommit = sh(returnStdout: true, script: 'git rev-parse HEAD').trim()
        gitTagVersion = sh(returnStdout: true, script: "git tag --contains | tail -1").trim()
        echo "gitTagVersion: ${gitTagVersion}"
    }
    /*
    ------------------------------------------------------
    ---> Build the image
    ------------------------------------------------------*/
    stage('Build image') {
        image = docker.build("${helmRepo}/${projectName}")
        println " -> Generated image; " + image.id
    }
    /* 
    ------------------------------------------------------
    ---> Construct tag name
    ------------------------------------------------------*/
    stage('Construct tag name') {
        kcvVersion = sh (
            script: "docker inspect ${helmRepo}/${projectName}:latest | jq -r \'.[0].Config.Labels[\"katello_content_view_version\"]\'",
            returnStdout: true
        ).trim()
        echo "Katello Content View Version: ${kcvVersion}"
        imageTag = "${kcvVersion}-${env.BUILD_NUMBER}-${shortCommit}"
        echo "Image Tag : ${imageTag}"
    }
    /* 
    ------------------------------------------------------
    ---> Push the image
    ------------------------------------------------------*/
    stage('Push image') {
        docker.withRegistry('https://hub.rinis.cloud', 'docker-hub-credentials') {
            image.push("${imageTag}")
        }
    }
    /*
    ------------------------------------------------------
    ---> Generate deployment
    ------------------------------------------------------*/
    stage('Update Kubernetes Deployment file') {
        sh "sed -i 's/^version:.*/version: ${gitTagVersion}/g' ${projectName}-chart/Chart.yaml"
        sh "sed -i 's/^appVersion:.*/appVersion: ${imageTag}/g' ${projectName}-chart/Chart.yaml"
    }
    /* 
    ------------------------------------------------------
    ---> Push helm charts to charts repo  
    ------------------------------------------------------*/
    stage('Package Helm Chart and upload') {
         sh "helm push ${projectName}-chart/ ${helmRepo}"
    }
    /* 
    ------------------------------------------------------
    ---> Deploy
    ------------------------------------------------------*/
    stage('Helm install Image') {
        sh "helm repo update"
        def helm_install_status = sh(script: "helm upgrade --install --version ${gitTagVersion} ${projectName} ${helmRepo}/${projectName}-chart", returnStdout: true)
        echo "Is the helm chart for ${projectName} sucessful installed: ${helm_install_status}"
    }
}