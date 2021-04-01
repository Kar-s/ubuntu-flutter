FROM ubuntu:20.04

ENV FLUTTER_HOME ${HOME}/flutter
ENV FLUTTER_VERSION 2.0.3-stable
ENV PATH ${PATH}:${FLUTTER_HOME}/bin

RUN apt-get update \
    && apt-get install -y libglu1-mesa git curl unzip wget xz-utils lib32stdc++6 \
    && apt-get clean

RUN wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}.tar.xz
RUN tar xf /flutter_linux_${FLUTTER_VERSION}.tar.xz && rm /flutter_linux_${FLUTTER_VERSION}.tar.xz

CMD ["flutter", "--version"]