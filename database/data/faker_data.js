const faker = require("faker");
const fs = require("fs");
const csv = require("fast-csv");

//couchdata
// let couch = [];
// headers_couch =
// 	"id,name,blurb,neighborhood,summary,thespace,guestaccess,interactionswithguests,otherthingstonote,homehighlights1,homehighlights2,homehighlights3,houserules,noofguests,noofbeds,noofbedrooms,noofbaths,roomname,typeofbed\n";
// fs.writeFileSync("faker_couch.csv", headers_couch, "utf8");

// for (let i = 1; i < 10000001; i += 1) {
// 	const id = i;
// 	const name = faker.lorem.word();
// 	const blurb = faker.lorem.word();
// 	const neighborhood = faker.address.city();
// 	const summary = faker.lorem.word();
// 	const thespace = faker.lorem.word();
// 	const guestaccess = faker.lorem.sentence();
// 	const interactionswithguests = faker.lorem.sentence();
// 	const otherthingstonote = faker.lorem.sentence();
// 	const homehighlights1 = faker.lorem.sentence();
// 	const homehighlights2 = faker.lorem.sentence();
// 	const homehighlights3 = faker.lorem.sentence();
// 	const houserules = faker.lorem.sentence();
// 	const noofguests = 4;
// 	const noofbeds = 2;
// 	const noofbedrooms = 2;
// 	const noofbaths = 3;
// 	const roomname = faker.lorem.word();
// 	const typeofbed = faker.lorem.word();
// 	couch.push([
// 		id,
// 		name,
// 		blurb,
// 		neighborhood,
// 		summary,
// 		thespace,
// 		guestaccess,
// 		interactionswithguests,
// 		otherthingstonote,
// 		homehighlights1,
// 		homehighlights2,
// 		homehighlights3,
// 		houserules,
// 		noofguests,
// 		noofbeds,
// 		noofbedrooms,
// 		noofbaths,
// 		roomname,
// 		typeofbed
// 	]);

// 	if (i % 100000 === 0) {
// 		let chunk = couch.join("\n") + "\n";
// 		fs.appendFileSync("faker_couch.csv", chunk, "utf8");
// 		couch = [];
// 	}
// }

// listing_names
console.time("listing_names");
let listing_names = [];
headers_names = "id,name,blurb,neighborhood\n";
fs.writeFileSync("faker_listing_names.csv", headers_names, "utf8");

for (let i = 1; i < 10000001; i += 1) {
	const id = i;
	const name = faker.lorem.word();
	const blurb = faker.lorem.word();
	const neighborhood = faker.address.city();
	listing_names.push([i, name, blurb, neighborhood]);

	if (i % 100000 === 0) {
		let chunk = listing_names.join("\n") + "\n";
		fs.appendFileSync("faker_listing_names.csv", chunk, "utf8");
		listing_names = [];
	}
}
console.timeEnd("listing_names");

// tblAmenities
console.time("amenities");
let tblAmenities = [];
headers_amenities = "id,category,subcategory,additionalcomments\n";
fs.writeFileSync("faker_tblAmenities.csv", headers_amenities, "utf8");

for (let i = 1; i < 10000001; i += 1) {
	const id = i;
	const name = faker.lorem.word();
	const blurb = faker.lorem.word();
	const neighborhood = faker.address.city();
	tblAmenities.push([id, name, blurb, neighborhood]);

	if (i % 100000 === 0) {
		let chunk = tblAmenities.join("\n") + "\n";
		fs.appendFileSync("faker_tblAmenities.csv", chunk, "utf8");
		tblAmenities = [];
	}
}
console.timeEnd("amenities");

// tblOverview
console.time("overview");
let tblOverview = [];
const headers =
	"id,summary,thespace,guestaccess,interactionswithguests,otherthingstonote,homehighlights1,homehighlights2,homehighlights3,houserules,noofguests,noofbeds,noofbedrooms,noofbeds\n";

fs.writeFileSync("faker_tblOverview.csv", headers, "utf8");

for (let i = 1; i < 10000001; i += 1) {
	const id = i;
	const summary = faker.lorem.word();
	const thespace = faker.lorem.word();
	const guestaccess = faker.lorem.sentence();
	const interactionswithguests = faker.lorem.sentence();
	const otherthingstonote = faker.lorem.sentence();
	const homehighlights1 = faker.lorem.sentence();
	const homehighlights2 = faker.lorem.sentence();
	const homehighlights3 = faker.lorem.sentence();
	const houserules = faker.lorem.sentence();
	const noofguest = 4;
	const noofbeds = 2;
	const noofbedrooms = 2;
	const noofbaths = 3;
	tblOverview.push([
		id,
		summary,
		thespace,
		guestaccess,
		interactionswithguests,
		otherthingstonote,
		homehighlights1,
		homehighlights2,
		homehighlights3,
		houserules,
		noofguest,
		noofbeds,
		noofbedrooms,
		noofbaths
	]);

	if (i % 100000 === 0) {
		let chunk = tblOverview.join("\n") + "\n";
		fs.appendFileSync("faker_tblOverview.csv", chunk, "utf8");
		tblOverview = [];
	}
}
console.timeEnd("overview");

// tblPictograms
let tblPictograms = [];
const headers_pictograms = "id,imgName,imgData\n";
fs.writeFileSync("faker_tblPictograms.csv", headers_pictograms, "utf8");

for (let i = 1; i < 10000001; i += 1) {
	const id = i;
	const imgName = faker.lorem.word();
	const imgData = faker.lorem.word();
	tblPictograms.push([id, imgName, imgData]);

	if (i % 100000 === 0) {
		let chunk = tblPictograms.join("\n") + "\n";
		fs.appendFileSync("faker_tblPictograms.csv", chunk, "utf8");
		tblPictograms = [];
	}
}

// tblSleepingArrangements
console.time("arrangements");
let tblSleepingArrangements = [];
headers_arrangements = "id,listingid,roomname,noofbeds,typeofbed\n";
fs.writeFileSync(
	"faker_tblSleepingArrangements.csv",
	headers_arrangements,
	"utf8"
);

for (let i = 0; i < 10000001; i += 1) {
	const id = i;
	const listingid = i;
	const roomname = faker.lorem.word();
	const noofbeds = 2;
	const typeofbed = faker.lorem.word();
	tblSleepingArrangements.push([
		id,
		listingid,
		roomname,
		noofbeds,
		typeofbed
	]);

	if (i % 100000 === 0) {
		let chunk = tblSleepingArrangements.join("\n") + "\n";
		fs.appendFileSync("faker_tblSleepingArrangements.csv", chunk, "utf8");
		tblSleepingArrangements = [];
	}
}
console.timeEnd("arrangements");

// theSpace
console.time("space");
let theSpace = [];
const headers_space = "id,thespace\n";
fs.writeFileSync("faker_theSpace.csv", headers_space, "utf8");

for (let i = 1; i < 10000001; i += 1) {
	const id = i;
	const thespace = faker.lorem.paragraph();
	theSpace.push([id, thespace]);

	if (i % 100000 === 0) {
		let chunk = theSpace.join("\n") + "\n";
		fs.appendFileSync("faker_theSpace.csv", chunk, "utf8");
		theSpace = [];
	}
}
console.timeEnd("space");
