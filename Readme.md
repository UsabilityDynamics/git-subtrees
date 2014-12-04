git-subtrees
============

This script finds git repos within the given path that have unstaged changes and/or unpushed commits (in their currently checked-out branch).


Installation
------------

```sh
curl --silent https://raw.githubusercontent.com/UsabilityDynamics/git-subtrees/master/git-subtrees > /usr/local/bin/git-subtrees && chmod +x /usr/local/bin/git-subtrees
```

Usage
-----

```sh
git subtrees
```

```sh
git subtrees update
```

Sample Output
-------------

```
Listing Git subtrees.
 - wp-content/plugins/wp-crm
 - wp-content/plugins/wp-github-updater
 - wp-content/plugins/wp-invoice
 - wp-content/plugins/wp-network
 - wp-content/plugins/wp-pagespeed
 - wp-content/plugins/wp-php-console
 - wp-content/plugins/wp-property
 - wp-content/plugins/wp-repository
 - wp-content/plugins/wp-veneer
 - wp-content/themes/wp-kiwi
 - wp-content/themes/wp-splash-v1.0
 - wp-content/themes/wp-splash-v2.0
```   
