# Remove old Java (optional)
sudo apt remove openjdk-* -y

# Install OpenJDK 17
sudo apt update
sudo apt install openjdk-17-jdk -y

# Set Java 17 as default
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-17-openjdk-amd64/bin/java 1
sudo update-alternatives --config java

# Verify Java version
java -version


# Remove old Maven if installed via apt
sudo apt remove maven -y

# Download Maven 3.9.9
wget https://downloads.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz

# Extract it
sudo tar xf apache-maven-3.9.9-bin.tar.gz -C /opt

# Setup environment variables
sudo tee /etc/profile.d/maven.sh > /dev/null <<EOF
export M2_HOME=/opt/apache-maven-3.9.9
export PATH=\$M2_HOME/bin:\$PATH
EOF

sudo chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh

# Verify Maven version
mvn -version
