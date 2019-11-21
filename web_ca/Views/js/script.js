var button = document.getElementById("submit");

    button.onclick=insert_Row;
    
    function insert_Row()
{
var x=document.getElementById('table').insertRow(0);
var y = x.insertCell(0);
var z = x.insertCell(1);
var a = x.insertCell(2);
var b = x.insertCell(3);
var c = x.insertCell(5);
var d = x.insertCell(6);
var e = x.inserCell(7);
var f= x.insertCell(8);
var g= x.insertCell(9);
var h= x.insertCell(10);
var i= x.insertCell(11);
var j= x.insertCell(12);
var k= x.insertCell(13);
var l= x.insertCell(14);
var m= x.insertCell(15);
var n= x.insertCell(16);

y.innerHTML="New Cell1";
z.innerHTML="New Cell2";
a.innerHTML="";
b.innerHTML="";
c.innerHTML="";
d.innerHTML="";
e.innerHTML="";
f.innerHTML="";
g.innerHTML="";
h.innerHTML="";
i.innerHTML="";
j.innerHTML="";
k.innerHTML="";
l.innerHTML="";
m.innerHTML="";
n.innerHTML="";
}