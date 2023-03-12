FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt ./
COPY app.py ./
COPY pip.conf /home/root/.config/pip/pip.conf
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./app.py" ]

