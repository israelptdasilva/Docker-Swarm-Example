# https://docs.docker.com/engine/install/debian/

# clean up previous installation
sudo apt remove docker docker-engine docker.io containerd runc

# required packages
sudo apt update && apt install -y ca-certificates curl gnupg lsb-release

# add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings 
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# add the repository to the repository list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# update repository
sudo apt update

# this will fix errors with the gpg keys
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update

# install docker
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
