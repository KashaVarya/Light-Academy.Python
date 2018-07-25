FROM python:3.5

# RUN apt-get install -y libpq-dev && pip install virtualenv --no-cache-dir

# RUN mkdir -p /root/.ssh
# COPY .deploy_keys /root/.ssh
COPY . /data/backend/
WORKDIR /data/backend/

# RUN virtualenv /data/env

# RUN . /data/env/bin/activate && pip install uwsgi --no-cache-dir
# RUN chmod 600 -R /root/.ssh/

RUN pip install -r requirements.txt --no-cache-dir
RUN chmod +x ./entry-point.sh

EXPOSE 8000

ENTRYPOINT ["./entry-point.sh"]