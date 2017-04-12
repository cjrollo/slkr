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
1. clone the repo ()
2. build the image ()

To Run It:
----------
1. run the container ()

NOTES:
------
The docker container will have a complete run-time. The application can be cloned into the container (ick) or loaded via a mounted volume.
[docker command that mounts the pwd into the container at /home/dev]
