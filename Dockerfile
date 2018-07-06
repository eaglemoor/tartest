FROM tarantool/tarantool:1.x-centos7

RUN yum install -y git cmake make gcc gcc-c++ openssl && \
	tarantoolctl rocks install https://raw.githubusercontent.com/tarantool/ldecnumber/master/ldecnumber-scm-1.rockspec

EXPOSE 3301

COPY main.lua /opt/tarantool
CMD ["tarantool", "/opt/tarantool/main.lua"]
