FROM python:3.9

WORKDIR /source

COPY ./requirements.txt /source/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /source/requirements.txt

COPY ./source /source/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]