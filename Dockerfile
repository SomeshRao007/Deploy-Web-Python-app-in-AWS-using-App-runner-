FROM public.ecr.aws/amazonlinux/amazonlinux:latest
RUN yum install python39 -y && curl -O https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py && yum update -y
# RUN mkdir -p /app
# COPY . /app
# WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 8080
CMD ["python3", "app.py"]



# FROM python:3.9-slim
# RUN mkdir -p /app
# COPY . /app
# WORKDIR /app
# RUN pip3 install -r requirements.txt
# CMD ["python3", "app.py"]
# EXPOSE 8080
