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
	    res.json(rows.map(filtro));
  });
});
});

var filtro = function(mesa)
{
	var dato = 
	{
		nombre : mesa.nombre_materia,
		fechas : new Array(
			mesa.primer_turno,
			mesa.segundo_turno,
			mesa.tercer_turno,
			mesa.cuarto_turno,
			mesa.quinto_turno,
			mesa.sexto_turno,
			mesa.septimo_turno,
			mesa.octavo_turno,
			mesa.noveno_turno,
			mesa.decimo_turno
			),
		año_materia : mesa.año_materia,
		carrera : mesa.carrera 
	};
	return dato;
}

module.exports = router;