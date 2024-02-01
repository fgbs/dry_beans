# README


## Setup

```bash
❯ ruby --version
ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [x86_64-linux]

❯ rails --version
Rails 6.1.7.6
```

## Modelo

Una Ruta *Pathway* puede contener uno o más Viajes *Journeys*. Cada Viaje *Journey* debe contener 2 o más Trayectos *Paths*.

Cada *Path* define los atributos de un trayecto a realizar desde el un punto inicial X hasta el primer punto de retiro para luego recorrer el siguiente trayecto hasta el punto de entrega.


* "purpose": el proposito del trayecto: retiro *WITHDRAWAL* o entrega *DELIVERY*
* "address": dirección a geo referenciar
* "details": detalles del trayecto, observaciones
* "distance": distancia calculada
* "start_at": hora de inicio del trayecto
* "end_at": hora de fin del trayecto
* "estimated_time": tiempo estimado de trayecto
* "status": estado del trayecto *ACTIVE* o *DONE*


Un Viaje *Journey* es una colección de trayectos *Path* con diferentes propositos.

```bash
|---------------(journey)---------------|
A -----(path)-----> B -----(path)-----> C

|-------------------------(journey)-------------------------|
A -----(path)-----> B -----(path)-----> C -----(path)-----> D
```
