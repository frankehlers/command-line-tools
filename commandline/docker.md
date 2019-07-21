Mount windows directory to linux guest (Docker Toolbox, bash)

  docker run --rm -u root -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v //c/Users/xeno:/home jenkinsci/blueocean

list directory content of mounted volumes

  docker run --rm -it -v /:/vm-root alpine:edge ls -l /vm-root/mnt/sda1/var/lib/docker/volumes/name_of_volume # 

add shared volume

  docker-machine stop
  VBoxManage.exe sharedfolder add "default" --name "/d" --hostpath "\\?\d:\\" --automount   # from windows cmd
  docker-machine start
  docker run --rm -it -v //d:/host_d ubuntu bash
