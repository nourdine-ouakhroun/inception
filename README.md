# 🐳 Inception  

**Inception** is a project in the 42 Network curriculum that focuses on Docker and containerization. The goal is to set up a multi-container Docker environment to host several services, including WordPress, MariaDB, and Nginx, orchestrated with Docker Compose.  

---

## 🌟 Features  

- Multi-container environment using **Docker Compose**.  
- Services:  
  - **Nginx**: Reverse proxy server.  
  - **MariaDB**: Relational database management system.  
  - **WordPress**: Content management system (CMS).  
- Secure setup with SSL/TLS certificates.  
- Self-hosted and accessible through a domain name.  

---

## 🚀 Getting Started  

### Prerequisites  

- **Operating System**: Linux or macOS.  
- **Docker**: Installed and running. [Get Docker](https://docs.docker.com/get-docker/)  
- **Docker Compose**: Installed. [Install Docker Compose](https://docs.docker.com/compose/install/)  

---

### Installation  

1. **Clone the repository**:  
   ```bash
   git clone https://github.com/your-username/inception.git
   cd inception

2. **Set up environment variables**
    Create a `.env` file in the root of your project to store sensitive data such as database credentials and domain names. The `.env` file should look like this:
    ```env
    DOMAIN_NAME=yourdomain.com
    DB_USER=your_db_user
    DB_PASSWORD=your_db_password

3. **Start the services**  
    Run the following command to start the multi-container environment:  
    
    ```bash
    docker-compose up -d
## 🔧 Configuration

- **Nginx**: Configuration for the reverse proxy is available in the `nginx` directory.  
  You can modify the `nginx.conf` file to adjust server settings or add additional configuration for your environment.

- **MariaDB**: The database credentials are set in the `.env` file. Modify the `.env` file to adjust the database user, password, and other settings like database name.

- **WordPress**: The WordPress configuration is handled automatically via environment variables in the `.env` file. You can customize the database and admin settings by editing the relevant values in the `.env` file.
