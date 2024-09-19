# Python version I successfully built with locally
FROM python:3.10.14

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    cmake \
    libboost-system-dev \
    libboost-thread-dev \
    libboost-program-options-dev \
    libboost-test-dev\
    && rm -rf /var/lib/apt/lists/*

RUN make install

RUN pip install .[getpy]

