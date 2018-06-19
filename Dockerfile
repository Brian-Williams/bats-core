FROM debian:stretch
# Pass in git as an empty string to create an environment without git
ARG GIT=git

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    software-properties-common \
    build-essential \
    libffi-dev \
    libssl-dev \
    python-dev \
    python-pip \
    systemd $GIT\
 && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade setuptools && pip install ansible

COPY / /etc/ansible/roles/bats-core/

RUN mkdir -p /etc/ansible && echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts
