FROM python:3

EXPOSE 8080

ENV BASE_DIR=/usr/src/py-zip-demo

RUN mkdir -p ${BASE_DIR}

COPY ddl ${BASE_DIR}/ddl
COPY static ${BASE_DIR}/static
COPY app.py ${BASE_DIR}/app.py
COPY index.html ${BASE_DIR}/index.html
COPY requirements.txt ${BASE_DIR}/requirements.txt
COPY LICENSE ${BASE_DIR}/LICENSE

WORKDIR ${BASE_DIR}

RUN pip install -r requirements.txt

CMD python3 app.py
