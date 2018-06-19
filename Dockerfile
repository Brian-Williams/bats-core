FROM debian:stretch

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    software-properties-common \
    build-essential \
    libffi-dev \
    libssl-dev \
    python-dev \
    python-pip \
    systemd \
    git \
 && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade setuptools && pip install ansible

COPY / /etc/ansible/roles/bats-core/

RUN mkdir -p /etc/ansible && echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts
