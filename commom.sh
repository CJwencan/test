#!/bin/bash
source common.cfg

#调度器开始日期
export DATA_DATE=$1
FILE_NAME=$0

#获取第一天
function get_FirstDate(){
    echo ${1:0:6}01
}

#获取前或后 N 天    # get_date 20140815 -1
function get_date(){
    echo `date -d "${1%%-*} ${2} days" "+%Y%m%d"`
}
