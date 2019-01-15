## Hasura Summer Internship Task.

### For the selection of Internship at the company I was assigned a task which was - 

  - To build and deploy a simple ToDo application using Flutter with backend powered by Hasura GraphQL engine.
  - Using auth0/firebase authentication for signup in the application.
  - Deploying Hasura on Heroku.
  - Writing up a small blog post/ReadMe about how I went to approach the task.
  - Deploy the whole project on Github and use version control as well.
  
  ### So to accomplish the whole task I decided to divide the whole into small parts and try to execute them as a whole.
  
  ## Task 1 - Setting up Flutter and simulator.
  
 Since almost all of the technology and Although I did was familiar with what Flutter was and how was it getting better everyday I did not use it untill today when I was given the task to.
  
  I had a different approach on tackling this
  - I went to the internet and searched about the similarities and the differences between the normal iOS App Development(Since I am an iOS Developer) and Flutter and Hybrid App Development.
  
    Searching all of this I got to know about a really cool feature known as **Hot Reload** and I was very amazed with it and definitely wanted to try.
    
So I went to the official [Flutter's website](https://flutter.io/docs/get-started/install/macos) to see how to proceed
Inside Docs there was Installation guide for MacOS.

It had the following task -
 - Get the Flutter SDK.
 - Unzip the SDK at any Directory.
 - Add the path to your Editor.
 
 I was it was the setup on the individual environment and as I prefer [Visual Studio Code](https://code.visualstudio.com/download) more [this](https://flutter.io/docs/development/tools/vs-code) documentaion helped me 
 more.
 It has the following task - 
 - Install the plugins named as "Flutter" and "Dart" and after Installing just reload the editor.
 - Creating a new project-
      1. Press (Cmd+Shift+P) for Mac or (Ctrl+Shift+P) for Windows to open up the Command Palette.
      2. Select Flutter New project and select enter.
      3. Enter the name of the project(*this will be the name of the final app also*) and then save it in the desired directory.
 - Write Code to create the app.
 - Debug and see the errors and problems.
 
 As you create a new project you can see some basic code already written and thus you can check it directly on a simulator.
 
 ### Setting up the debugging mode and the simulators- 
 Since I am an iOS Developer and had Xcode pre-installed so it had iOS Simulator devices as well.
 setting it up is easy-
 
In the VS Code go to the "Debug" mode there besides debug there will be written **Flutter** if not then there will be a drop down menu.
 - select Add Config in it, it will open **launch.json** file.
 - press Add Configuration and add the one with the name (**name: Flutter, request: launch, type: Dart**) and press enter.
 - after this go to the debug mode again and now you will be able to see Flutter besides the Play button press the play button.
 - Select iOS Simulator (since it is already installed in my device.) and the simulator opens and installs the application on the phone.
 - you can see a simple app with a floating button which increase the count.
 
 ### By this you have the basic Flutter application running on a phone, now was the time to write some code and make the frontend of the application first.
 *Since Dart was a new language and I was not much aware of it so I decided to make a repository on Github and have a version control of all the check points that I achieve and hence could retrieve if any mistake happens.*
 
 
 ## Task 2- Setting up the Repository and adding the code on Github.
 VS Code has Inbuilt Terinal which allows you to add the git commands and perform the version control from within.
 open terminal in VS Code and follow the following steps-
 
 1. Go to the directory where all the code is stored for the project created.
 2. type ```git init``` to initialise an empty Git repository and press enter.
 3. type ```git add .``` this add all the uncommited and changed files from all the folders to this repo.
 4. type ```git commit -m ("your log message here.")``` to commit the files to this repository.
 5. Go to Github and create an empty repo by clicking on + symbol besides your profile button.
 6. Give the name of the repo you want to create (This can also be different from the app name).
 7. There is a link which is created after completing all the steps which will look like **git remote url** copy that and paste the whole command in the terminal after step 4 and press enter. Now after this you tell your repository to store everything on this repository but still the changes in this files are yet to be commited to the repository.
8. type ```git push -u oring master``` this takes all the commited code and pushes it to the repo where *master* is the branch on which the code is pushed.
9. Later you can check you activites using ```git status``` and this will let you know about all the changes in the app after the last commit.
10. you can also check all the git logs using ```git log``` and you get a list of all the commited logs.


### By this you will have a version control for your application.


## Task 3 - Setting up Firebase and connecting your application -
Since I have been developing many Apps previously with Firebase as a Backend service and hence was familiar with almost all the features of it, It was easy to go through this.


The steps I followed were - 
- I went to [Firebase and Flutter](https://firebase.google.com/docs/flutter/setup) setup guide to check how to add Flutter app.
- Then I connected my Android part as said after registering the application.
*As I never connected an android application before with Firebase and had zero experience,* I found [this](https://www.youtube.com/watch?v=8M-Fa239Hy4&t=894s) video very helpful, It also has all the steps on how to add iOS and how to perform the Google Authentication for the app.

## Task 4 - Coding the ToDo app -
 I have very well tried to code the application and also commented properly to explain the bits and parts of the code and how they work.
 
## Task 5 - Hasura GraphQL Engine deployed on Heroku -
With [Hasura's Documentation](https://docs.hasura.io/1.0/graphql/manual/getting-started/heroku-simple.html) I was successfully able to deploy it on Heroku.
