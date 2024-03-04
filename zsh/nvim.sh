function nvim-reinstall() {
  # Clean the current config and caches out.
  rm -rfv ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim;

  # Download a new copy of the NVIM config.
  gh repo clone jgttech/nvim ${HOME}/.config/nvim;

  nvim;
}
