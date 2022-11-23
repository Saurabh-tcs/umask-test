FROM ubi8/ubi-minimal
RUN microdnf install shadow-utils
RUN useradd -u 1234 -g 0 -n sguser
RUN sed -i 's/umask 022/umask 007/g' /etc/profile
RUN echo 'umask 007' >> /home/sguser/.bashrc
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
