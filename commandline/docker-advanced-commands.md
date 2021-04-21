Create docker machine from alternative boot2docker image
(different images can be found here: https://github.com/boot2docker/boot2docker/releases)
    
    docker-machine create --driver "virtualbox" --virtualbox-boot2docker-url https://github.com/boot2docker/boot2docker/releases/download/v18.09.8/boot2docker.iso default
    # alternative with skipped vtx check
    docker-machine create --driver "virtualbox" --virtualbox-no-vtx-check --virtualbox-boot2docker-url https://github.com/boot2docker/boot2docker/releases/download/v18.09.8/boot2docker.iso default


Mount windows directory to linux guest (Docker Toolbox, bash)

    
    docker run --rm -u root -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v //c/Users/xeno:/home jenkinsci/blueocean
    # if using bash terminal in windows 
    docker run --rm -u root -p 8080:8080 -v //var/run/docker.sock:/var/run/docker.sock -v //c/Users/xeno:/home jenkinsci/blueocean    

list directory content of mounted volumes

    docker run --rm -it -v /:/vm-root alpine:edge ls -l /vm-root/mnt/sda1/var/lib/docker/volumes/name_of_volume # 

add shared volume

    docker-machine stop
    VBoxManage.exe sharedfolder add "default" --name "/d" --hostpath "\\?\d:\\" --automount // not working on powershell
    VBoxManage.exe sharedfolder add "default" --name "d" --hostpath "\\?\d:\" --automount
    docker-machine start
    docker run --rm -it -v //d:/host_d ubuntu bash

list all containers with ip

    docker ps -q | xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Name }}' | sed 's/ \// /'

delete all containers with status 'exited'

    docker rm $(docker ps -a -q -f status=exited)

Mount windows directory in linux container (Docker for Windows)

    docker run --rm -v /mnt/c/Users/xeno:/data alpine ls /data
    docker run --rm -v C:\Users:/data alpine ls /data
    
Run interactive ubuntu container 

    docker run -it -d --name myUbuntu ubuntu bash
    
Enter running ubuntu container

    docker exec -it myUbuntu bash
    

   
