FROM centos:7
RUN yum -y update && yum clean all
RUN yum install -y which wget texinfo
RUN yum install -y epel-release
RUN yum groupinstall -y "Development Tools"
RUN yum install -y python-devel libxslt-devel libxml2-devel
RUN yum install -y libmpc-devel mpfr-devel gmp-devel
#RUN yum install -y gmp-devel mpfr-devel libmpc-devel glibc-devel.i686 libgcc.i686
RUN cd /tmp \
    && wget http://mirrors.concertpass.com/gcc/releases/gcc-6.4.0/gcc-6.4.0.tar.gz \
    && tar -xvf gcc-6.4.0.tar.gz \
    && cd gcc-6.4.0 \
    && ./configure --disable-multilib --enable-languages=c,c++ \
    && make -j 8 \
    && make install
#RUN yum install -y cmake
RUN cd /tmp \
    && wget https://cmake.org/files/v3.9/cmake-3.9.1.tar.gz \
    && tar -xvf cmake-3.9.1.tar.gz \
    && cd cmake-3.9.1 \
    && export LD_LIBRARY_PATH=/usr/local/lib64/:$LD_LIBRARY_PATH \
    && ./bootstrap \
    && make \
    && make install

RUN cd /tmp \
    && wget https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.zip \
    && unzip boost_1_64_0.zip \
    && cd boost_1_64_0 \
    && ./bootstrap.sh \
    && echo "using gcc : 6.4 : /usr/local/bin/g++ ;" >> ./tools/build/src/user-config.jam \
    && ./b2 --toolset=gcc-6.4 \
    && ./b2 install

RUN yum install -y gflags glog
RUN yum install -y gflags-devel glog-devel
#RUN cd /tmp \
#    && wget https://github.com/facebook/folly/archive/v2017.05.15.00.zip \
#    && unzip v2017.05.15.00.zip \
#    && cd folly-2017.05.15.00 \
#    && mkdir build \
#    && cd build \
#    && cmake .. \
#    && make \
#    && make install


