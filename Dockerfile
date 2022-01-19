FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/Agora-OS/AGORA-GANGSTERS.git /root/AgoraProfessor
#working directory 
WORKDIR /root/AgoraProfessor

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/AgoraProfessor/bin:$PATH"

CMD ["python3","-m","AgoraProfessor"]
