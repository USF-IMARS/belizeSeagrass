# Workflow
* Navigate to project directory ~/pgs/belizeSeagrass or

## git setup
Modify the first two lines and run in a bash terminal:

```bash
NAME="Your Name Here"
EMAIL="your@email.com"

git config --global user.name "$NAME"
git config --global user.email "$EMAIL"

[ -f ~/.ssh/id_ed25519.pub ] || \
    ssh-keygen -t ed25519 -C "$EMAIL" -f ~/.ssh/id_ed25519 -N ""

gh auth login
```