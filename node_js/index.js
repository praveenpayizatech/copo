const express = require("express");
const app = express()
const port  = process.env.PORT||5000

app.use(express.json());
//app.use("/",require("./mainfile"))

app.post("/user/transfer/matic",(req,res)=>{
    res.json({
        'name':'Praveen',
        'Address':'praveen@payizatech.com',
        "Amount":789
    })
})

app.listen(port,()=>{
    console.log(`http://67.205.180.249:${port}`)
    //console.log(`http://127.0.0.1:${port}`)
})