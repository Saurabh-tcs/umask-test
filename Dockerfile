FROM ubi8/ubi-minimal
RUN echo 'umask 007' >> /home/1234/.bashrc
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
