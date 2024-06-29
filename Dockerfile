# Используем базовый образ Ubuntu
FROM ubuntu:20.04

# Устанавливаем необходимые зависимости
RUN apt-get update && apt-get install -y \
    g++ \
    cmake

# Копируем исходный код в контейнер
COPY . /app

# Устанавливаем рабочую директорию
WORKDIR /app

# Компилируем приложение
RUN g++ -o myapp lab5/lab5.cpp

# Указываем команду для запуска приложения
CMD ["./myapp"]