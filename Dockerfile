FROM mysql:5.6

COPY custom-entrypoint.sh /custom-entrypoint.sh

ENTRYPOINT ["/custom-entrypoint.sh"]
CMD ["mysqld"]
