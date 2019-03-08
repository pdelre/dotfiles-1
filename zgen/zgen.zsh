source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then

  # specify plugins here

  # If zsh-syntax-highlighting is bundled after zsh-history-substring-search,
  # they break, so get the order right.
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-history-substring-search

  # Load more completion files for zsh from the zsh-lovers github repo.
  zgen load zsh-users/zsh-completions src

  # Add Fish-like autosuggestions to your ZSH.
  zgen load zsh-users/zsh-autosuggestions

  # theme
  zgen load denysdovhan/spaceship-prompt spaceship

  # generate the init script from plugins above
  zgen save
fi
