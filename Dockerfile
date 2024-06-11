FROM jlesage/baseimage:ubuntu-18.04-v3
WORKDIR /
RUN apt update && apt -y install curl git wget sudo ufw
# Copies the trainer code to the docker image.
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]
