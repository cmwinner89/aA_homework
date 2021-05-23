const mongoose = require('mongoose');
const db = require('./config/keys').mongoURI;
const express = require("express");
const app = express();
const bodyParser = require('body-parser');
const port = process.env.PORT || 5000;
const users = require("./routes/api/users");
const tweets = require("./routes/api/tweets");

app.listen(port, () => console.log(`Server is running on port ${port}`));

app.get("/", (req, res) => res.send("I fucked up"));
app.use("/api/users", users);
app.use("/api/tweets", tweets);
app.use(bodyParser.urlencoded({ extended: false}));
app.use(bodyParser.json());
