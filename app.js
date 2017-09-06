
var http     = require('http'),
	express  = require('express'),
	mysql    = require('mysql')
	parser   = require('body-parser');

// Database Connection
/*var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'donuts'
});
try {
	connection.connect();
	
} catch(e) {
	console.log('Database Connetion failed:' + e);
}*/


    // importar
    var express = require('express');
     var exphbs  = require('express-handlebars');
	//var php = require("php"); 
    // instanciar
    var app = express();
app.use(parser.json());
app.use(parser.urlencoded({ extended: true }));
	app.use(express.static('public'));
app.engine( 'exphbs', exphbs( { 
  extname: 'exphbs', 
  defaultLayout: 'plantilla', 
  layoutsDir: __dirname + '/views/layouts/',
  partialsDir: __dirname + '/views/partials/'
} ) );

app.set( 'view engine', 'exphbs' );

/*
var mysql = require('mysql');
var connection = mysql.createConnection({
   host: 'localhost',
   user: 'root',
   password: 'root',
   database: 'donuts',
   port: 3306
});
connection.connect(function(error){
   if(error){
      throw error;
   }else{
      console.log('Conexion correcta.');
   }
});
var query = connection.query('SELECT * from donuts', function(error, result){
      if(error){
         throw error;
      }else{
         var resultado = result;
         if(resultado.length > 0){
            console.log(resultado[0].iddonuts + ' ' + resultado[0].tipo + ' / ' + resultado[0].nombre);
         }else{
            console.log('Registro no encontrado');
         }
      }
   }
);
connection.end();*/

app.get('/', function (req,res) {
	/*var id = req.params.id;

	connection.query('SELECT * from donuts', function(err, rows, fields) {
  		if (!err){
  			var response = [];

			if (rows.length != 0) {
				response.push({'result' : 'success', 'data' : rows});
			} else {
				response.push({'result' : 'error', 'msg' : 'No Results Found'});
			}

		res.setHeader('Content-Type', 'application/json');
	    	res.status(200).send(JSON.stringify(response));*/

		//res.render('partials/index', JSON.stringify(response));
		res.render('partials/index');
  		/*} else {
		    res.status(400).send(err);
	  	}*/
	//});
});

app.get('/nosotros', function (req,res) {
	res.render('partials/nosotros');
  		
});

app.get('/listarCuentos', function (req,res) {
	res.render('partials/listarCuentos');
  		
});

app.get('/crearCuento', function (req,res) {
	res.render('partials/crearCuento');
  		
});

app.post('/subir', function (req,res) {
	res.render('partials/subir.php');
  		
});

app.get('/delete/:id', function (req,res) {
	var id = req.params.id;

	connection.query('DELETE FROM donuts WHERE iddonuts = ?', [id], function(err, result) {
  		if (!err){
  			var response = [];

			if (result.affectedRows != 0) {
				response.push({'result' : 'success'});
			} else {
				response.push({'msg' : 'No Result Found'});
			}

			res.setHeader('Content-Type', 'application/json');
	    	res.status(200).send(JSON.stringify(response));
  		} else {
		    res.status(400).send(err);
	  	}
	});
});

app.get('/crear', function (req,res) {
res.render('partials/crear');
});

    // escuchar
    app.listen(8000);
