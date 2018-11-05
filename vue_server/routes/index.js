const express = require("express");
const pool = require("../pool");
var router = express.Router();

router.get("/list",(req,res)=>{
    //var img = req.query;
    var sql = `select lid,img_url,title from lunbolist `;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
		res.send({code:1,msg:result});
    })
})

router.get("/applist",(req,res)=>{
    //var img = req.query;
    var sql = `SELECT  id,img_url,title,renqi,big FROM applist`;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
		res.send({code:1,msg:result});
    })
})

router.get("/jdlist",(req,res)=>{
    //var img = req.query;
    var sql = `SELECT  id,img_url,title,renqi,big FROM jdlist`;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
		res.send({code:1,msg:result});
    })
})



module.exports = router;