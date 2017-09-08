
var http     = require('http'),
	express  = require('express'),
	bodyParser   = require('body-parser');

var multer = require('multer'); 
const pg    = require('pg');
const connectionString = process.env.DATABASE_URL || 'postgres://localhost:5432/JSPROJECT';
var conString = "postgres://postgres:postgres@localhost:5432/JSPROJECT";


var express = require('express');
var exphbs  = require('express-handlebars');

var formidable = require('formidable'),
    http = require('http'),
    util = require('util'),
    fs   = require('fs-extra');
var app = express();

app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded

app.use(express.static('public'));

app.engine( 'exphbs', exphbs( { 
  extname: 'exphbs', 
  defaultLayout: 'plantilla', 
  layoutsDir: __dirname + '/views/layouts/',
  partialsDir: __dirname + '/views/partials/'
} ) );

app.set( 'view engine', 'exphbs' );


app.get('/miau', (req, res, next) => {
        var client = new pg.Client(conString);
    client.connect(function(err) {
        if(err) {
            return console.error('could not connect to postgres', err);
            return res.status(500).json({success: false, data: err});
        }

        client.query('SELECT * FROM usuario;', function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }
            console.log("mi: "+result.rows[0].idusuario);
            console.log(result);
            return res.json(result);
            
            client.end();
        });
    });
   
});

app.get('/listar', (req, res, next) => {
    var client = new pg.Client(conString);
    client.connect(function(err) {
        if(err) {
            return console.error('could not connect to postgres', err);
            return res.status(500).json({success: false, data: err});
        }

        client.query('SELECT * FROM cuento WHERE idusuario=1;', function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }
            
            //console.log(result);
            client.end();
            return res.json(result.rows);
            
           
        });
        
    });
    
   
});

app.post('/listarImg', (req, res) => {
    var client = new pg.Client(conString);
    //console.log("miau "+util.inspect(req,false,null));
    //console.log("chibi: "+req.body.idcuento);
    var idcuento=req.body.idcuento;
    client.connect(function(err) {
        if(err) {
            return console.error('could not connect to postgres', err);
            return res.status(500).json({success: false, data: err});
        }

        client.query('SELECT * FROM pagina WHERE idcuento=' + idcuento + ';', function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }
            
            //console.log(result);
             client.end();
            return res.json(result.rows);
            
           
        });
        
    });
    
   
});

app.get('/', function (req,res) {
	res.render('partials/index');
  		
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

app.get('/cuento', function (req,res) {
	res.render('partials/cuento');
  		
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

app.post('/subir', (req, res) => {
    req.fields; // contains non-file fields 
    req.files; // contains files 
    var form = new formidable.IncomingForm();
 
    form.parse(req, function(err, fields, files) {
      res.writeHead(200, {'content-type': 'text/plain'});

    });

    form.on('end', function(fields, files) {
        /* Temporary location of our uploaded file */
        var temp_path = this.openedFiles[0].path;
        /* The file name of the uploaded file */
        var file_name = this.openedFiles[0].name;
        /* Location where we want to copy the uploaded file */
        var new_location = 'public/images/';
        fs.copy(temp_path, new_location + file_name, function(err) {  
            if (err) {
                console.error(err);
            } else {
                console.log("success!")
            }
        });
        res.end(file_name);
    });
    

});


console.log("Servidor iniciado");
    // escuchar
    app.listen(8000);

