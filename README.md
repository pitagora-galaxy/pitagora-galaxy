# Pitagora-Galaxy 0.3.2

## Installation

The scripts are tested on Ubuntu 14.04.4.
* AWS: ubuntu-trusty-14.04-amd64-server-20160114.5 (ami-a21529cc)

Install Git and clone this repository.
* Set MySQL password to 'galaxy' when its prompt asks.
```
$ sudo apt-get update
$ sudo apt-get install -y git
$ git clone -b release_0.3.3 https://github.com/pitagora-galaxy/pitagora-galaxy.git
$ cd pitagora-galaxy
```

Install OS Packages, Python, Galaxy.
```
$ cd scripts
$ sh 01_install.sh
..
serving on http://127.0.0.1:8080
(Ctl + C to exit)
```

Configure Galaxy installation (database, disks, proxy, etc.)
```
$ cd scripts
$ sh 02_config.sh
..
/dev/sdb is entire device, not just one partition!
Proceed anyway? (y,n) y
..
/dev/sdc is entire device, not just one partition!
Proceed anyway? (y,n) y
..
Miniconda2 will now be installed into this location:
/home/ubuntu/miniconda2
[/home/ubuntu/miniconda2] >>> Enter
..
Do you wish the installer to prepend the Miniconda2 install location
to PATH in your /home/ubuntu/.bashrc ? [yes|no]
[no] >>> no
```

Install Galaxy tools from ToolShed or from GitHub.
```
$ cd scripts
$ sh 03_tools.sh
```

Import Pitagora's workflows.
```
$ cd scripts
$ sh 04_workflows.sh
```

## Workflows

* For the details of workflows, see our [wiki](http://wiki.pitagora-galaxy.org/wiki/index.php/Workflows).
