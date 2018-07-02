const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const path = require("path");
const NodeCouchDb = require("node-couchdb");
const couchimport = require("couchimport");
const config = require("../../config.js");

const opts = {
	COUCH_DELIMITER: ",",
	COUCH_URL: "http://localhost:5984",
	COUCH_DATABASE: "dev_airbnb_listingdetails"
};

const couch = new NodeCouchDb({
	auth: {
		user: config.USER,
		password: config.PASSWORD
	}
});

couch.listDatabases().then(dbs => {
	console.log(dbs);
});

couch.createDatabase("airbnb").then(err => {
	console.log("it exists already!");
});

couchimport.importFile("faker_couch.csv", opts, (err, data) => {
	console.log("done", err);
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.get("/", (req, res) => {
	res.send("Working...");
});

app.listen(3000, () => {
	console.log("Server started on port 3000");
});
