# Pitagora-Galaxy 0.3.2

## Installation

The scripts are tested on Ubuntu 14.04.4.

* AWS: ubuntu-trusty-14.04-amd64-server-20160114.5 (ami-a21529cc)

Install OS Packages, Python, Galaxy.
```
$ sh script/01_install.sh
```

Configure Galaxy installation (database, disks, proxy, etc.)
```
$ sh script/02_config.sh
```

Install Galaxy tools from ToolShed or from GitHub.
```
$ sh script/03_tools.sh
```

Import Pitagora's workflows.
```
$ sh script/04_workflows.sh
```

## ワークフロー

* ./workflows に置いてあります。
* 各ワークフローの詳細は [Wiki](http://wiki.pitagora-galaxy.org/wiki/index.php/Workflows) をご覧ください。
