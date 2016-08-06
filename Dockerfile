FROM selenium/node-chrome
MAINTAINER Supaket Wongkampoo <supaket@gmail.com>

USER root
COPY swarm_entry_point.sh /opt/bin/
RUN chmod +x /opt/bin/swarm_entry_point.sh

USER seluser
CMD ["/opt/bin/swarm_entry_point.sh"]
