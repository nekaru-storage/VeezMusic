FROM narima/base:bull

RUN apt-get -qq -y install \
    git curl ffmpeg

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs \
    npm install -g npm@7.23.0

RUN mkdir /app/
COPY . /app/
WORKDIR /app/

RUN python3 -m pip install -U -r requirements.txt
CMD python3 main.py
