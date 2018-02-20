#!/bin/bash

if [[ ! -d "/home/$USER" ]]; then
  echo "Will not run script as non-standard user."
  exit 1
fi

origdir=$(pwd)
cd $(dirname "$0")
sudo docker build -t pycon . > /dev/null
cd $origdir
if [[ $# -ne 0 ]]; then
  printf '#!/bin/bash\n' > .pyconrun.sh
  echo "$*" >> .pyconrun.sh
  chmod +x .pyconrun.sh
fi
sudo docker run -it --rm -v "$(cd /home/$USER;pwd)":/home/host -v /var:/hostvar --name pycon pycon
rm -f .pyconrun.sh
