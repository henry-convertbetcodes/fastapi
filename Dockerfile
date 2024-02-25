FROM python:3.10-alpine
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt

ENV HNG_API_HOST = 13.53.116.5 
ENV HNG_API_ORIGINS = http://13.53.116.5:30000
                

CMD ["sh","-c","uvicorn main:app --reload --port=8000 --host=0.0.0.0"]