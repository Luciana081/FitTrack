# Windows PowerShell Setup Guide for FitTrack

This guide will help you set up your Windows environment to work with FitTrack, including installing MySQL, Docker, and Visual Studio Code (VS Code). Follow these steps carefully.

## 1. Install MySQL

### 1.1 Download MySQL Installer
- Go to the official [MySQL website](https://dev.mysql.com/downloads/installer/).
- Download the MySQL Installer for Windows.

### 1.2 Run the Installer
- Open the downloaded installer and select the `MySQL Server` option.
- Follow the installation prompts. Choose the default configuration options unless you have specific needs.

### 1.3 Configure MySQL
- Set the root password when prompted. Make sure to remember this password.
- Create a database for FitTrack using the following command in the MySQL console:
  ```sql
  CREATE DATABASE fittrack;
  ```

## 2. Install Docker

### 2.1 Download Docker Desktop
- Visit the [Docker Hub website](https://www.docker.com/products/docker-desktop).
- Download the Docker Desktop Installer for Windows.

### 2.2 Install Docker
- Run the downloaded installer and follow the installation steps.
- Ensure that you enable the WSL 2 integration during the installation.

### 2.3 Verify Docker Installation
- Open PowerShell and run the following command:
  ```sh
  docker --version
  ```
- You should see the Docker version if it's correctly installed.

## 3. Install Visual Studio Code

### 3.1 Download VS Code
- Go to the [Visual Studio Code website](https://code.visualstudio.com/).
- Download the installer for Windows.

### 3.2 Install VS Code
- Run the installer and follow the on-screen instructions.
- After installation, launch VS Code.

### 3.3 Install Recommended Extensions
- In VS Code, go to the Extensions view by clicking on the Extensions icon in the Sidebar or pressing `Ctrl+Shift+X`.
- Search for and install the following extensions:
  - Python
  - Prettier - Code formatter
  - Docker

## 4. FitTrack Configuration

### 4.1 Clone the FitTrack Repository
- Open PowerShell and navigate to the directory where you want to clone FitTrack:
  ```sh
  cd path\to\your\directory
  ```
- Clone the repository:
  ```sh
  git clone https://github.com/Luciana081/FitTrack.git
  ```

### 4.2 Build and Run FitTrack with Docker
- Navigate to the FitTrack directory:
  ```sh
  cd FitTrack
  ```
- Build the Docker image:
  ```sh
  docker-compose build
  ```
- Start the Docker containers:
  ```sh
  docker-compose up
  ```

### 4.3 Verify FitTrack is Running
- Open your browser and go to `http://localhost:3000` to see if FitTrack is running correctly.

## Conclusion
After following all these steps, your Windows PowerShell environment should be set up to work with FitTrack. Don't forget to check the official documentation for any updates or additional configuration steps.  
