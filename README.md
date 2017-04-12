SLKr
----
The Surf-obsessed Local Kid (SLK) has a key decision to make each morning...which beach to surf after blowing off school. The SLKr app makes this decision simple and straightforward.

Background
----------
The SLKr app is an Angular app, built to demonstrate the power of Behavior Driven Design (BDD) and Test Driven Development (TDD).

Features
--------
The SLKr app allows the SLK to get the latest surf conditions for key South Bay beaches...

_Scenario_: as a Surf-obsessed Local Kid, I want to get the latest surf conditions to make an informed choice about where the best surf is when I skip school.

>  Given the SLKr home page appears  
    When the "Get Surf Conditions" button is pressed  
      Then details about surf conditions appears on the page  

_Scenario_: as a Surf-obsessed Local Kid, I want to get a list of surf conditions at my favorite South Bay beaches so I can find the best wave

>  Given the "Get Surf Conditions" button is pressed  
    When the surf conditions are displayed  
      Then the details are sorted by Beach Name, in ascending order.  

_Scenario_: as a Surf-obsessed Local Kid, I want to sort the surf conditions to pick a beach that has surf conditions best match my mood that day.

>  Given the SLKr surf conditions page appears  
    When the "Air Temperature" column is clicked  
    OR the "Swell Height" column is clicked  
      Then the surf conditions will be sorted by the selected column  

Getting Started
---------------
The app is designed to run in a Docker container.

To Build It:
------------
1. clone the repo  
 https://github.com/cjrollo/slkr.git
2. build the image  
 docker build -t tag user/branch:tag Dockerfile

To Run It:
----------
1. run the container  
 docker run (options) user/image:tag
2. run the application
 docker run docker run -d --name slkr -P -v $(pwd)/app://usr/src/app rollo/slkr:alpine
3. run the unit tests
 docker run -d --name slkr -P -v $(pwd)/app://usr/src/app rollo/slkr:alpine 'npm run e2e'
4. run the end-to-end tests
 docker run -d --name slkr -P -v $(pwd)/app://usr/src/app rollo/slkr:alpine 'npm run e2e'

 ### npm scripts (passed as run-time flags to docker run)

 * `npm start` - runs the compiler and a server at the same time, both in "watch mode".
 * `npm run build` - runs the TypeScript compiler once.
 * `npm run build:w` - runs the TypeScript compiler in watch mode; the process keeps running, awaiting changes to TypeScript files and re-compiling when it sees them.
 * `npm run serve` - runs the [lite-server](https://www.npmjs.com/package/lite-server), a light-weight, static file server, written and maintained by
 [John Papa](https://github.com/johnpapa) and
 [Christopher Martin](https://github.com/cgmartin)
 with excellent support for Angular apps that use routing.

 Here are the test related scripts:
 * `npm test` - compiles, runs and watches the karma unit tests
 * `npm run e2e` - compiles and run protractor e2e tests, written in Typescript (*e2e-spec.ts)


NOTES:
------
The docker container will have a complete run-time. The application can be cloned into the container (ick) or loaded via a mounted volume.  

To run the application using the default application  
> docker run -d --name slkr -P rollo/slkr:alpine

To run the application from within the container (ick)  
> docker run -d --name slkr -P -v $(pwd)/app://usr/src/app rollo/slkr:alpine


Developer Information
---------------------
The "Get Surf Conditions" button calls a web service to get latest conditions for a specific list of beaches.
