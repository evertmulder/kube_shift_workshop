# Minishift mini workshop


## Goal
Get introduced to kubenetes basic concepts, the powers of a container platform and a small introduction into the minishift UI.

## Prerequisites
- Download and install VirtualBox
- Download minishift binary
  https://github.com/minishift/minishift/releases
- Add the minishift binary to the path
- Install docker client only (the docker installation for windows will install HyperV, and kills VirtualBox)
  - https://download.docker.com/win/static/stable/x86_64/
  - Unzip and copy docker.exe the path (just use the same path as for minishift)
  - test by running: `docker version` in a command prompt
- Install dotnet core SDK
  - https://www.microsoft.com/net/download
  - Choose .NET Core 2.1 SDK - Windows x64 Installer
- Download kubectl
  - https://storage.googleapis.com/kubernetes-release/release/v1.11.0/bin/windows/amd64/kubectl.exe
  - Copy to minishift location to be include in the path


## Step 1: Get your mini cluster going

In the following steps we will install a kubernetes container cluster. The are a few simple tools to run kubernetes on you laptop. These include minikube, minishift. 
We will use minishift. Minishift is based on OKD (openshift origin) and add additional tooling on top of Kubernetes. 


Configure some settings for the used Virtual Machine running in virtual box.

```powershell
minishift config set memory 5120
minishift config set cpus 2
minishift config set vm-driver virtualbox
```

Add some minishift addons configuring the OKD cluster to also show admin service and allow for running containers as root.

```powershell
minishift addon enable admin-user
minishift addon enable anyuid
```

Start the cluster

```
minishift start
```

Quicky open the web console
```sh
minishift.exe dashboard
```

Windows
```cmd
minishift docker-env
# Follow the instructions and run:
@FOR /f "tokens=*" %i IN ('minishift docker-env') DO @call %i
```

The previous command configures the docker client to take with the docker server running in the minishift VM.

Now you can any regular docker command:
```bash
$ docker ps
$ docker images
```


Next we explore the server part bij loggin into the VM and run some commands. Note. For the best result run these commands using linux (or other ssh clients)

```
$ minishift ssh
$ free -h
$ df -h
$ top
$ ctrl-c
$ exit
```

Openshift comes with a additional commandline tool for OpenShift specific commands.

```cmd
minishift oc-env
# follow instruction
```

Time to build and deploy an application. Follow along...


