echo "enter"
read phone
if [[$phone =~ ^[0-9]{10}$]]
then 
    echo "correct"
else
    echo "incorrect"
fi