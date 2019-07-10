# freenas_network_limit

these scripts are used by cronjob and limiting network usage for cifs in this case, you can simply edit the bandwidth limit and ports to your usecase

example cron configuration:
```
0       7-17    *       *       mon,tue,wed,thu,fri     root    PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/root/bin" /sbin/limit_cifs_25Mbit.sh > /dev/null
0       18-23   *       *       *       root    PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/root/bin" /sbin/limit_cifs_500Mbit.sh > /dev/null
0       0-6     *       *       *       root    PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/root/bin" /sbin/limit_cifs_500Mbit.sh > /dev/null
```
it will set the bandwidth limit each hour
