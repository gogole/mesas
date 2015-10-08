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
	if(err) throw err
	 // Use the connection
	connection.query("SELECT ma.materias_cod, ma.materias_año, ma.materias_descripcion,me.primer_turno, me.segundo_turno, me.tercer_turno, me.cuarto_turno,me.quinto_turno, me.sexto_turno, me.septimo_turno, me.octavo_turno, me.noveno_turno, me.decimo_turno, cur.condicion_cur, cur.nombre_cursar, ren.condicion_rendir, ren.nombre_aprobada FROM Mesas me INNER JOIN Materias ma ON (ma.carrera_cod = me.carrera_cod) and (ma.materias_cod = me.materias_cod) INNER JOIN CorrCur cur ON (cur.nro_detalle = me.nro_detalle ) INNER JOIN CorrRend ren ON (ren.nro_detalle = me.nro_detalle);", function(err, rows) 
	{
		if(err) throw err
	    connection.release();
	    res.json(rows.map(filtro));
  });
});
});

var filtro = function(mesa)
{
	var dato = 
	{
		id: mesa.materias_cod,
		nombre : mesa.materias_descripcion,
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
	carrera:"Licenciatura en Sistemas",	
	anio:mesa.materias_año,
	correlativas_cursar:{
								aprobadas:FiltroCursar("Aprobada",mesa),
								regular:FiltroCursar("Regular",mesa)
							},
	correlativas_rendir:{
								aprobadas: FiltroRendir(mesa)
							}
		};
	return dato;
}

function FiltroCursar(condicion,materia)
{
	if(condicion === materia.condicion_cur)
	{
		return new Array(materia.nombre_cursar);
	}else{
		return new Array();
	}
}

function FiltroRendir(materia)
{
	if(materia.nombre_aprobada === "No tiene correlativas para rendir")
	{
		return new Array();
	}else{
		return new Array(materia.nombre_aprobada);
	};
}
module.exports = router;