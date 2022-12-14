FROM ubi8/ubi-minimal
# RUN microdnf install shadow-utils
# RUN useradd -u 1234 -g 0 -n sguser
# RUN echo 'umask 007' >> /home/sguser/.bashrc
RUN echo 'umask 007' >> /etc/profile.d/sh.local
RUN echo 'umask 007' >> /etc/profile.d/umask.sh
RUN chmod +x /etc/profile.d/umask.sh
RUN chmod +x /etc/profile.d/sh.local
RUN sed -i 's/umask 022/umask 007/g' /etc/profile
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
