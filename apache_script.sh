#Functions
#Install Fun
instal()
{
 sudo yum install httpd -y
 echo "Apache Service is Installed Successfully"
 start

}
#Status Fun
sta_fun()
{
 service httpd status
  st=$?
  if [ $st -eq 0 ];then
    echo "Service Already in Running!.."
  else 
    echo "Service is Not Running"
    start
  fi
}
#Start Fun
start()
{
 service httpd start
 echo "Service is Started "
}

#Stop Fun
stop()
{
 service httpd stop
}

#Main Program
cd /var/www
check=$?
if [ $check -eq 0 ];then
  echo "Apache Installed"
   sta_fun
 else
  echo "Apache Not Installed"

  echo "If you want to install apache enter 1 else 0"
  read -p "Enter choice" n
     if [ $n -eq 1 ];then 
      instal
    else
       exit 0
    fi
fi

