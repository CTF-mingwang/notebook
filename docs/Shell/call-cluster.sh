#!/bin/bash

#作者：小康
#描述：集群所有进程查看脚本
#微信公众号：小康新鲜事儿

USAGE="使用方法：sh call-cluster.sh jps or sh call-cluster.sh 'jps -l;java -version'"
if [ $# -eq 0 ];then
        echo $USAGE
        exit 1
fi
NODES=("hadoop01" "hadoop02" "hadoop03")
for NODE in ${NODES[*]};do
        echo "--------$NODE--------"
        ssh $NODE "$*"
done
echo "----------------------------------------------------------------------------------------"
echo "--------call-cluster.sh脚本执行完成!--------"
echo -e "--------微信公众号：\033[5;31m 小康新鲜事儿 \033[0m--------"
echo "--------小康老师微信：k1583223--------"
echo "--------公众号内回复【大数据】，获取系列教程及随堂文档--------"
echo "----------------------------------------------------------------------------------------"