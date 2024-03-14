FROM public.ecr.aws/amazonlinux/amazonlinux:latest
RUN yum install python39 -y && curl -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py && yum update -y
COPY . /app
WORKDIR 
RUN pip3 install -r requirements.txt
CMD python3 app.py
EXPOSE 8080
