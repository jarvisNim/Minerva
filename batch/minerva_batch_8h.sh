#!/bin/bash
#conda activate rapids WRONG
source ~/anaconda3/bin/activate minerenv #correct
#python Documents/my_python_file_name.py WRONG SEPARATLY GO TO FOLER WHTAN EXECUTE EITH python
cd /home/jarvis/codes/Minerva/ #correct
python ./batch/sentiment.py >> /home/jarvis/logs/cronError.log 2>&1  #correct
python ./batch/s_korea.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/china.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/japan.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/india.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/germany.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/usa.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/global.py >> /home/jarvis/logs/cronError.log 2>&1
python ./batch/economics_db.py >> /home/jarvis/logs/cronError.log 2>&1
conda deactivate
