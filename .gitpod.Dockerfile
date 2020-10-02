FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
#<<<<<<< HEAD
# RUN brew install bastet
#=======
RUN brew install docker docker-compose
#>>>>>>> origin/attawayinc/gitpod-setup
#
# More information: https://www.gitpod.io/docs/config-docker/
