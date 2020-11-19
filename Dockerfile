FROM amazonlinux
RUN yum -y install git \
    python37 \
    python37-pip \
    zip \
    && yum clean all
RUN python3 -m pip install --upgrade pip \
    && python3 -m pip install boto3
RUN yum -y install gcc g++ gcc gcc-c++ cmake
RUN yum -y install python37*

ADD package.sh /
ENTRYPOINT ["/package.sh"]