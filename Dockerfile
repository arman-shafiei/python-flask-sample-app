FROM python:3.8.2-alpine

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

WORKDIR /app

COPY . .

RUN pip install --editable .


RUN flask init-db

# Unit tests
# RUN pip install pytest && pytest

EXPOSE 5000

CMD [ "flask", "run", "--host=0.0.0.0" ]



