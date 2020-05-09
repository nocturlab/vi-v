# ![vi-v-logo][vi-v-logo] Vi-v reflexions 
[vi-v-logo]: ./pictures/vi-v_logo_45x.png "Vi-v logo"
[workflow_example_01]: ./pictures/vi-v_hello_world.png "Vi-v Example Workflow"
[workflow_hello_world_01]: ./pictures/9EE9177A-2533-4883-97AC-263558E57959.png
[workflow_hello_world_02]:	./pictures/A4631256-0A4E-4EB1-A684-192CEB986056.png

## Before starting

Before starting to develop Vi-v we need to think how it will work.

## Usage

To use Vi-v, you will drag and drop box from the left right panel to the drawing area and link each boxes to create the main flow of your apps.

Here an example of usage : 

![Workflow example 01][workflow_example_01]

We have some different types of boxes :
- value boxes - that can contain values mutable or not. the best is to automaticaly detect if it was mutable.
- keyword boxes - to use vlang keyword in our workflow (ex : if, for, ...)
- functions boxes - import a vlang module into the workflow or use functions.

It can be cool if we can import already existing vlang project into Vi-v project.
But it will be very difficult to implement and not really stable.

## Module

To set an hello world with modules, you basically just have to do this : 

You create modules file : 
![Workflow Hello World 01][workflow_hello_world_01]
You will set an entry, and an output. entry and output can have values or just flow. 

And you use the module created before : 
![Workflow Hello World 02][workflow_hello_world_02]
