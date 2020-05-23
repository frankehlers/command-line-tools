#### create a new repository on the command line

    echo "# my-project" >> README.md
    git init
    git add README.md
    git commit -m "initial commit"
    git remote add origin https://github.com/username/my-project.git
    git push -u origin master

#### or push an existing repository from the command line

    git remote add origin https://github.com/username/my-project.git
    git push -u origin master


#### git config
    git config --global --add color.ui true # enable colored output

#### delete fully merged branch
    git branch -d branchname

    git commit --allow-empty -m "Trigger notification"
