FROM nvcr.io/nvidia/pytorch:20.11-py3
RUN apt update && \
    apt install -y libgl1-mesa-glx && \
    rm -rf /var/lib/apt/lists/*
RUN pip install seaborn thop gdown && \
    pip install -e git+https://github.com/JunnYu/mish-cuda#egg=mish_cuda && \
    pip install -e git+https://github.com/fbcotter/pytorch_wavelets#egg=pytorch_wavelets
RUN gdown https://drive.google.com/uc?id=1Tdn3yqpZ79X7R1Ql0zNlNScB1Dv9Fp76
WORKDIR /yolor
COPY . .
