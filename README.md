# POP 
## Proof of participation

Este proyecto representa una innovadora implementación de un protocolo de certificación de presencialidad o acontecimiento de eventos, respaldado por **Chainlink**. La aplicación emite NFTs como prueba tangible de haber estado presencialmente en algún evento o de que algún hecho en concreto ha ocurrido, proporcionando una capa adicional de autenticidad a que permita demostrar la realidad que ha estado ocurriendo a nuestro alrededor.

### Descripción

El protocolo POP utiliza la tecnología blockchain para emitir NFTs únicos que representan imagenes de participación en determinado evento o el acontecimiento de cierta situación. Al vincular estos NFTs a dichas imágenes, se crea una prueba irrefutable de los logros educativos, proporcionando una solución segura y transparente para la verificación de los acontecimientos.

### Funcionalidades Principales

    - Emisión de NFTs Proof of participation: El protocolo emite automáticamente NFTs al iniciar un PoP, demostrando de manera inequívoca la autenticidad de lo acontecido.

    - Integración con Chainlink Keeper: Utiliza la interfaz KeeperCompatible de Chainlink para realizar tareas programadas de mantenimiento, asegurando la consistencia y confiabilidad del protocolo.

 ### Requisitos

    Solidity Compiler ^0.8.9
    Chainlink Contracts v0.8
    OpenZeppelin Contracts v4.6.0

### Configuración

Antes de desplegar este protocolo, asegúrate de tener instaladas las dependencias necesarias y configuradas en tu entorno de desarrollo.

- npm install @chainlink/contracts@0.8.0
- npm install @openzeppelin/contracts@4.6.0

### Uso

    - Despliegue del Protocolo: Despliega el contrato en tu red preferida.

    - Emisión Automática de NFTs: Al iniciar un nuevo PoP, el protocolo emite automáticamente NFTs asociados, proporcionando pruebas tangibles de los acontecimientos ocurridos.

    - Verificación de Autenticidad: Utiliza la cadena de bloques y los NFTs emitidos como una forma segura y transparente de verificar la autenticidad de los acontecimientos ocurridos.

### Ejemplo de Integración con Chainlink Keeper


// Ejemplo de cómo utilizar la interfaz KeeperCompatible ###(Aqui pondriamos ejemplos de como lo usamos, no?)
contract.methods.checkUpkeep().send({ from: "0xYourAddress" });

Contribuciones ###(Entiendo que contribucion no queremos, no? Será cosa de eliminarlo)

¡Las contribuciones son bienvenidas! Si encuentras errores o mejoras potenciales, no dudes en abrir un problema o enviar una solicitud de extracción.
### Licencia (Que tipo de licencia se usará?)

Este protocolo está bajo la licencia MIT.
### Agradecimientos

Este proyecto se beneficia de las contribuciones de la comunidad y del uso de bibliotecas como **Chainlink** y OpenZeppelin.



