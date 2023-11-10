const express = require('express');

const PORT = process.env.PORT || 8000

const app = express();

app.get('/',(req,res,next)=>{
    res.send("It is working")
})

app.get('/alive',(req,res)=>{
    res.send("I'm Alive")
})

app.get('/ready',(req,res)=>{
    res.send("I'm Ready")
})


app.listen(PORT,()=> console.log(`The server is running port ${PORT}`)) 