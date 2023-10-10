alias add="git add";
alias cm="git commit -m";
alias pull="git pull";
alias push="git push";
alias clone="gh repo clone";
alias status="git status";
alias co="git fetch; git checkout";
alias fetch="git fetch";

function merge() {
  CURRENT_GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD);

  echo "Merging from '$1' to '${CURRENT_GIT_BRANCH}'";

  git checkout $1;
  git pull;
  git checkout ${CURRENT_GIT_BRANCH};

  unset CURRENT_GIT_BRANCH;

  git merge $1;
}

function branch() {
  git checkout -b $1;
  git push --set-upstream origin $1;
}
