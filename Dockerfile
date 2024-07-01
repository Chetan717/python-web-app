FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY devops /app/devops

RUN apt-get update && \
    apt-get install -y python3 python3-pip 
    
RUN pip install -r requirements.txt
WoRKDIR /app/devops
 
ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]




