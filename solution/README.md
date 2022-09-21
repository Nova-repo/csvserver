1. Run the csvgen.sh file && copy the newly generated "inputFile" to "solution" directory.
2. Input file missing for the csvserver container (/csvserver/inputdata)
3. Created inputFile from the csvgen.sh shell
4. Map the the inputFile to the container and bind the host port 9393 to container port 9300. Set the env var CSVSERVER_BORDER && execute below command to run csvserver container from "inputFile" file available in the same directory. 

#docker run -tid --name csvserver -p 9393:9300 -v $(pwd)/inputFile:/csvserver/inputdata infracloudio/csvserver:latest


docker run -tid --name csvserver -e "CSVSERVER_BORDER=orange" -p 9393:9300 -v $(pwd)/inputFile:/csvserver/inputdata infracloudio/csvserver:latest


5. use "netstat -antp " command to get the application port inside container 
