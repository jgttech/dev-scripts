function scripts-push() {
  timestamp=$(date +%F\ %T)
  cwd=$(pwd)

  cd ${HOME}/.scripts
  git add .;
  git commit -m "${timestamp} - UPDATES";
  git push;

  cd $cwd
  unset cwd
}
