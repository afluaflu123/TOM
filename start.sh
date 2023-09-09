if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/afluaflu123/TOM.git /TOM-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TOM
fi
cd /TOM
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
