2<h1 align="center"Centenido Practico Robotframework</h1>
<h3 align="center">Robot Framework es una automatización basada en palabras clave extensible basada en Python marco para las pruebas de aceptación, el desarrollo guiado por pruebas de aceptación (ATDD), desarrollo impulsado por el comportamiento (BDD) y automatización robótica de procesos (RPA). Eso Se puede utilizar en entornos distribuidos y heterogéneos, donde la automatización requiere el uso de diferentes tecnologías e interfaces</h3>

## Requirimientos para su uso
Robot Framework se implementa con Python, por lo que debe tener Python instalado.
En máquinas Windows, asegúrese de agregar Python a PATH durante la instalación.
```Web
Python 3.11+
https://www.python.org/downloads/
$ python --version
Python 3.11
---> 100%
```

## Instalacion
Para instalar Robotframework puedes usar el administrador de paquetes PIP.

```console
# Actualizar a la última versión estable
$ pip install --upgrade robotframework
$ pip install --upgrade robotframework-seleniumlibrary

---> 100%
```

## Clonar el repositorio

Para clonar este proyecto se requiere tener instalado Git y ejecutar el siguiente comando en la ruta donde va a tarbajar con el proyecto
```console
$ git clone https://github.com/EndoRodrigo/Contenido.git

---> 100%
```
## Dependencias

Para el manejo de dependencias usaremos un entorno virtual de python para aislar el proyecto y administrador de paquete PIP
```console
$ python -m venv env
$ env\Scripts\activate  --> Windows
$ source env/bin/activate  --> Linux
$ pip install -r dependencias.txt
$ deactivate --> Un vez termine las activades del dia lo puede desactivar el entormo
---> 100%
```

## Ejecucion
Para ejecutar su primer test automatizado con robotframeworl es sencillo solo sigas lo siguientes pasos:
    1. Asegurese de estar en la ruta correcta
    2. Ejecite el siguiente coamdno
```console
$ cd test
robot Ejercicio1.robot
```

## Documentación interactiva de la API

Mas sobre robotframework aqui aprendera con guías y ejemplos que cubren Robot Framework desde la instalación hasta el uso avanzado.

```web
https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html
```
