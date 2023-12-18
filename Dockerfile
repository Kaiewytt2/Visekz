FROM python:3.11 AS bilder
COPY requirements.txt .

RUN pip install --user -r requirements.txt


COPY app.py /

ENV FLASK_APP=app_for_vis
EXPOSE 8080
CMD ["python", "-u", "./app.py"]
