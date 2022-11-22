FROM ubi8/ubi-minimal
RUN umask 0007
CMD ['sh', '-c', 'echo "Hello from user $(id -u)" && sleep infinity']
