
https://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh
~~~
vi install-redhat-td-agent2.sh
chmod 744 install-redhat-td-agent2.sh
./install-redhat-td-agent2.sh
/usr/sbin/td-agent-gem install fluent-plugin-elasticsearch
sudo vi /etc/td-agent/td-agent.conf
/etc/init.d/td-agent start
tail -500 /var/log/td-agent/td-agent.log
~~~