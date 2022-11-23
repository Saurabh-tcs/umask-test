FROM ubi8/ubi-minimal
RUN microdnf install shadow-utils
RUN useradd -u 1234 -g 1234 -n sguser
RUN echo 'umask 007' >> /home/1234/.bashrc
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
