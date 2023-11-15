const fs = require('fs');;
import path from 'path';

const nombreBase = "Nombre del archivo";
const descripcionBase = "Descripción del archivo";
const carpetaSalida = "carpeta_json";

// Crea el directorio si no existe
if (!fs.existsSync(carpetaSalida)) {
    fs.mkdirSync(carpetaSalida, { recursive: true });
}

// Genera y guarda los archivos 12 json
for (let i = 0; i < 6; i++) {
    // Crea el objeto json
    const objJson = {
        nombre: nombreBase + i,
        descripcion: descripcionBase + i,
        geolocalizacion: {
            latitud: 40.7128,
            longitud: -74.0060
        },
        url: "https://black-ashamed-dove-888.mypinata.cloud/ipfs/QmR2RKTQ6MvhsbqaD4Y3yciDdnP1PMTGZDvqHNiZhFvM11/" + i + "/.json"
    };

    // Guarda el objeto json en un archivo
    fs.writeFileSync(path.join(carpetaSalida, `${nombreBase}${i}.json`), JSON.stringify(objJson));
}