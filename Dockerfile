FROM python:3

WORKDIR /usr/src/app

RUN python3 -m venv venv
RUN . venv/bin/activate

COPY requirements-dev.txt ./
RUN pip install --no-cache-dir -r requirements-dev.txt

COPY . .

ENV FLASK_APP=microblog
ENV FLASK_ENV=development

CMD [ "flask", "run", "--host=0.0.0.0"]