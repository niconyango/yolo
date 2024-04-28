const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');
const multer = require('multer');
const upload = multer();

const productRoute = require('./routes/api/productRoute');

// Connecting to the Database
let mongodb_url = 'mongodb+srv://niconyango:Fa1c0n1@nocluster.mtqlrqb.mongodb.net/';
let dbName = 'nocluster';

// define a url to connect to the database
// const MONGODB_URI = process.env.MONGODB_URI || mongodb_url + dbName
// mongoose.connect(MONGODB_URI,{useNewUrlParser: true, useUnifiedTopology: true  } )
let db = mongoose.connection;
mongoose.connect(`${mongodb_url}${dbName}`,{ useNewUrlParser: true , useUnifiedTopology: true }, (err)=>{
    if (err) console.log(err)
});

// Check Connection
db.once('open', ()=>{
    console.log('Database connected successfully')
})

// Check for DB Errors
db.on('error', (error)=>{
    console.log(error);
})

// Initializing express
const app = express();

// Body parser middleware
app.use(express.json());

// 
app.use(upload.array()); 

// Cors 
app.use(cors());

// Use Route
app.use('/api/products', productRoute);
app.get('/', (req, res) => {
    res.send('<h1>Back end server</h1>');
});


// Define the PORT
const PORT = process.env.PORT || 5000

app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`)
});
