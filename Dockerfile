FROM python:3.6

RUN apt-get update
RUN apt-get install sqlite3
RUN pip install --upgrade pip
RUN pip install pandas requests
ADD bashrc /root/.bashrc
WORKDIR /home/host 
CMD ["/bin/bash"]
