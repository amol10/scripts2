var argv = process.argv;

function debug(s) { console.log(s); }

//debug(argv);
var row_count = argv[2];
var col_count = argv[3];

var row_count_i = parseInt(row_count);
var col_count_i = parseInt(col_count);

//debug(row_count_i);
//debug(col_count_i);

var output = "";

output += `<html>
	<head>
		<style>
			table, tr, td {
				border: 1px solid black;
			}
		</style>
	</head>
	<body>
`
output += "<table>";
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