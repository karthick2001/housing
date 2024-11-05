FROM public.ecr.aws/docker/library/python:3.7-slim
COPY . /app
WORKDIR /app
RUN  pip install -r requirements.txt
CMD python app.py