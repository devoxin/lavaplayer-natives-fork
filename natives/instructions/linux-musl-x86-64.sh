docker run --rm -it alpine sh

apk update && apk upgrade
apk add git cmake build-base autoconf openjdk11 wget libtool

git clone https://github.com/devoxin/lavaplayer-natives-fork
cd lavaplayer-natives-fork

# DOWNGRADE libmpg123 TO 1.31.3

chmod +x ./gradlew
./gradlew load
./gradlew compileNatives