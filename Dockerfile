# Dockerfile - this is a comment. Delete me if you want.
ARG python_image

FROM $python_image

COPY ./volumes/flask /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]