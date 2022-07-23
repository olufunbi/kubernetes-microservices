FROM python:3.7.13

## Create a working directory
WORKDIR /app/

## Copy app source code to directory
COPY . app.py /app/
COPY . /model_data/boston_housing_prediction.joblib /app/

## Install packages from requirements.txt
# hadolint ignore=DL3013,DL3042
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt

## Expose port 80
EXPOSE 80

## Run app.py at container launch
CMD ["python", "app.py"]
