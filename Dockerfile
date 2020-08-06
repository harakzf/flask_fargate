FROM python:3.7

RUN mkdir /projects
WORKDIR /projects

COPY requirements.txt /projects

RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r requirements.txt --no-cache-dir

COPY ./src/ /projects

EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]
