const express = require("express");
const bodyParser = require('body-parser');

const index = require("./routes/index");
const yxlist = require("./routes/yxlist");
const bodyParse = require("body-parser")
var app = express();

app.use(bodyParse.urlencoded({extended:false}));
const cors = require("cors");
app.use(cors({ origin:["http://127.0.0.1:3030","http://localhost:3030"],credentials:true }));


var server = app.listen(3000,()=>{
    console.log("远程穿越服务已开启。。。。")
});


app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static("./public"));

app.use("/index",index);
app.use("/yxlist",yxlist);