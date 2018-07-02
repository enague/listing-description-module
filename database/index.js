const { Client } = require("pg");

const client = new Client({
  host: "localhost",
  user: "kianna",
  database: "dev_airbnb_listingdetails",
  port: 5432
});

client.connect();

// `SELECT ov.id, ov.summary, ov.theSpace, ov.guestAccess, ov.interactionWithGuests, ov.otherThingsToNote,
//                  ov.noOfGuests, ov.noOfBedrooms, ov.noOfBeds, ov.noOfBaths, loc.listingName, loc.listingBlurb, loc.neighborhood,
//                  ov.homeHighlights1, ov.homeHighlights2, ov.homeHighlights3
//                FROM tblListingOverview as ov
//                LEFT JOIN tblListingLocation AS loc ON ov.id = loc.id WHERE ov.id = ${listingId} ;`

// `SELECT id, summary, theSpace, guestAccess, interactionWithGuests, otherThingsToNote, noOfGuests, noOfBedrooms, noOfBeds, noOfBaths, listingName, listingBlurb, neighborhood, homeHighlights1, homeHighlights2, homeHighlights3 FROM matview_overview WHERE id = ${listingId} ;`

const getListingOverview = (listingId, callback) => {
  const sql = `SELECT id, summary, theSpace, guestAccess, interactionWithGuests, otherThingsToNote, noOfGuests, noOfBedrooms, noOfBeds, noOfBaths, listingName, listingBlurb, neighborhood, homeHighlights1, homeHighlights2, homeHighlights3 FROM matview_overview WHERE id = ${listingId} ;`;
  client.query(sql, (err, results) => {
    if (err) {
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
      callback(err, null);
    } else {
      callback(null, results);
    }
  });
};

const createListing = (listing, callback) => {
  const values = [
    listing.id,
    listing.summary,
    listing.theSpace,
    listing.guestAccess,
    listing.interactionWithGuests,
    listing.otherThingsToNote,
    listing.homehighlights1,
    listing.homehighlights2,
    listing.homehighlights3,
    listing.houserules,
    listing.noOfGuests,
    listing.noOfBedrooms,
    listing.noOfBeds,
    listing.noOfBaths
  ];
  const sql = `INSERT INTO tbllistingoverview 
               (
                 id, 
                 summary, 
                 theSpace, 
                 guestAccess, 
                 interactionWithGuests, 
                 otherThingsToNote, 
                 homehighlights1, 
                 homehighlights2, 
                 homehighlights3, 
                 houserules,
                 noOfGuests, 
                 noOfBedrooms, 
                 noOfBeds, 
                 noOfBaths
              ) VALUES 
              ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14)`;
  client.query(sql, values, (err, results) => {
    if (err) {
      console.log("err", err.stack);
    } else {
      console.log("worked!", results.rows[0]);
    }
  });
};

const updateListing = (listing, callback) => {
  const sql = `UPDATE tbllistingOverview SET noofbeds=${
    listing.noOfBeds
  } WHERE id=${listing.id}`;
  client.query(sql, (err, results) => {
    if (err) {
      callback(err, null);
    } else {
      callback(null, results);
    }
  });
};

const deleteListing = (id, callback) => {
  const sql = `DELETE FROM tbllistingOverview WHERE id=${id}`;
  client.query(sql, (err, results) => {
    if (err) {
      callback(err, null);
    } else {
      callback(null, results);
    }
  });
};

module.exports = {
  getListingOverview,
  getSleepingDetails,
  createListing,
  updateListing,
  deleteListing
};
