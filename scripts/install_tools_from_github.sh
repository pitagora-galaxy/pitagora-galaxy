#!/bin/bash

sed -i '$d' ~/galaxy/config/tool_conf.xml
echo '  <label id="additional_tools" text="Additional Tools" />' >> ~/galaxy/config/tool_conf.xml
echo '</toolbox>' >> ~/galaxy/config/tool_conf.xml

sh install_tool_from_github.sh download_ref https://github.com/pitagora-galaxy/download_ref.git
sh install_tool_from_github.sh count-reads https://github.com/ryotas/count-reads.git

