# set base image (host OS)
FROM python:alpine

# set the working directory in the container
WORKDIR /opt/forwardgram

# copy the dependencies file to the working directory
COPY requirements.txt ./

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# copy the content of the local src directory to the working directory
COPY . .

# command to run on container start
CMD [ "python", "./forwardgram.py" ]