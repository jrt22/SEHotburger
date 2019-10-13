const express = require('express');
const app = express();
const router = express.Router();
let count=0

app.get('/version', (req,res)=>{
 log('/version');
 res.send('Version ${count} of the Hotburger service')
});


log=(arg)=>{
 console.log('Log for ${arg}')
}
app.get('/logs', (req,res)=>{
 log('/logs');
});
