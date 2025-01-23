MacOS is supported for now. (Windows and linux is coming soon)

### requirement
Meridian requires the following on macOS:

- macOS Catalina 10.15 or higher.
- Apple Silicon (M1) or Intel CPU with VT-x.
- Persistent internet connection.

It is also recommended to have:

- 8 GB of memory
- 4 CPU

## Installation

Install meridian with the following command
```shell
➜  meridian git:(master) ✗ curl get.xdpin.cn/meridian/iou.sh| bash -x 
```
Set meridian alias to m `alias m=meridian` in your bashrc file

**1. Meridian runs containers and kubernetes in a local virtual machine.**  
**2. Create a container environment with the following command.**
```shell
➜  meridian git:(master) ✗ m create vm abc
```
>> [Note] It will take times for system to bootstrap a kubernetes environment, especially for downloading vm images which depends on your networking. you can manually pull the vm images ahead by the following command. 
```shell
➜  meridian git:(master) ✗ m get image
➜  meridian git:(master) ✗ m get image -d
   NAME                 OS                            Arch           
   ubuntu24.04.x86_64   linux                         x86_64         
   ubuntu24.04.arm64    linux                         aarch64
➜  meridian git:(master) ✗ m pull ubuntu24.04.x86_64
```

Using ``` m get vm ``` to watch the vm status.
```shell
➜  meridian git:(master) ✗ m get vm
NAME                ADDRESS                                 STATE     DOCKER_ENDPOINT                         
abc                 192.168.64.90,169.254.123.1             Running   [docker context use abc] 
```

Docker environment is now available, run ```docker context use abc``` to enable docker context.

Kubernetes environment is now available, run ```kubectl get no``` to access the k8s environment.

Access virtual machine with ```ssh abc@192.168.64.x```

Multiple k8s environment is supported by create multiple vm separately.

## Uninstall
Uninstall meridian with the following command
```shell

aoxn# curl get.xdpin.cn/meridian/iou.sh| bash -x -s uninstall
```