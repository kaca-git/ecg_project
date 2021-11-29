FROM mongo:latest

RUN mkdir src
WORKDIR src/
COPY . .

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.8 \
    python3-pip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install numpy \
	pandas \
	jupyterlab \
	pymongo \ 
	tensorflow \
	sklearn \
	scipy \
	imblearn \
	matplotlib \ 
	tensorflow_addons 
