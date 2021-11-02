FROM nvcr.io/nvidia/pytorch:20.11-py3
RUN apt update && \
    apt install -y libgl1-mesa-glx && \
    rm -rf /var/lib/apt/lists/*
RUN pip install seaborn thop && \
    pip install -e git+https://github.com/JunnYu/mish-cuda#egg=mish_cuda && \
    pip install -e git+https://github.com/fbcotter/pytorch_wavelets#egg=pytorch_wavelets
WORKDIR /yolor
COPY . .
