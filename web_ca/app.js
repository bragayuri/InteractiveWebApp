// Author: Yuri Braga
// Reference:https://github.com/mikhail-cct/CA1-In-class-Demo
// Code used was extracted and adapted to this project from the link above.
//  This Javascript file will be my runner in order to create interactions
// between user and files.

// Here I will receive the necessary modules in order to run the program.
var http = require('http'),
    path = require('path'),
    express = require('express'),
    fs = require('fs'),
    xml2js = require('xml2js'),
    xmlParse = require('xslt-processor').xmlParse,
    xsltProcess = require('xslt-processor').xsltProcess;

    var router = express();
    var server = http.createServer(router);
    
    router.use(express.static(path.resolve(__dirname, 'Views')));

    router.use(express.urlencoded({extended: true}));
router.use(express.json());// Function to read in XML file and convert it to JSON
function xmlFileToJs(filename, cb) {
  var filepath = path.normalize(path.join(__dirname, filename));
  fs.readFile(filepath, 'utf8', function(err, xmlStr) {
    if (err) throw (err);
    xml2js.parseString(xmlStr, {}, cb);
  });
}//Function to convert JSON to XML and save it
function jsToXmlFile(filename, obj, cb) {
  var filepath = path.normalize(path.join(__dirname, filename));
  var builder = new xml2js.Builder();
  var xml = builder.buildObject(obj);
  fs.writeFile(filepath, xml, cb);
}
router.post('/post/json', function(req, res){
    function appendJSON(obj){
        console.log(obj);
        xmlFileToJs('allergenchart.xml', function(err, result){
            if(err) throw (err);
            //  this line is where it was adapted to this project
                result.allergen.item.push({'Dishes': obj.Dishes, 'Celery': obj.Celery, 'Gluten':obj.Gluten, 'eggs':obj.eggs, 'Crustaceous':obj.Crustaceous, 'Fish':obj.Fish, 'Lupin':obj.Lupin,'milk':obj.milk,'Molluscs':obj.Molluscs,'Mustard':obj.Mustard,'Peanuts':obj.Peanuts,'Nuts':obj.Nuts,'SesameSeeds':obj.SesameSeeds,'Soya':obj.Soya,'SulphurDioxide':obj.SulphurDioxide });
                console.log(result);
                jsToXmlFile('allergenchart.xml', result, function(err){
                    if(err) console.log(err);
                })
        })
    }
    appendJSON(req.body);
    res.redirect('back');
});

    

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

    // POST request to add to JSON & XML files
router.post('/post/delete', function(req, res) {

  // Function to read in a JSON file, add to it & convert to XML
  function deleteJSON(obj) {
    // Function to read in XML file, convert it to JSON, delete the required object and write back to XML file
    xmlFileToJs('allergenchart.xml', function(err, result) {
      if (err) throw (err);
      //This is where we delete the object based on the position of the section and position of the entree, as being passed on from index.html
      delete result.allergen.item[obj.item];
      //This is where we convert from JSON and write back our XML file
      jsToXmlFile('allergenchart.xml', result, function(err) {
        if (err) console.log(err);
      })
    })
  }

  // Call appendJSON function and pass in body of the current POST request
  deleteJSON(req.body);

});

    server.listen(process.env.PORT|| 3000, process.env.IP, function(){
        var addr= server.address();
        console.log('Server is listening on port: ',addr.address+ ':'+ addr.port)

    });

    


