ss=$1
mv /etc/shadowsocksr/user-config.json /etc/shadowsocksr/user-config.json.b
awk -v portnum=$ss '{if( index($0,"server_port")==0){print $0}else{print "    \"server_port\":",portnum,","}}' /etc/shadowsocksr/user-config.json.b > /etc/shadowsocksr/user-config.json
/etc/init.d/ssr restart