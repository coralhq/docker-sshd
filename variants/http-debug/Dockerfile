FROM coralteam/sshd:base

RUN apt-get update && apt-get install -y --no-install-recommends \
    vim curl wget httpie \
 && rm -rf /var/lib/apt/lists/*
