var mysql  = require('mysql'),
	config = require('../config').db,
	express = require('express');

var pool  = mysql.createPool({
  connectionLimit : 10,
  host            : config.host,
  user            : config.user,
  password        : config.password,
  database		  : config.database	
});

var router = express.Router();

router.get('/api/mesas',function(req,res)
{
	pool.getConnection(function(err, connection) {
	 // Use the connection
	connection.query( 'SELECT * FROM Materias', function(err, rows) {
	    connection.release();
	    res.json(rows);
  });
});
});

module.exports = router;