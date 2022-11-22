FROM ubi8/ubi-minimal
RUN umask 0007
CMD ['/bin/sh', '-c', 'echo "Hello from user $(id -u)" && sleep infinity']
