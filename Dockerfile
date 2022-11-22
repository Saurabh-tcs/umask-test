FROM ubi8/ubi-minimal
umask 007
cmd ['sh', '-c', 'echo "Hello from user $(id -u)" && sleep infinity']
