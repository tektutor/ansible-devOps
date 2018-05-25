cp /root/.ssh/id_rsa.pub CentOSAnsibleImage/authorized_keys
cp /root/.ssh/id_rsa.pub UbuntuAnsibleImage/authorized_keys

cd CentOSAnsibleImage
docker build -t tektutor/devops-centos .

cd ..

cd UbuntuAnsibleImage
docker build -t tektutor/devops-ubuntu .

