# R-pivotal-app-svcs
Sample R code for use Pivotal Application Services (PAS)

## Implementation Steps
First we push the application.

cf push --no-start -b https://github.com/cloudfoundry/r-buildpack.git

With this push we're specifying the R buildpack, so that it will build a container that contains R, We'll need to customizer the buildpack to include your R libraries.
We're also using the --no-start flag, this means that Cloud foundry will bring up the container without actually starting it's process, this is important since we'll trigger the start of the process using cf tasks.


Then we run it as a task

#cf run-task WillsRExample "R -f willsrexample.r" --name WillsRExample
cf run-task HelloWorld "R -f HelloWorld.R" --name HelloWorldExample

This creates and starts a cloud foundry task that will execute the command in quotes on the container, and report back the processes execution.




Let's take a look at it running:

#cf tasks WillsRExample
cf tasks HelloWorldExample

The status of the task depends on the execution return value of the process.



We can see that the R process ran by looking at the logs.

#cf logs --recent WillsRExample
cf logs --recent HelloWorld

