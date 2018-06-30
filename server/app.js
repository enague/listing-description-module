require("newrelic");
const express = require("express");
const bodyParser = require("body-parser");
const path = require("path");
const db = require("../database/index.js");

const app = express();

app.use("/", express.static(path.join(__dirname, "/../public")));
app.use("/listings/:id", express.static(path.resolve(__dirname, "../public")));
app.use(bodyParser.json());

app.get("/listings/:listingId/overview", (req, res) => {
  db.getListingOverview(req.params.listingId, (err, results) => {
    if (err) {
      res.status(500);
    } else {
      res.header("Access-Control-Allow-Origin", "*");
      res.send(results);
    }
  });
});

app.get("/listings/:listingId/arrangements", (req, res) => {
  db.getSleepingDetails(req.params.listingId, (err, results) => {
    if (err) {
      res.status(500);
    } else {
      res.header("Access-Control-Allow-Origin", "*");
      res.send(results);
    }
  });
});

//CRUD operations
app.post("/listings", (req, res) => {
  db.createListing(req.body, (err, results) => {
    if (err) {
      res.status(500);
    } else {
      res.header("Access-Control-Allow-Origin", "*");
      res.send("listing created!");
    }
  });
});

app.put("/listings", (req, res) => {
  console.log(req.body);
  db.updateListing(req.body, (err, results) => {
    if (err) {
      res.status(500);
    } else {
      res.header("Access-Control-Allow-Origin", "*");
      res.send("listing updated!");
    }
  });
});

app.delete("/listings/:id", (req, res) => {
  console.log(req.params.id);
  db.deleteListing(req.params.id, (err, results) => {
    if (err) {
      res.status(500);
    } else {
      res.header("Access-Control-Allow-Origin", "*");
      res.send("listing deleted!");
    }
  });
});

module.exports = app;
