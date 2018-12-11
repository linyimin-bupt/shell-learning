case "$1" in
  "--start") 
    if [[ -n $2 && -n $3 ]]
       then
        account=$2
        passwd=$3
        curl -d "DDDDD=${account}&upass=${passwd}&0MKKey=" '10.3.8.211' > /dev/null
        if [ $? -eq 0 ]
          then
            echo "登录网关成功"
        else
          echo "登录网关失败"
        fi
    else
      echo "Usage: bash ./online-and-offline.sh --start [account] [password]"
    fi
  ;;
  "--stop")
    curl 10.3.8.211/F.htm > /dev/null
    if [ $? -eq 0 ]
      then
        echo "退出网关成功"
    else
      echo "退出网关失败"
    fi
  ;;
  "")
    echo "Usage:"
    echo "登录网关: bash ./online-and-offline.sh --start [account] [password]"
    echo "退出网关: bash ./online-and-offline.sh --stop"
  ;;
esac

