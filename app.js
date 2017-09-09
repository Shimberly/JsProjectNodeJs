
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

app.post('/listarCuentoPorUsuario', (req, res, next) => {
    var client = new pg.Client(conString);
    client.connect(function(err) {
        if(err) {
            return console.error('could not connect to postgres', err);
            return res.status(500).json({success: false, data: err});
        }
       
        client.query('SELECT * FROM cuento WHERE idusuario='+ req.body.idusuario +';', function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }
            
            //console.log(result);
            client.end();
            return res.json(result.rows);
            
           
        });
        
    });
    
   
});


app.post('/listarCuentoPorId', (req, res, next) => {
    var client = new pg.Client(conString);
    client.connect(function(err) {
        if(err) {
            return console.error('could not connect to postgres', err);
            return res.status(500).json({success: false, data: err});
        }
       
        client.query('SELECT * FROM cuento WHERE idcuento='+ req.body.idcuento +';', function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }
            
            //console.log(result);
            client.end();
            return res.json(result.rows);
            
           
        });
        
    });
    
   
});

<<<<<<< HEAD
app.get('/listarUsuarios', (req, res, next) => {
    var client = new pg.Client(conString);
    client.connect(function(err) {
        if(err) {
            return console.error('could not connect to postgres', err);
            return res.status(500).json({success: false, data: err});
        }

        client.query('SELECT * FROM usuario', function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }

            client.end();
            return res.json(result.rows);
            
        }); 
    });
});


=======
>>>>>>> 7c9262e4e9928abd25b64b1d1f23a2190ba89e96
app.post('/listarPreguntas', (req, res, next) => {
    var client = new pg.Client(conString);
    client.connect(function(err) {
        if(err) {
            return console.error('could not connect to postgres', err);
            return res.status(500).json({success: false, data: err});
        }

        client.query('SELECT * FROM pregunta WHERE idcuento='+req.body.idcuento+';', function(err, result) {
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

app.post('/guardarCuento', (req, res) => {
    var client = new pg.Client(conString);
    client.connect(function(err) {
        if(err) {
            return console.error('could not connect to postgres', err);
            return res.status(500).json({success: false, data: err});
        }
        console.log("nombre "+req.body.nombre+', descrip '+req.body.descripcion+', credito'+req.body.credito);
        client.query("INSERT INTO  cuento  (nombre ,  descripcion ,  creditos ,  idusuario) VALUES ('"+req.body.nombre+"', '"+req.body.descripcion+"', '"+req.body.credito+"', 1);", function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }
            client.end();
            return res.json(result.rows);
        });
        
    });
    
    
   
   
});

app.post('/guardarPregunta', (req, res) => {
    var client = new pg.Client(conString);
    client.connect(function(err) {
        if(err) {
            return console.error('could not connect to postgres', err);
            return res.status(500).json({success: false, data: err});
        }
        //console.log("nombre "+req.body.nombre+', descrip '+req.body.descripcion+', credito'+req.body.credito);
        client.query("INSERT INTO  pregunta  (img1 ,  img2 ,  audio ,  respuesta , idcuento) VALUES ('"+req.body.pregunta.img1+"', '"+req.body.pregunta.img2+"', '"+req.body.pregunta.audio+"', '"+req.body.pregunta.respuesta+"',"+req.body.id+");", function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }
            client.end();
            return res.json(result.rows);
        });
        
    });
    
    
   
   
});
app.get('/ultimoid', (req, res) => {
    var client = new pg.Client(conString);
    client.connect(function(err) {
        client.query('SELECT idcuento FROM cuento ORDER BY idcuento DESC ;', function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }
            
            console.log("mi: "+result.rows[0].idcuento);
            client.end();
            return res.json(result.rows);
            
            
        });
        
        
    });
   
   
});

app.post('/insertarImg', (req, res) => {
    //console.log("miau "+util.inspect(req,false,null));
    //console.log("img "+req.body.paginas.length);
    var id=req.body.id;
    var client = new pg.Client(conString);
    client.connect(function(err) {
        client.query("INSERT INTO pagina(imagen ,  audio ,  idcuento ) VALUES ('"+ req.body.imagen +"', '"+ req.body.audio +"', '"+ id +"');", function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }
           
            client.end();
            return res.json(result.rows);
            
            
        });
        
        
    });
<<<<<<< HEAD
=======
   
   
>>>>>>> 7c9262e4e9928abd25b64b1d1f23a2190ba89e96
});


app.post

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

<<<<<<< HEAD
app.get('/usuarios', function (req,res) {
	res.render('partials/usuarios');
  		
});

app.get('/crearUsuario', function (req,res) {
	res.render('partials/crearUsuario');
});



app.post('/GuardarUsuario', (req, res) => {
    var client = new pg.Client(conString);
    client.connect(function(err) {
        if(err) {
            return console.error('could not connect to postgres', err);
            return res.status(500).json({success: false, data: err});
        }
       
        console.log("miau "+util.inspect(req,false,null));
        
        client.query("INSERT INTO  usuario  (usuario ,  pass ,  nombre ) VALUES ('"+req.body.usuario+"', '"+req.body.pass+"', '"+req.body.nombre+"');", function(err, result) {
            if(err) {
                return console.error('error running query', err);
            }
            
            //console.log(result);
            client.end();
            return res.json(result.rows);
            
        });
        
    });
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
=======
>>>>>>> 7c9262e4e9928abd25b64b1d1f23a2190ba89e96


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
        var new_location = 'public/images/cuentos/';
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

