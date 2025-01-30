#Grab the latest alpine images
FROM python:3.13.0a2-alpine

# Install python and pip
RUN  apk add --no-cache --update python3=3.13.0-r0 py3-pip=21.3.1-r0 bash=5.1.8-r0
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
CMD ["gunicorn", "--bind", "0.0.0.0:$PORT", "wsgi"]

