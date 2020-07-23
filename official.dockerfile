FROM ubuntu:20.04
RUN echo 'deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse\ndeb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse\ndeb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse\ndeb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse' > /etc/apt/sources.list
# Install clang and gcc
RUN apt-get update && apt-get install -y build-essential clang-10 git

# Create link
RUN ln -s /usr/bin/clang-10 /usr/bin/clang && ln -s /usr/bin/clang++-10 /usr/bin/clang++

# Start from a Bash prompt
CMD [ "/bin/bash" ]
