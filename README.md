# Azure Lightsaber

A tool of an Azure Architect. Not as clumsy or random as a UI. An elegant tool for a civilized age.

It helps to quickly bootstrap the tools necessary to deploy Azure services from command line via scripts, by providing a consistent x-platform Docker Image that contains the following tools:
- azure-cli (2.0 aka azure-python-cli)
- powershell
- terraform
- packer
- ansible

## How to use it

1. Install Docker Engine
- [Mac](https://docs.docker.com/docker-for-mac/install/#download-docker-for-mac)
- [Windows](https://docs.docker.com/docker-for-windows/)

2. Run a container
```:shell
$ docker run -it raykao/azure_lightsaber
```

You will now be inside the container running an instance of the "azure_lightsaber" image.  You will have all of the above tools readily available for you to use to deploy Azure services.

## Next Steps

Download various scripts and examples to deploy Azure services (VMs, Storage, Network, App Services, etc.).

## Links

1. [Image Repo](https://hub.docker.com/r/raykao/azure_lightsaber/) on docker hub
