FROM python:3.7.3-stretch

## Create a working directory
WORKDIR /app/

## Copy app source code to directory
COPY . app.py /app/

## Install packages from requirements.txt
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt
# hadolint ignore=DL3013

## Expose port 80
EXPOSE 80

## Run app.py at container launch
CMD ["python", "app.py"]
