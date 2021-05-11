# Checking git version
git --version

# View all of your settings and where they are coming from
git config --list --show-origin

# Configure username and email
git config --global user.name "Your name"
git config --global user.email "youremail@domain.com"

# Create a .gitignore file

# Initializing a repository
git init

# Start tracking and versioning files
git add .
git commit -m "Initial Node.js project setup"

# Cloning an existing repository
git clone https://github.com/useraccount/repository newRepositoryName

# Collaboration

# Dev. A : Save changes to the local master branch
git checkout master
git commit -a -m "..."
git push

# Dev. B: Create and share the new branch 
git checkout -b newfeature
git commit -a -m "..."
git push origin newfeature

# Dev. C: Merge the new branch
git pull
git merge newfeature

# History
git log --graph --decorate --abbrev-commit --all --pretty=oneline