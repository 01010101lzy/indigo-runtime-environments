FROM alpine:latest
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk add python3 py3-pip gcc libgcc build-base --no-cache
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple --ignore-installed colorlog tqdm
