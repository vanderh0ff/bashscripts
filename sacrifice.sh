#!/bin/bash
# written by Matthew Vander Hoff
# for use by any one who needs their demo to go smoothly 


echo "how important is this demo?" #give desperate users their options
echo "1) a chicken will do"
echo "2) we need at least a sheep"
echo "3) the demo gods are demanding a cow"
echo "4) as we are open source a gnu will be sacrificed"
echo "5) we need to kill a dragon~!"
echo "6) the demo gods requrie virgin blood"

read sacrifice # see what the poor sob needs to get his demo working

case $sacrifice if # case statment, because no one wants 6 if statmnts 
    1) $sacrifice = 'chicen';;
    2) $sacrifice = 'sheep';;
    3) $sacrifice = 'cow';;
    4) $sacrifice = 'gnu';;
    5) $sacrifice = 'dragon';;
    6) $sacrifice = 'virgin';;
esac



#clear
#cowsay "take me demo gods"
#sleep 3
#clear
#cowsay "i am here to appease you"
#sleep 3
#clear
#cowsay -d "i am le dead"
#sleep 3
#clear
