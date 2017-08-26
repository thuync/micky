FROM centos:7
#MAINTAINER Banana Team <team@banan.com>
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

ENV LD_LIBRARY_PATH /usr/local/lib64/:/usr/local/lib/:$LD_LIBRARY_PATH

WORKDIR /tmp

RUN yum install -y ncurses-devel

RUN wget https://cmake.org/files/v3.9/cmake-3.9.1.tar.gz \
    && tar -xvf cmake-3.9.1.tar.gz \
    && cd cmake-3.9.1 \
    && ./bootstrap \
    && make \
    && make install

RUN wget https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.zip \
    && unzip boost_1_64_0.zip \
    && cd boost_1_64_0 \
    && ./bootstrap.sh \
#    && ./bootstrap.sh --libdir=/usr/local/lib64/ \
    && echo "using gcc : 6.4 : /usr/local/bin/g++ ;" >> ./tools/build/src/user-config.jam \
    && ./b2 --toolset=gcc-6.4 \
    && ./b2 install

RUN wget https://github.com/google/double-conversion/archive/v3.0.0.zip \
    && unzip v3.0.0.zip \
    && cd double-conversion-3.0.0/ \
    && cmake . -DBUILD_TESTING=ON -DBUILD_SHARED_LIBS=ON -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ \
    && make \
    && test/cctest/cctest --list | tr -d '<' | xargs test/cctest/cctest \
    && make install

RUN yum install -y libevent-devel snappy-devel lz4-devel lzma-sdk457-devel perl-core

RUN wget https://github.com/openssl/openssl/archive/OpenSSL_1_1_0f.zip \
    && unzip OpenSSL_1_1_0f.zip \
    && cd openssl-OpenSSL_1_1_0f/ \
    && ./config \
    && make \
#    && make test \
    && make install

RUN wget https://github.com/gflags/gflags/archive/v2.2.1.zip \
    && unzip v2.2.1.zip \
    && cd gflags-2.2.1/ \
    && mkdir build && cd build \
    && cmake -DBUILD_SHARED_LIBS=ON -DBUILD_TESTING=ON .. \
    && make && make test && make install
#    && cmake -DBUILD_SHARED_LIBS=ON -DLIBRARY_INSTALL_DIR=/usr/local/lib64 -DBUILD_TESTING=ON .. \
#    && make && make test && make install

RUN wget https://github.com/google/glog/archive/v0.3.5.zip \
    && unzip v0.3.5.zip \
    && cd glog-0.3.5/ \
    && mkdir build && cd build \
    && cmake -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ .. \
    && make && make test && make install

RUN wget https://github.com/google/googletest/archive/release-1.8.0.zip \
    && unzip release-1.8.0.zip \
    && cd googletest-release-1.8.0/ \
    && mkdir build && cd build \
    && cmake -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ .. \
    && make && make test && make install

RUN wget https://github.com/facebook/folly/archive/v2017.08.21.00.zip \
    && unzip v2017.08.21.00.zip \
    && cd folly-2017.08.21.00/folly \
    && autoreconf -ivf \
    && ./configure \
    && make \
#    && make check \
    && make install

COPY wangle/CMakeLists.txt .

RUN mkdir wangle && cd wangle \
    && wget https://github.com/facebook/wangle/archive/v2017.08.21.00.zip \
    && unzip v2017.08.21.00.zip \
    && cd wangle-2017.08.21.00/wangle/ \
    && cp -f /tmp/CMakeLists.txt . \
    && mkdir build && cd build \
    && cmake -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ .. \
    && make \
#    && make test \  --> docker network issue
    && make install

RUN wget http://mirrors.ustc.edu.cn/gnu/autoconf-archive/autoconf-archive-2010.06.04.tar.gz \
    && tar -xvf autoconf-archive-2010.06.04.tar.gz \
    && cd autoconf-archive-2010.06.04 \
    && ./configure \
    && make && make install

RUN yum install -y libcap-devel gperf

RUN mkdir proxygen && cd proxygen \
    && wget https://github.com/facebook/proxygen/archive/v2017.08.21.00.zip \
    && unzip v2017.08.21.00.zip \
    && cd proxygen-2017.08.21.00/proxygen \
    && ACLOCAL='aclocal -I /usr/local/share/aclocal' autoreconf -ivf \
    && ./configure \
    && make && make install

WORKDIR ~

RUN rm -rf /tmp/*