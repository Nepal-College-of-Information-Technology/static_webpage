# 🌐 Static Web Page Demo with Docker and Nginx

This project demonstrates how to serve a static HTML web page using **Docker**, **Docker Compose**, and **Nginx**.

## Install Docker

1. **Update the package index**:
   ```bash
   sudo apt update
   ```

2. **Install required packages**:
   ```bash
   sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
   ```

3. **Add Docker’s official GPG key**:
   ```bash
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
   ```

4. **Add Docker repository**:
   ```bash
   echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu noble stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   ```

5. **Update package index again**:
   ```bash
   sudo apt update
   ```

6. **Install Docker**:
   ```bash
   sudo apt install -y docker-ce docker-ce-cli containerd.io
   ```

7. **Verify Docker installation**:
   ```bash
   sudo systemctl start docker
   sudo systemctl enable docker
   docker --version
   ```

8. **Add user to Docker group (to run Docker without sudo)**:
   ```bash
   sudo usermod -aG docker $USER
   ```
   **Note**: Log out and back in to apply group changes.

## Install Docker Compose

1. **Download the latest Docker Compose binary**:
   ```bash
   sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
   ```

2. **Make it executable**:
   ```bash
   sudo chmod +x /usr/local/bin/docker-compose
   ```

3. **Verify installation**:
   ```bash
   docker-compose --version
   ```

