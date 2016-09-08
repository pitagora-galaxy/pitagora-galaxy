#/bin/bash

# INSTALL PYTHON PACKAGES
sudo curl -kL https://bootstrap.pypa.io/get-pip.py | python
pip install pycrypto six

# INSTALL TOOLS FROM THIS REPOSITORY
sed -i '$d' ~/galaxy/config/tool_conf.xml
echo '  <label id="additional_tools" text="Additional Tools" />' >> ~/galaxy/config/tool_conf.xml
echo '</toolbox>' >> ~/galaxy/config/tool_conf.xml

# INSTALL TOOLS FROM OTHER GITHUB REPOSITORIES
sh install_tools_from_github.sh

# INSTALL TOOLS FROM TOOL SHED
sh install-tools.sh $1

# SET SAMTOOLS PATH
echo 'export PATH=$HOME/tool_dependency/samtools/0.1.19/devteam/package_samtools_0_1_19/95d2c4aefb5f/bin:$PATH' >> ~/.profile
