FROM python:3.7-slim

WORKDIR /usr/src/app
COPY . .
RUN pip install -i https://mirrors.aliyun.com/pypi/simple -r requirements.txt

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]