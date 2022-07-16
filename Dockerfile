FROM summerwind/actions-runner:latest

RUN sudo apt update -y \
    && sudo apt install cmake gcc-arm-none-eabi -y \
    && sudo rm -rf /var/lib/apt/lists/*

RUN docker context create builders \
    && docker context use builders

ENV DOCKER_CONTEXT=builders
