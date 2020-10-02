FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
RUN brew install docker docker-compose
#
# More information: https://www.gitpod.io/docs/config-docker/
