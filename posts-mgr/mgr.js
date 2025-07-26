//var fs = require("fs");

console.log("loaded");

var fs = new FileSystem();

async function walk_dir(dir_path) {
    const files = await fs.readdir(dir_path);

    await Promise.all(
        files.map(file => {
            const full_path = path.join(dir_path, file.name);
            if (file.isDirectory()) {
                console.log(file.name);
            }
        })
    );
}

walk_dir("C:\Users\amole\Documents\code\scripts2");
