if [ $1 == "up" ]
then
  scp -r $2 hetzner:/home/michiel/uploads
elif [ $1 == "down" ] 
then
  scp -r hetzner:/home/michiel/uploads/$2 .
elif [ $1 == "rm" ] 
then
  ssh hetzner rm -r /home/michiel/uploads/$2
elif [ $1 == "ls" ] 
then
  ssh hetzner ls /home/michiel/uploads/$2
elif [ $1 == "tree" ] 
then
  ssh hetzner tree /home/michiel/uploads/$2
fi
