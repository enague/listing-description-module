const { Client } = require('pg');

const client = new Client({
  host: 'localhost',
  user: 'kianna',
  database: 'dev_airbnb_listingdetails',
  port: 5432,
});

client.connect()

const getListingOverview = (listingId, callback) => {
  const sql = `SELECT ov.id, ov.summary, ov.theSpace, ov.guestAccess, ov.interactionWithGuests, ov.otherThingsToNote,
                 ov.noOfGuests, ov.noOfBedrooms, ov.noOfBeds, ov.noOfBaths, loc.listingName, loc.listingBlurb, loc.neighborhood,
                 ov.homeHighlights1, ov.homeHighlights2, ov.homeHighlights3
               FROM tblListingOverview as ov 
               LEFT JOIN tblListingLocation AS loc ON ov.id = loc.id WHERE ov.id = ${listingId} ;`;
  client.query(sql, (err, results) => {
    if (err) {
      console.log('db query not working getListingOverview')
      callback(err, null);
    } else {
      callback(null, results);
    }
  });
};

const getSleepingDetails = (listingID, callback) => {
  const sql = `SELECT sd.roomName, sd.noOfBeds, sd.typeOfBed FROM tblSleepingArrangements as sd WHERE sd.listingId = ${listingID} ;`;
  client.query(sql, (err, results) => {
    if (err) {
      console.log('db query not working getSleepingDetails')
      callback(err, null);
    } else {
      callback(null, results);
    }
  });
};

module.exports = {
  getListingOverview,
  getSleepingDetails,
};
