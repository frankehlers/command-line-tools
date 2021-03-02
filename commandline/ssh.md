Generate ssh keys from commandline no passphrase and no console output

Linux (bash)

    ssh-keygen -t rsa -N '' -f ubuntu_rsa <<< y 2>&1 >/dev/null

Windows 10 (powershell)

    echo y | ssh-keygen.exe -t rsa -N '""' -f ubuntu_rsa | Out-Null
