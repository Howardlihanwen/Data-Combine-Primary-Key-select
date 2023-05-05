-- flight
create table flight(
  airline_code varchar(2) primary key,
  flight_num varchar(4),
  tail_num varchar(5) primary key,
  depa_airport varchar(3) primary key,
  dest_airport varchar(3) primary key,
  depa_year varchar(4),
  depa_month varchar(2),
  depa_date varchar(2),
  sche_depa_hr varchar(2),
  sche_depa_min varchar(2),
  actu_depa_hr  varchar(2),
  actu_depa_min varchar(2),
  dest_year varchar(4),
  dest_month varchar(2),
  dest_date varchar(2),
  dest_hr varchar(2),
  dest_min varchar(2),
  sche_duration varchar(3),
  actu_duration varchar(3),
  delay_total_time varchar(3),
  delay_depa_time varchar(3),
  delay_dest_time varchar(3),
  delay_carrier_time varchar(3),
  delay_weather_time varchar(3),
  delay_NAS_time varchar(3),
  delay_security_time varchar(3),
  delay_late_arrival_time varchar(3),
  foreign key (airline_code) references airline(airline_code),
  foreign key (depa_airport) references airport(airport_code),
  foreign key (dest_airport) references airport(airport_code)
);

-- weather
create table weather(
  WBAN varchar(5) primary key,
  date_year varchar(4),
  date_month varchar(2),
  date_date varchar(2),
  time_hr varchar(2),
  time_min varchar(2),
  time_sec varchar(2),
  sunrise_hr varchar(2),
  sunrise_min varchar(2),
  sunset_hr varchar(2),
  sunset_min varchar(2),
  dry_bulb_temp varchar(20),
  wet_bulb_temp varchar(20),
  dew_point_temp varchar(20),
  precipitation varchar(20),
  snow_fall varchar(20),  
  snow_depth varchar(20),
  relative_humidity varchar(20),
  wind_dict varchar(20),
  wind_speed varchar(20),
  station_pressure varchar(20),
  sealevel_pressure varchar(20),
  pressure_change varchar(20),
  pressure_tendency varchar(20),
  visibility varchar(20)
);

-- airplan
create table airplan(
  tail_num varchar(5),
  mfr_mdl_code varchar(7),
  mfr_year varchar(4),
  aircraft_type varchar(1), 
  eng_type varchar(1),
  mfr_co varchar(20),
  model varchar(20),
  eng_no varchar(20),
  seats_no varchar(20),
  foreign key (tail_num) references flight(tail_num)
);

-- airport
create table airport(
  state_code varchar(10),
  airport_code varchar(3) primary key,
  WBAN varchar(5),
  airportname varchar(50),
  hub_type varchar(20),
  foreign key (WBAN) references weather(WBAN)
);

-- airline
create table airline(
  airline_code varchar(2) primary key,
  airline_name varchar(20)
);