# API-Express-PrismaDb

Práctica 3 Semana 5 launchX Backend Nodejs

### 1. Dependencias.

#### Node - Proyecto

Proyecto en Node v16.14.2

Creación del proyecto con el comando  (generando el archivo package.json):

- `npm init`

#### Git - Gestión de Versiones

El proyecto cuenta con gestión de versiones con Git. Creando un repositorio local y un reposotorio Remoto en GitHub.

Cada cambio en el proyecto se puede revisar en los [commits](https://github.com/Chaylander/API-Express-PrismaDb/commits/master).

Nota: En el proyecto tenemos .gitignore para no versionar el folder node_models.

#### Express - API

El proyeto tiene istalado express para crear la API solicitada.

Comando para instalar express en el proyecto:

- `npm install express --save`

Se agregó al package.json la siguiente linea, en scripts

`"server": "node ./libs/server.js"`

Para correr el server con npm, de la siguiente manera

* `npm run serve`

#### Linter

Permite revisar el código para darle estilo mediante reglas ya establecidas previamente.

Comando para su instalación:

- `npm install eslint --save-dev`

Comando para la configuracion, general el archivo .eslintrc.js en el proyecto.

- `npm init @eslint/config`

Agregar reglas en [.eslintrc.js](https://github.com/Chaylander/Code_Challenge/blob/master/.eslintrc.js) y scripts de linter en package.json.

 Reglas de linter:

```
   "rules": {
        indent: ["error", 4],
        "linebreak-style": ["error", "unix"],
        quotes: ["error", "double"],
        semi: ["error", "always"]
    }
```

 Scripts de linter en package.json

```
 "linter": "node ./node_modules/eslint/bin/eslint.js .",
 "linter-fix": "node ./node_modules/eslint/bin/eslint.js . --fix" 
```

### Prisma DB

Toolkit de DB de código abierto que facilita el acceso a las bases de datos con generadores de consultas o query builders.

Para instalar la dependencia:

* `npm install prisma --save-dev`

Para inicializar Prisma en el proyecto se utiliza el siguiente comando:

* `npx prisma init`

Para crear el archivo [.env](https://github.com/Chaylander/API-Express-PrismaDb/blob/master/.env) el cual contiene los datos de acceso a la db, asi como el puerto.

La declaración de la tabla se hace con el archivo [schema.prisma](https://github.com/Chaylander/API-Express-PrismaDb/blob/master/prisma/schema.prisma)

Y para insertar los datos en la tabla [prisma/seed_2.js](https://github.com/Chaylander/API-Express-PrismaDb/blob/master/prisma/seed_2.js) al ejecutarse en node.

Después de estos cambios en la db, se tienen que versionar (como un commit en git) con el siguiente comando:

* `npx prisma migrate dev --name init`

### 2.Base de datos

La base de datos fue hecha con [PostgreSQL](https://www.postgresql.org/) y se utilizó por medio de [Prisma](https://www.prisma.io/)

Para una facil visualización de la tabla se utilizó pgAdmin4 de PostgreSQL
![pgadmin](https://user-images.githubusercontent.com/66389606/169165579-99fd5bd4-e73e-4c9e-94bb-4c1b1dd7e2fe.png)

### 3. Uso API

La API se encuentra en

[server_2.js](https://github.com/Chaylander/API-Express-PrismaDb/blob/master/server_2.js)

* La siguiente tabla muestra los endpoint GET:

|           Endpoints           | Request                     |                  Respuesta                  |
| :---------------------------: | --------------------------- | :------------------------------------------: |
|      `localhost:3000/`      | `localhost:3000/`         |   Mensaje de que el servidor está activo   |
|   `localhost:3000/woopas`   | `localhost:3000/woopas`   |      Array de todos los woopas en la DB      |
| `localhost:3000/woopas/:id` | `localhost:3000/woopas/2` | Regresa la información del woopa dado el ID |

* La siguiente tabla muestra el endpoint POST para crear un nuevo Woopa:

| Endpoint                  | Request                   | Body                                                                                                              | Respuesta                                    |
| ------------------------- | ------------------------- | ----------------------------------------------------------------------------------------------------------------- | -------------------------------------------- |
| `localhost:3000/woopas` | `localhost:3000/woopas` | `{"name": "Roberto","lang":"Japones,Español","missionComander": "Fer","enrollments":3, "HasCertificate":true}` | `{"message": "Woopa created succefully"} ` |

* La siguiente tabla muestra el endpoint PUT para actualizar un Woopa existente:

| Endpoint                      | Request                     | Body                             | Respuesta                               |
| ----------------------------- | --------------------------- | -------------------------------- | --------------------------------------- |
| `localhost:3000/woopas/:id` | `localhost:3000/woopas/1` | `{"name": "WoopaNameUpdated"}` | `{"message": "Updated succesfully"} ` |

* La siguiente tabla muestra el endpoint DELETE para eliminar un Woopa por ID:

| Endpoint                      | Request                     | Body | Respuesta                               |
| ----------------------------- | --------------------------- | ---- | --------------------------------------- |
| `localhost:3000/woopas/:id` | `localhost:3000/woopas/1` |      | `{"message": "Deleted succesfully"} ` |

#### Documentación de la API

[Postman](https://documenter.getpostman.com/view/20744732/UyxjHnDi)
