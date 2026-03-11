# FitTrack Local Setup Guide for Windows Users

This guide provides step-by-step instructions on how to set up MySQL, Docker, Visual Studio Code (VS Code), and run the FitTrack application locally using PowerShell.

## Prerequisites
Before you begin, ensure that you have the following installed on your Windows machine:
- **Windows 10 or later**
- **PowerShell**

## Step 1: Install MySQL
1. Download MySQL Installer from the [MySQL official website](https://dev.mysql.com/downloads/installer/).
2. Run the installer and select the "MySQL Server" option to install.
3. Follow the setup instructions:
   - Choose a server type (e.g., Developer Default).
   - Set a root password and create a user account if required.
4. Finish the installation and verify by launching MySQL Workbench or using the command line:
   ```bash
   mysql -u root -p
   ```

## Step 2: Install Docker
1. Download Docker Desktop from the [Docker official website](https://www.docker.com/products/docker-desktop).
2. Run the installer and follow the installation prompts.
3. Once installed, ensure Docker is running. You can check by opening PowerShell and typing:
   ```powershell
   docker --version
   ```

## Step 3: Install Visual Studio Code (VS Code)
1. Download VS Code from the [Visual Studio Code website](https://code.visualstudio.com/).
2. Run the installer and follow the setup instructions.
3. Launch VS Code once the installation is complete.

## Step 4: Clone the FitTrack Repository
1. Open PowerShell and navigate to the directory where you want to clone the repository:
   ```powershell
   cd path_to_your_directory
   ```
2. Clone the FitTrack repository:
   ```powershell
   git clone https://github.com/Luciana081/FitTrack.git
   ```
3. Navigate into the cloned repository:
   ```powershell
   cd FitTrack
   ```

## Step 5: Build and Run the Application
1. Open the cloned project in VS Code:
   ```powershell
   code .
   ```
2. Make sure Docker is running, and build the Docker images by running:
   ```powershell
   docker-compose up --build
   ```
3. Open a web browser and go to `http://localhost:YOUR_PORT` (replace `YOUR_PORT` with the port number specified in the `docker-compose.yml` file).

## Step 6: Connect to MySQL Database
1. Use MySQL Workbench or command line to connect to the database:
   - Host: `localhost`
   - User: `root`
   - Password: `YOUR_PASSWORD`
2. Create the necessary databases and tables if required by the FitTrack application.

## Troubleshooting Tips
- Ensure Docker is running if you encounter issues.
- Check firewall settings if you're having connectivity issues.
- Review logs for any error messages that can provide clues on what went wrong.

## Conclusion
Congratulations! You have successfully set up FitTrack on your local machine. If you run into any issues, feel free to open an issue on the GitHub repository for assistance.