/* let http = require("http");
http.createServer(fucntion(req,res){
    res.setHeader("Access-Control-Allow-Origin","*");
}).listen(3000); */
/* let http = require('http');
http.createServer(function (request, response) {
    response.setHeader("Access-Control-Allow-Origin","*")
    response.write(request.url)
    response.end()
}).listen(3000) */
let http = require("http");
let url = require("url")
let qs = require('querystring')
http.createServer(function (request,response) {
    //设置允许跨域
    response.setHeader("Access-Control-Allow-Origin","*");

    response.write(JSON.stringify({"name":"Chelision","age":20}));
    response.end();
}).listen(3000)