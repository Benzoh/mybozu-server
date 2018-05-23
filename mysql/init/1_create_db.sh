cd /docker-entrypoint-initdb.d/

user='root'
pass='root'

charset='utf8mb4'
collate='utf8mb4_general_ci'

echo "create db:mybozu..."
mysql -u $user -p$pass -e "create database mybozu;"
mysql -u $user -p$pass -e "ALTER DATABASE mybozu CHARACTER SET = $charset COLLATE = $collate;"

echo "create db:mybozu_development..."
mysql -u $user -p$pass -e "create database mybozu_development;"
mysql -u $user -p$pass -e "ALTER DATABASE mybozu_development CHARACTER SET = $charset COLLATE = $collate;"

echo "create db:mybozu_test..."
mysql -u $user -p$pass -e "create database mybozu_test;"
mysql -u $user -p$pass -e "ALTER DATABASE eigdailyschedules_test CHARACTER SET = $charset COLLATE = $collate;"

echo "done."