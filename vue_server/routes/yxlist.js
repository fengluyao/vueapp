const express = require("express");
const pool = require("../pool");
var router = express.Router();

router.get("/list",(req,res)=>{
    //var img = req.query;
    var sql = ` SELECT id,img_url,title,renqi,big FROM yxlist `;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
		res.send({code:1,msg:result});
    })
})

router.get("/jtlist",(req,res)=>{
    //var img = req.query;
    var sql = ` SELECT lid,img_url,title FROM jtlist`;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
		res.send({code:1,msg:result});
    })
})


module.exports = router;