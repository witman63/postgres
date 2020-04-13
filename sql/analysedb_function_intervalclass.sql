CREATE FUNCTION "public"."intervalclass"(IN timestamp, IN timestamp) RETURNS "text" 
	AS $BODY$DECLARE
time_interval interval;
minutes integer;
BEGIN
if $2 IS NULL then RETURN('???');
elsif $1 IS NULL then
  time_interval = now() - $2 ;
  minutes = CAST( (EXTRACT(EPOCH FROM time_interval)/60 ) AS integer) ;
     if (minutes <=  30) then RETURN('>=     ..  30 min');
  elsif (minutes <=  60) then RETURN('>=  30 ..  60 min');
  elsif (minutes <= 120) then RETURN('>=  60 .. 120 min');
  elsif (minutes <= 240) then RETURN('>= 120 .. 240 min');
  elsif (minutes <= 480) then RETURN('>= 240 .. 480 min');
  elsif (minutes <= 960) then RETURN('>= 480 .. 960 min');
  else                        RETURN('>= 960 ..     min');
  end if;
else
  time_interval = $1 - $2 ; 
  minutes = CAST( (EXTRACT(EPOCH FROM time_interval)/60 ) AS integer) ;
     if (minutes <=  30) then RETURN('    ..  30 min');
  elsif (minutes <=  60) then RETURN(' 30 ..  60 min');
  elsif (minutes <= 120) then RETURN(' 60 .. 120 min');
  elsif (minutes <= 240) then RETURN('120 .. 240 min');
  elsif (minutes <= 480) then RETURN('240 .. 480 min');
  elsif (minutes <= 960) then RETURN('480 .. 960 min');
  else                        RETURN('960 ..     min');
  end if;
end if;
END
$BODY$
	LANGUAGE plpgsql
	COST 100
	CALLED ON NULL INPUT
	SECURITY INVOKER
	VOLATILE;
ALTER FUNCTION "public"."intervalclass"(IN timestamp, IN timestamp) OWNER TO "dias";