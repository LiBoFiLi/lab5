# ���������� ������� ����� Ubuntu
FROM ubuntu:20.04

# ������������� ����������� �����������
RUN apt-get update && apt-get install -y \
    g++ \
    cmake

# �������� �������� ��� � ���������
COPY . /app

# ������������� ������� ����������
WORKDIR /app

# ����������� ����������
RUN g++ -o myapp lab5/lab5.cpp

# ��������� ������� ��� ������� ����������
CMD ["./myapp"]