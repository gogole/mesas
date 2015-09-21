var express = require('express');
var api		= require('./controllers/api');
var config  = require('./config').server;

app = express();

app.set('view engine', 'ejs');
app.set('views', __dirname + '/views');

app.use(express.static('public'));

app.get('/',function(req,res)
{
	res.render('index')
});

app.get('/datos',function(req,res)
{
	res.json(datos);
});


app.use(api);

app.listen(config.puerto,function(){
	console.log('El server esta corriendo en el puerto '+config.puerto);
});
