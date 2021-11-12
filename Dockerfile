 # syntax=docker/dockerfile:1
 FROM fishtownanalytics/dbt:0.21.0
 RUN pip install google-cloud-secret-manager
 COPY . /home/dbt_hello_world
 ENV DBT_PROFILES_DIR=/home/dbt_hello_world/
 WORKDIR /home/dbt_hello_world/
 ENTRYPOINT ["/bin/bash"]