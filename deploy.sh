#/bin/sh

yum -y install gcc
yum -y install gcc-c++
yum -y install vim
yum -y install mlocate
updatedb

mkdir software
cd software
BASE=`pwd`

wget http://www.open-mpi.org/software/ompi/v1.10/downloads/openmpi-1.10.1.tar.gz
tar zxvf openmpi-1.10.1.tar.gz 
cd openmpi-1.10.1
./configure --prefix=/usr/local/mpi 
make && make install
cd $BASE

echo 'MPI_HOME=/usr/local/mpi
RELION_HOME=/usr/local/relion-1.4
export PATH=$PATH:$MPI_HOME/bin:$RELION_HOME/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$MPI_HOME/lib:$RELION_HOME/lib
export RELION_QSUB_TEMPLATE="$RELION_HOME/bin/qsub.csh"
export RELION_CTFFIND_EXECUTABLE="/usr/local/bin/ctffind3"
export RELION_RESMAP_EXECUTABLE="/usr/local/bin/ResMap-1.1.4-linux64"
' >> /root/.bashrc
source /root/.bashrc

wget http://www2.mrc-lmb.cam.ac.uk/groups/scheres/1sep15/relion-1.4.tar.bz2
tar -jxf relion-1.4.tar.bz2
cd relion-1.4
./INSTALL.sh -j 8
cd $BASE

wget http://grigoriefflab.janelia.org/sites/default/files/ctffind-4.0.16-linux64.tar.gz
tar zxvf ctffind-4.0.16-linux64.tar.gz
mv ctffind /usr/local/bin/

wget http://skylineservers.dl.sourceforge.net/project/resmap/ResMap-1.1.4-linux64
chmod +x ResMap-1.1.4-linux64
mv ResMap-1.1.4-linux64 /usr/loca/bin/
