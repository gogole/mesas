var express = require('express');

app = express();

app.set('view engine', 'ejs');

app.use(express.static('public'));

app.get('/',function(req,res)
{
	res.send('public/index')
});

app.listen(process.env.PORT || 8000);
