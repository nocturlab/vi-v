# ![vi-v-logo][vi-v-logo] Vi-v reflexions 
[vi-v-logo]: ./pictures/vi-v_logo_45x.png "Vi-v logo"
[workflow_hello_world]: ./pictures/vi-v_hello_world.png "Vi-v Example Workflow"

## Before starting

Before starting to develop Vi-v we need to think how it will work.

## Usage

To use Vi-v, you will drag and drop box from the left right panel to the drawing area and link each boxes to create the main flow of your apps.

Here an example of usage : 

![workflow_hello_world][workflow_hello_world]

We have some different types of boxes :
- value boxes - that can contain values mutable or not. the best is to automaticaly detect if it was mutable.
- keyword boxes - to use vlang keyword in our workflow (ex : if, for, ...)
- functions boxes - import a vlang module into the workflow or use functions.

It can be cool if we can import already existing vlang project into Vi-v project.
But it will be very difficult to implement and not really stable.

