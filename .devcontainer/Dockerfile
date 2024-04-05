FROM mcr.microsoft.com/devcontainers/python:3.11-bullseye

# Version: prefect:2.16.4-python3.10-ubuntu22.04
RUN sudo apt-get update && \
    sudo apt-get install --no-install-recommends -y python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install dbt-core==1.7.11 dbt-snowflake==1.7.3 && \
    # TODO: install odbc driver and mongoexport driver
    sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*
    