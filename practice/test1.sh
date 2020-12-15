echo "enter month";
read month;
case $month in 
1|jan)
    echo "jan"
    ;;
2) 
    echo "feb"
    ;;
*)
    echo "defualt"
esac