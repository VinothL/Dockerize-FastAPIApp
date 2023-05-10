
#Loading the base image 
FROM python:3.8 

#Creating a directory within the image
WORKDIR /fastapi/app

#Copy the requirements file into the image folder and run the requirements.txt for installing dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt 

#Copying the application folder into the docker app folder
COPY ./app ./app 

#Defining the entry point for container
CMD ["python", "./app/main.py"]

#Docker image building 
#docker build -t fastapiapp .

#Running the image
#docker run fastapiapp

#Connecting Docker to Macbook Port
#docker run -p 8000:8000 fastapiapp

#Testing the features from Docker Dashboard Desktop app
#To list the running containers
#docker ps

#Getting access to the specific container using container id
#docker exec -it a3233df07984 /bin/sh