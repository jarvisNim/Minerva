#!/bin/bash
env >> /home/jarvis/logs/cronError.log 2>&1
source ~/anaconda3/bin/activate minerenv #correct
env >> /home/jarvis/logs/cronError.log 2>&1
cd /home/jarvis/codes/Minerva/ #correct
cp ./database/Economics.db ./database/Economics.db.backup
python ./batch/economics_db.py >> /home/jarvis/logs/cronError.log 2>&1

python ./batch/sentiment.py >> /home/jarvis/logs/cronError.log 2>&1  #correct
python ./batch/kr_ecos.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/kr_marks.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/jp_ecos.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/in_ecos.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/global.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/cn_ecos.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/de_ecos.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/us_ecos.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/us_marks.py >> /home/jarvis/logs/cronError.log 2>&1

conda deactivate
