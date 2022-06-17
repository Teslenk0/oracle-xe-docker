# MONGO + ORACLE (KNEX)

## Instrucciones de uso
Antes de seguir estas instrucciones, se debe tener el ambiente listo para utilizar (esto incluye ambos motores corriendo y accesibles desde la misma red)

1. Cambiar los parametros de coneccion a los motores de bases de datos en el archivo `config.json`, dentro del directorio `src/config`.

2. Ejecutar `npm install` para instalar las dependencias.

3. Para ejecutar el script:

```sh
# Setear la fecha de busqueda
export FECHA_EMISION="2022-06-05"

# Ejecutar el script (pararse en la misma carpeta donde se encuentra el package.json)
node ./bin/mongo-oracle --fechaEmision "${FECHA_EMISION}"
```


## Useful links

https://oracle.github.io/odpi/doc/installation.html#oracle-instant-client-zip-files

https://blog.biri.me/how-to-use-nodejs-with-knex-js-to-access-oracle-database/

https://www.youtube.com/watch?v=PIlY07mvrYA

