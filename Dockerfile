FROM python:3.11

WORKDIR .

COPY requirements.txt /code/requirements.txt

RUN pip install -r /code/requirements.txt

COPY . /

EXPOSE 5000
#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "5000"]
CMD ["uvicorn", "todo.app:app", "--host", "0.0.0.0", "--port", "5000"]
#CMD ["python", "./main.py"]
