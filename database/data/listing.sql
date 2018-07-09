
DROP DATABASE IF EXISTS airbnb_listingdetails;
CREATE DATABASE airbnb_listingdetails;

\c airbnb_listingdetails;

CREATE TABLE refamenities (
  id bigint,
  category varchar(100) NOT NULL,
  subCategory varchar(100) NOT NULL,
  additionalComments varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
); 

CREATE TABLE refthespace (
  id bigint,
  theSpace text
); 

CREATE TABLE tblamenities (
  id bigint,
  listingID smallint,
  pictogramID smallint,
  category varchar(100) NOT NULL,
  subCategory varchar(100) NOT NULL,
  additionalComments varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
); 

CREATE TABLE tbllistinglocation (
  id bigint,
  ListingName varchar(100) NOT NULL,
  ListingBlurb varchar(50) NOT NULL,
  Neighborhood varchar(100) NOT NULL,
  PRIMARY KEY (id)
); 

CREATE TABLE tbllistingoverview (
  id bigint,
  summary text,
  theSpace text,
  guestAccess text,
  interactionWithGuests text,
  otherThingsToNote text,
  homeHighlights1 text,
  homeHighlights2 text,
  homeHighlights3 text,
  houseRules text,
  noOfGuests smallint DEFAULT '0',
  noOfBeds smallint DEFAULT '0',
  noOfBedrooms smallint DEFAULT '0',
  noOfBaths smallint DEFAULT '0',
  PRIMARY KEY (id)
); 

CREATE TABLE tblpictograms (
  id bigint,
  imgName varchar(100) NOT NULL,
  imgData bytea,
  PRIMARY KEY (id)
); 

CREATE TABLE tblsleepingarrangements (
  id bigint,
  listingID bigint,
  roomName varchar(100) NOT NULL,
  noOfBeds smallint DEFAULT '0',
  typeOfBed varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
); 

-- \COPY tblListingLocation FROM '/Users/kianna/Desktop/SDC_Docker/listing-description-module/database/data/faker_listing_names.csv' DELIMITER ',' CSV HEADER;
-- \COPY refAmenities FROM '/Users/kianna/Desktop/SDC_Docker/listing-description-module/database/data/faker_tblAmenities.csv' DELIMITER ',' CSV HEADER;
-- \COPY tblListingOverview FROM '/Users/kianna/Desktop/SDC_Docker/listing-description-module/database/data/faker_tblOverview.csv' DELIMITER ',' CSV HEADER; 
-- \COPY tblPictograms FROM '/Users/kianna/Desktop/SDC_Docker/listing-description-module/database/data/faker_tblPictograms.csv' DELIMITER ',' CSV HEADER; 
-- \COPY refTheSpace FROM '/Users/kianna/Desktop/SDC_Docker/listing-description-module/database/data/faker_theSpace.csv' DELIMITER ',' CSV HEADER;
-- \COPY tblSleepingArrangements FROM '/Users/kianna/Desktop/SDC_Docker/listing-description-module/database/data/faker_tblSleepingArrangements.csv' DELIMITER ',' CSV HEADER; 

-- \COPY tblListingLocation FROM '/home/ec2-user/faker_listing_names.csv' DELIMITER ',' CSV HEADER;
-- \COPY refAmenities FROM '/home/ec2-user/faker_tblAmenities.csv' DELIMITER ',' CSV HEADER;
-- \COPY tblListingOverview FROM '/home/ec2-user/faker_tblOverview.csv' DELIMITER ',' CSV HEADER; 
-- \COPY tblPictograms FROM '/home/ec2-user/faker_tblPictograms.csv' DELIMITER ',' CSV HEADER; 
-- \COPY refTheSpace FROM '/home/ec2-user/faker_theSpace.csv' DELIMITER ',' CSV HEADER;
-- \COPY tblSleepingArrangements FROM '/home/ec2-user/faker_tblSleepingArrangements.csv' DELIMITER ',' CSV HEADER; 


