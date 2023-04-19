FROM python:3.8-alpine AS builder

WORKDIR /app

# Tạo ra biến môi trường tên là PORT với giá trị 5555
ENV PORT 5555

COPY . .

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]

CMD ["app.py"]

FROM builder as dev-envs