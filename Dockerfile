FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY devops /app/devops

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv
    
RUN python3 -m venv venv
ENV PATH="/app/venv/bin:$PATH"

RUN pip install -r requirements.txt
WORKDIR /app/devops
 
ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]




