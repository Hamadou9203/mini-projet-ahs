#Grab the latest alpine images
FROM python:3.13.1-alpine3.21

# Install python and pip
# RUN  apk add --no-cache --update python3=3.11.11-r0 py3-pip=23.3.1-r0 bash=5.2.21-r0
RUN  apk add --no-cache --update python3=3.12.8-r1 py3-pip=24.3.1-r0 bash=5.2.37-r0
COPY ./webapp/requirements.txt /tmp/requirements.txt

# Install dependencies
RUN pip3 install --no-cache-dir -q -r /tmp/requirements.txt

# Add our code
COPY ./webapp /opt/webapp/
WORKDIR /opt/webapp

# Expose is NOT supported by Heroku
# EXPOSE 5000 		

# Run the image as a non-root user
RUN adduser -D myuser
USER myuser

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			
CMD ["sh", "-c", "gunicorn --bind 0.0.0.0:$PORT wsgi"]

