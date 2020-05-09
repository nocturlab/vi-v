# ![vi-v-logo][vi-v-logo] Vi-v reflexions 
[vi-v-logo]: ./pictures/vi-v_logo_45x.png "Vi-v logo"
[workflow_main_page]: ./pictures/49A386BA-6689-498F-8A62-1AB36EDBC567_1_105_c.jpeg "Vi-v Main page"
[workflow_project_page]: ./pictures/FEFB3852-F5EA-44E2-9385-5C08D86F88DA_1_105_c.jpeg "Vi-v project page"
[workflow_hello_world]: ./pictures/E3C7A85B-093A-43D3-A38D-5151225D25D0_1_105_c.jpeg "Hello World"
[workflow_game_test]: ./pictures/EF414187-6CE5-4B76-8AD8-E72B35420EFE_1_105_c.jpeg "Vi-v Game Test"

## Before starting

Before starting to develop Vi-v we need to think how it will work.

## Usage

To use Vi-v, you will drag and drop box from the left right panel to the drawing area and link each boxes to create the main flow of your apps.

![Workflow main page][workflow_main_page]
![Workflow project page][workflow_project_page]
![Workflow Hello world][workflow_hello_world]

We have some different types of boxes :
- value boxes - that can contain values mutable or not. the best is to automaticaly detect if it was mutable.
- keyword boxes - to use vlang keyword in our workflow (ex : if, for, ...)
- functions boxes - import a vlang module into the workflow or use functions.

It can be cool if we can import already existing vlang project into Vi-v project.
But it will be very difficult to implement and not really stable.

## Module

To set an hello world with modules, you basically just have to do this : 

You create modules using input (Start) and output (End) : 

![Workflow Game Test][workflow_game_test]

You will set an entrypoint, and output. entry and output can have values or just flow and you use the module created before.
