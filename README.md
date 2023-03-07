# case
JustForLearn

из Dockerfile создаётся image timer, в котром работает python скрипт timer.py, который в свою очередь генерирует файл index.html и обновляет его содержимое раз в секунду

запускаются контейнеры timer и apache с подключением общего volume. контейнер с apache использует файл index.html обновляемый контейнером timer
