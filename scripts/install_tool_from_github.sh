#!/bin/bash
#
# USAGE: $ sh install_tool_from_github.sh <tool_dir_name> <tool_github_url>
#

cd ~/galaxy/tools
git clone $2

# Delete the last line (should be </toolbox>)
sed -i '$d' ~/galaxy/config/tool_conf.xml
cat ~/galaxy/tools/$1/tool_conf.xml >> ~/galaxy/config/tool_conf.xml
echo '</toolbox>' >> ~/galaxy/config/tool_conf.xml
