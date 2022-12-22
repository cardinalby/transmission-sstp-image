FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y network-manager-sstp sstp-client curl net-tools

ENV SSTPC_CMD "sstpc"

COPY --chmod=0755 entrypoint.sh .
COPY --chmod=0755 parallel_commands.sh .
COPY --chmod=0755 curl.sh .

CMD ./entrypoint.sh

