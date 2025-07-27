/*var requirejs = require('requirejs');
requirejs.config({
    nodeRequire: require
});*/
import { createRequire } from 'module';
const require = createRequire(import.meta.url);

const fs = require('fs').promises; //('node:fs/promises');
const path = require('path');
//import 'fs'; // as fs; // = require("fs");

console.log("loaded");

var skip_h = true;

//var fs = new FileSystem();
var d = {}

async function walk_dir(dir_path, level = " ") {
    const files = await fs.readdir(dir_path, { withFileTypes: true });
    d{dir_path.parse()}- {}
    await Promise.all(
        files.map(file => {
            const full_path = path.join(dir_path, file.name);
            if (file.isDirectory()) {
                if (skip_h && file.name[0] == '.') {
                    console.log(level + "skipping, hidden " + file.name);
                } else {
                    console.log(level + file.name);
                    d{file.name} = {};
                    walk_dir(path.join(full_path), level + " ");
                }
            }
        })
    );
}

walk_dir("C:\\Users\\amole\\Documents\\code\\scripts2");

//export { walk_dir };