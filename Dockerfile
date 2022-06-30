FROM rockylinux:8.5
WORKDIR /opt/
ADD yasm-1.3.0.tar.gz .
ADD ffmpeg-4.1.tar.gz . 
RUN dnf install gcc python38 make -y  && \
    dnf clean all && \
    pip3 install you-get \
    && cd /opt/yasm-1.3.0/ && ./configure && make && make install && rm -rf /opt/yasm-1.3.0/ \
    && cd /opt/ffmpeg-4.1/ && ./configure && make && make install && rm -rf /opt/ffmpeg-4.1/ \
    && echo "alias ll='ls -la'" >> /root/.bashrc && source /root/.bashrc
