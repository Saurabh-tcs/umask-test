FROM ubi8/ubi-minimal
RUN microdnf install shadow-utils
RUN useradd 1234
RUN echo 'umask 007' >> /home/1234/.bashrc
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
