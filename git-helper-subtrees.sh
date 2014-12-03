################
## curl --silent https://gist.githubusercontent.com/andypotanin/e3db79c92f911d040c16/raw/git-subtree-helper.sh > /etc/profile.d/git-subtree-helper.sh
## chmod +x /etc/profile.d/git-subtree-helper.sh
## source /etc/profile.d/git-subtree-helper.sh
##
##
## /usr/local/git/bin
##
################

## List all Subtrees by looking through log
##
## @source
getGitSubtrees() {
  git log | grep git-subtree-dir | tr -d ' ' | cut -d ":" -f2 | sort | uniq
}

##
##
## git subtree pull --prefix=vendor/plugins/wp-cluster git@github.com:UsabilityDynamics/wp-cluster.git master --squash
##
## makeSubtree  UsabilityDynamics/wp-cluster vendor/plugins/wp-cluster
## makeSubtree vendor/plugins/wp-veneer UsabilityDynamics/wp-veneer
## makeSubtree vendor/plugins/wp-elastic UsabilityDynamics/wp-elastic
## makeSubtree vendor/plugins/wp-vertical-edm UsabilityDynamics/wp-vertical-edm
##
## makeSubtree vendor/themes/wp-festival-2 DiscoDonniePresents/wp-festival v2.0
##
##
makeSubtree() {

  _GIT=$1
  _PATH=$2
  _BRANCH=${3-master}
  
  rm -rf ${_PATH}
  git add ${_PATH} --all
  git commit -m 'temporary, adding subtree... [ci skip]'
  git subtree add --prefix=${_PATH} git@github.com:${_GIT}.git ${_BRANCH} --squash
  echo "Done."

}

##
## pullSubtree vendor/themes/wp-festival-2 DiscoDonniePresents/wp-festival v2.0
##
## 
pullSubtree() {

  _GIT=$1
  _PATH=$2
  _BRANCH=${3-master}
  
  git subtree pull --prefix=${_PATH} git@github.com:${_GIT}.git ${_BRANCH} --squash --message "Pulling subtree..."

}
##
## pullSubtree vendor/themes/wp-festival-2 DiscoDonniePresents/wp-festival v2.0
##
## 
pushSubtree() {

  _GIT=$1
  _PATH=$2
  _BRANCH=${3-master}
  
  git subtree push --prefix=${_PATH} git@github.com:${_GIT}.git ${_BRANCH} --squash --message "Updating subtree..."

}
