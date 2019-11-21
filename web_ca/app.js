var http = require('http'),
    path = require('path'),
    express = require('express'),
    fs = require('fs'),
    xmlParse = require('xslt-processor').xmlParse,
    xsltProcess = require('xslt-processor').xsltProcess;

    var router = express();
    var server = http.createServer(router);
    router.use(express.static(path.resolve(__dirname, 'Views')));

    router.get('/', function(req, res){

    res.render('index');

})

    router.get(`/get/html`,function(req,res){

        res.writeHead(200, {'Content-Type':'text/html'});

        var xml = fs.readFileSync('allergenchart.xml','utf8');
        var xsl = fs.readFileSync('allergen.xsl','utf8');

        var doc = xmlParse(xml);
        var stylesheet = xmlParse(xsl);

        var result = xsltProcess(doc, stylesheet);

        res.end(result.toString());

    }
    );

    server.listen(process.env.PORT|| 3000, process.env.IP, function(){
        var addr= server.address();
        console.log('Server is listening on port: ',addr.address+ ':'+ addr.port)

    });

    


