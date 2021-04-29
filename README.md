# Windows-Deployer-KVM-App
&nbsp;

## Continuous Integration Status Badge with GitHub Actions on ```master``` branch :

[![App-Release](https://github.com/yoanndelattre/Windows-Deployer-KVM-App/actions/workflows/app-release.yml/badge.svg?branch=master)](https://github.com/yoanndelattre/Windows-Deployer-KVM-App/actions/workflows/app-release.yml)

&nbsp;  
&nbsp;

### The Windows-Deployer application allows you to create and manage a Windows 10 virtual machine with KVM on a Scaleway instance under Ubuntu.

&nbsp;

### The application is divided into four parts:

* [Windows-Deployer-KVM-Scripts](https://github.com/yoanndelattre/Windows-Deployer-KVM-Scripts) This repository contains the scripts for initializing, installing KVM, various applications and creating the Windows VM with the template file.

* [Virsh-Api-Server](https://github.com/yoanndelattre/Virsh-Api-Server) The Virsh-Api-Server application open an endpoint in http to manage the Windows VM with the virsh binary. This app can start, shutdown, restart and get VM status. This application is written with the Golang language.

* [Windows-Deployer-KVM-Web](https://github.com/yoanndelattre/Windows-Deployer-KVM-Web) Windows-Deployer-KVM-Web is the website which communicates with the [Virsh-Api-Server](https://github.com/yoanndelattre/Virsh-Api-Server) application and the Scaleway API to manage the instance and the Windows VM. This website is made with [Reactjs](https://reactjs.org/).

* [Windows-Deployer-KVM-App](https://github.com/yoanndelattre/Windows-Deployer-KVM-App) Windows-Deployer-KVM-App is an application integrating the [Windows-Deployer-KVM-Web](https://github.com/yoanndelattre/Windows-Deployer-KVM-Web) website and a web server. This application can be installed on all devices: Windows, MacOS, Linux or RaspberryPi. This application is written with the Golang language.

&nbsp;

## Installation

Installation methods:
  - [Windows-x86_64](https://github.com/yoanndelattre/Windows-Deployer-KVM-App/releases/download/latest/Windows-Deployer-Windows-x86_64.exe)
  - [MacOS-x86_64](https://github.com/yoanndelattre/Windows-Deployer-KVM-App/releases/download/latest/Windows-Deployer-Darwin-x86_64)
  - [Linux-x86_64](https://github.com/yoanndelattre/Windows-Deployer-KVM-App/releases/download/latest/Windows-Deployer-Linux-x86_64)
  - [Linux-arm64](https://github.com/yoanndelattre/Windows-Deployer-KVM-App/releases/download/latest/Windows-Deployer-Linux-arm64)
  - [Linux-arm/RaspberryPi](https://github.com/yoanndelattre/Windows-Deployer-KVM-App/releases/download/latest/Windows-Deployer-Linux-arm)
