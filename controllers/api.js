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
		fechas : new Array()
	};

	dato.fechas.push(mesa.primer_turno);
	dato.fechas.push(mesa.segundo_turno);
	dato.fechas.push(mesa.tercer_turno);
	dato.fechas.push(mesa.cuarto_turno);
	dato.fechas.push(mesa.quinto_turno);
	dato.fechas.push(mesa.sexto_turno);
	dato.fechas.push(mesa.septimo_turno);
	dato.fechas.push(mesa.octavo_turno);
	dato.fechas.push(mesa.noveno_turno);
	dato.fechas.push(mesa.decimo_turno);

	return dato;
}

module.exports = router;