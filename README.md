# API-Express-PrismaDb

Práctica 3 Semana 5 launchX Backend Nodejs

### 1. Dependencias.

#### Node - Proyecto

Proyecto en Node v16.14.2

Creación del proyecto con el comando  (generando el archivo package.json):

- npm init

#### Git - Gestión de Versiones

El proyecto cuenta con gestión de versiones con Git. Creando un repositorio local y un reposotorio Remoto en GitHub.

Cada cambio en el proyecto se puede revisar en los [commits](https://github.com/Chaylander/API-Express-PrismaDb/commits/master).

Nota: En el proyecto tenemos .gitignore para no versionar el folder node_models.

#### Express - API

El proyeto tiene istalado express para crear la API solicitada.

Comando para instalar express en el proyecto:

- npm install express --save

Se agregó al package.json la siguiente linea, en scripts

`"server": "node ./libs/server.js"`

Para correr el server con npm, de la siguiente manera

* npm run serve

#### Linter

Permite revisar el cógigo para darle estilo mediante reglas ya establecidas previamente.

Comando para su instalación:

- npm install eslint --save-dev

Comando para la configuracion, general el archivo .eslintrc.js en el proyecto.

- npm init @eslint/config

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

### Los endpoints que contiene la API.

La API se encuentra en

[server_2.js](https://github.com/Chaylander/API-Express-PrismaDb/blob/master/server_2.js)


|                   Endpoint                   | Request                                 |                                              Respuesta                                              |
| :------------------------------------------: | --------------------------------------- | :-------------------------------------------------------------------------------------------------: |
|             `localhost:3000/`             | `localhost:3000/`                     |                               Mensaje de que el servidor está activo                               |
|          `localhost:3000/woopas`          | `localhost:3000/woopas`               |                                 Array de todos los woopas en la DB                                 |
|        `localhost:3000/woopas/:id`        | `localhost:3000/woopas/2`             |                                 Regresa la información dado el ID                                 |
| `localhost:3000/students/credits/:credits` | `localhost:3000/students/credits/500` | Regresa array de los estudiantes con más de 500 creditos (Se puede cambiar el número de creditos) |

### Documentación de la API

[Postman](https://documenter.getpostman.com/view/20744732/UyxjHmmG)
