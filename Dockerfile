FROM index.alauda.cn/alexander/ceph-base:10.2.5

# Expose the ceph OSD port (6800+, by default)
EXPOSE 6800

RUN rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD entrypoint.sh /root/entrypoint.sh

RUN chmod +x /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
