var argv = process.argv;

function debug(s) { console.log(s); }

//debug(argv);
var row_count = argv[2];
var col_count = argv[3];
var css_library = argv[4];

css_library_url = "";
css_class = "";
switch (css_library){
    case 'b': css_library_url = "<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr\" crossorigin=\"anonymous\">";
        css_class = "table w-50 table-bordered";
    
    case 't': css_library_url = "<script src=\"https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4\"></script>";
        css_class = "pqp pqq pqs";

    case 'u': css_library_url = "<link href=\"https://cdnjs.cloudflare.com/ajax/libs/bulma/1.0.4/css/bulma.min.css\" rel=\"stylesheet\">";
        css_class = "table is-bordered";
    //default: 
}

var row_count_i = parseInt(row_count);
var col_count_i = parseInt(col_count);

//debug(row_count_i);
//debug(col_count_i);

var output = "";

style = `
    <style>
		table, tr, td {
			border: 1px solid black;
		}
	</style>
`
output += `<html>
	<head>
`

if (css_library_url != "") {
    output += css_library_url;
} else {
    output += style;
}

output += `
	</head>
	<body>
`
output += "<table" + ' class=\"' + css_class + '\">';
for (let i = 0; i < row_count_i; i++) {
    output += "\t<tr>";
    for (let j = 0; j < col_count_i; j++) {
        output += "\t<td>" + i.toString() + "," + j.toString();
        output += "\n";
        output += "\t</td>";
    }
    output += "\n";
    output += "\t</tr>";
}
output += "\n";
output += `</table>
    </body>
<html>
`

debug(output);