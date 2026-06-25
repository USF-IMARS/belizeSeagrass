# Workflow
* Login to [IMaRS JupyterHub](https://manglillo.marine.usf.edu)
* Navigate to project directory `~/pgs/belizeSeagrass`
* Now you can:
  * Open research notebooks (`.ipynb` files) using left panel
  * Run bash commands from `Terminal`
  * To get started try:
    * `test_gee.ipynb` jupyter research notebook
* This project can be deployed to a website [usf-imars.github.io/belizeSeagrass/](https://usf-imars.github.io/belizeSeagrass/) using by running `make publish` in a bash terminal.


--------------------------------------------------------------

# Technical Details

## (optional) git setup
Modify the first two lines and run in a bash terminal:

```bash
NAME="Your Name Here"
EMAIL="your@email.com"

git config --global user.name "$NAME"
git config --global user.email "$EMAIL"

[ -f ~/.ssh/id_ed25519.pub ] || \
    ssh-keygen -t ed25519 -C "$EMAIL" -f ~/.ssh/id_ed25519 -N ""

gh auth login                                       # follow prompts
gh auth refresh -h github.com -s admin:public_key   # follow prompts
gh ssh-key add ~/.ssh/id_ed25519.pub --title "$(hostname)"
```


## (git admin only) jupytext+qmd for pretty git diffs

One-time setup after cloning repo:

```bash
# Restore .ipynb from .qmd after cloning w/ jupytext
jupytext *.qmd --to ipynb
```


### before every commit

```bash
make sync  # generates .qmd files from .ipynb
```

