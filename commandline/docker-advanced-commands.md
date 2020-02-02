Create docker machine from alternative boot2docker image
    
    docker-machine create --driver "virtualbox" --virtualbox-boot2docker-url https://github.com/boot2docker/boot2docker/releases/download/v18.09.8/boot2docker.iso default

alternative with skipped vtx check

    docker-machine create --driver "virtualbox" --virtualbox-no-vtx-check --virtualbox-boot2docker-url https://github.com/boot2docker/boot2docker/releases/download/v19.03.5/boot2docker.iso default


Mount windows directory to linux guest (Docker Toolbox, bash)

    docker run --rm -u root -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v //c/Users/xeno:/home jenkinsci/blueocean

list directory content of mounted volumes

    docker run --rm -it -v /:/vm-root alpine:edge ls -l /vm-root/mnt/sda1/var/lib/docker/volumes/name_of_volume # 

add shared volume

    docker-machine stop
    VBoxManage.exe sharedfolder add "default" --name "/d" --hostpath "\\?\d:\\" --automount
    docker-machine start
    docker run --rm -it -v //d:/host_d ubuntu bash

list all containers with ip

    docker ps -q | xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Name }}' | sed 's/ \// /'
