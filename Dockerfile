FROM ubi8/ubi-minimal
RUN umask 007
cmd ['sh', '-c', 'echo "Hello from user $(id -u)" && sleep infinity']
