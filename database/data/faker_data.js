const faker = require('faker');
const fs = require('fs');
const csv = require('fast-csv');


//listing_names

// const csvStream_names = csv.createWriteStream({headers: false})
// const ws_names = fs.createWriteStream('faker_listing_names.csv')

// csvStream_names.pipe(ws_names);
// for(let i = 0; i < 10000001; i+=1) {
// 	const obj = {}
// 	obj['id'] = i
// 	obj['name'] = faker.lorem.word()
// 	obj['blurb'] = faker.lorem.word()
// 	obj['neighborhood'] = faker.lorem.word()
// 	csvStream_names.write(obj);
// }

// // tblAmenities

// const csvStream_amenities = csv.createWriteStream({headers: false})
// const ws_amenities = fs.createWriteStream('faker_tblAmenities.csv')

// csvStream_amenities.pipe(ws_amenities);
// for(let i = 0; i < 5000000; i+=1) {
// 	const obj = {}
// 		obj['id'] = i
// 		obj['category'] = faker.lorem.word()
// 		obj['subcategory'] = faker.lorem.word()
// 		obj['additionalcomments'] = faker.lorem.word()
// 	csvStream_amenities.write(obj);
// }


// //tblOverview

//ALTERNATIVE
// let tblOverview = []
// const headers = "0,ab,sit,Quia dolor numquam quia corporis quisquam delectus.,Rem et sed.,Deserunt delectus sed voluptatum debitis ipsam consectetur eum dolor magni.,Dolorem fugiat ut dolorem qui error et suscipit nisi.,Natus et omnis eum ipsam culpa est molestias.,Quisquam quis dolor tenetur consequatur rem suscipit.,Assumenda libero voluptatibus esse voluptates quia id.,4,2,2,3\n"

// fs.writeFileSync('faker_tblOverview.csv', headers, 'utf8');

// for(let i = 1; i < 10000001; i+=1) {
// 	const id = i
// 	const summary = faker.lorem.word()
// 	const thespace = faker.lorem.word() 
// 	const guestaccess = faker.lorem.sentence()
// 	const interactionswithguests = faker.lorem.sentence()
// 	const otherthingstonote = faker.lorem.sentence()
// 	const homehighlights1 =faker.lorem.sentence()
// 	const homehighlights2 =faker.lorem.sentence()
// 	const homehighlights3 = faker.lorem.sentence()
// 	const houserules = faker.lorem.sentence()
// 	const noofguest = 4
// 	const noofbeds = 2
// 	const noofbedrooms = 2
// 	const noofbaths = 3
// 	tblOverview.push([id, summary, thespace, guestaccess, interactionswithguests, otherthingstonote, homehighlights1, homehighlights2, homehighlights3, houserules, noofguest, noofbeds, noofbedrooms, noofbaths]
// )

// 	if(i % 50000 === 0) {
// 		let chunk = tblOverview.join('\n') + '\n'
// 		fs.appendFileSync('faker_tblOverview.csv', chunk, 'utf8');
// 		tblOverview = [];
// 	}	
// }

// //tblPictograms

// const csvStream_pictograms = csv.createWriteStream({headers: false})
// const ws_pictograms= fs.createWriteStream('faker_tblPictograms.csv')

// csvStream_pictograms.pipe(ws_pictograms);
// for(let i = 0; i < 10000001; i+=1) {
// 	const obj = {}
// 	obj['id'] = i
// 	obj['imgName'] = faker.lorem.word()
// 	obj['imgData'] = faker.lorem.word() 
// 	csvStream_pictograms.write(obj);
// }

// //tblSleepingArrangements

// const csvStream_arrangements = csv.createWriteStream({headers: false})
// const ws_arrangements= fs.createWriteStream('faker_tblSleepingArrangements.csv')

// csvStream_arrangements.pipe(ws_arrangements);
// for(let i = 0; i < 10000000; i+=1) {
// 	const obj = {}
// 	 obj['id'] = i
// 	 obj['listingid'] = i
// 	 obj['roomname'] = faker.lorem.word() 
// 	 obj['noofbeds']= 2
// 	 obj['typeofbed'] = faker.lorem.word()
// 	csvStream_arrangements.write(obj);
// }

// let tblSleepingArrangements = []
// headers_arrangements = "id,listingid,roomname,noofbeds,typeofbed\n"
// fs.writeFileSync('faker_tblSleepingArrangements.csv', headers_arrangements, 'utf8');

// for(let i = 0; i < 10000001; i+=1) {
// 	const id = i
// 	const listingid = i
// 	const roomname = faker.lorem.word()
// 	const noofbeds = 2
// 	const typeofbed =faker.lorem.word() 
// 	tblSleepingArrangements.push([id,listingid, roomname, noofbeds, typeofbed])

// 	if(i % 50000 === 0) {
// 		let chunk = tblSleepingArrangements.join('\n') + '\n'
// 		fs.appendFileSync('faker_tblSleepingArrangements.csv', chunk, 'utf8');
// 		tblSleepingArrangements = [];
// 	}	
// }

// //theSpace

// let theSpace = []
// fs.writeFileSync('faker_theSpace.csv', "0, thespace\n", 'utf8');

// for(let i = 1; i < 10000001; i+=1) {
// 	const thespace = faker.lorem.paragraph()
// 	theSpace.push([i,thespace])

// 	if(i % 50000 === 0) {
// 		let chunk = theSpace.join('\n') + '\n'
// 		fs.appendFileSync('faker_theSpace.csv', chunk, 'utf8');
// 		theSpace = [];
// 	}	
// }
