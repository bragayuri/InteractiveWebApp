function draw_table(){
    $("#results").empty();
    $.getJSONuncached = function(url) {
        return $.ajax({
            url: url,
            type: 'GET',
            cache: false,
            success: function(html) {
                $("#results").append(html);
                select_row();
            }
        });
    };
    $.getJSONuncached("/get/html")
}
$(document).ready(function(){
    draw_table();
});

var button = document.getElementById("submit");

 button.onclick=insertRow;

// function insertRow(){

//   var table = document.getElementById("#table");
//   var row = table.insertRow();
//   var cell1 = newRow.insertCell(0);
//   var cell2 = row.insertCell(1);
//   cell1.innerHTML = "NEW CELL1";
//   cell2.innerHTML = "NEW CELL2";
// }

function select_row()
{
	$("#table tbody tr[id]").click(function ()
	{
		$(".selected").removeClass("selected");
		$(this).addClass("selected");
        var item = $(this).attr("id") - 1;
        console.log(item);
		delete_row(item);
	})
};

function delete_row(ent)
{
	$("#delete").click(function ()
	{
		$.ajax(
		{
			url: "/post/delete",
			type: "POST",
			data:
			{
				item: ent
			},
			cache: false,
			success: setTimeout(draw_table, 1000)
		})
	})
};

$(document).ready(function ()
{
	draw_table();
});