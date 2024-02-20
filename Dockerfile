FROM python:3.10-alpine
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
ENV HNG_API_HOST = 16.171.60.189
ENV HNG_API_ORIGINS = http://16.171.60.189:3000
CMD [ "python","main.py"]