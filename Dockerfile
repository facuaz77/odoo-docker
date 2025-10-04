FROM odoo:15.0

USER root

RUN apt-get update && apt-get install -y \
    python3-pip \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .    
RUN pip install -r requirements.txt 


USER odoo