set -x
set -e
if [ ! -e ~/otp-18.1/bin/erl ]; then
  curl -O http://www.erlang.org/download/otp_src_18.1.tar.gz
  tar xzf otp_src_18.1.tar.gz
  cd otp_src_18.1
  ./configure --prefix=/home/ubuntu/otp-18.1 \
              --enable-smp-support \
              --enable-m64-build \
              --enable-threads \
              --enable-kernel-poll \
              --enable-hipe \
              --enable-dirty-schedulers \
              --disable-native-libs \
              --disable-sctp \
              --without-javac
  make;
  make install;
fi
