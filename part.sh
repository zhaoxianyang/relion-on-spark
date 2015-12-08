#/bin/bash
rm -rf relion-1.4
tar -jxf relion-1.4.tar.bz2
cd relion-1.4
sed -i "s/\(length_fn_ctf = \)exp_fn_img.length() + 1/\1exp_fn_ctf.length() + 1/" src/ml_optimiser_mpi.cpp
./INSTALL.sh -j 8
cd $BASE

if [ ! -e ctffind-4.0.16-linux64.tar.gz ];then
wget http://grigoriefflab.janelia.org/sites/default/files/ctffind-4.0.16-linux64.tar.gz
fi
tar zxvf ctffind-4.0.16-linux64.tar.gz
mv ctffind /usr/local/bin/

if [ ! -e ResMap-1.1.4-linux64 ];then
wget http://skylineservers.dl.sourceforge.net/project/resmap/ResMap-1.1.4-linux64
fi
chmod +x ResMap-1.1.4-linux64
mv ResMap-1.1.4-linux64 /usr/loca/bin/
