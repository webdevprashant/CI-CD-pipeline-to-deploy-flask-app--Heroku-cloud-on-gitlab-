FROM python:latest
WORKDIR /app
ADD . /app
RUN pip3 install --upgrade pip
RUN pip install -r requirements.txt
CMD gunicorn app:app --bind 0.0.0.0:$PORT --reload
#CMD python3 app.py
