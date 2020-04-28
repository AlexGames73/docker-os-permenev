#!/bin/bash

res=$(rm -r example-jpa-jpa)
res=$(wget https://gitlab.com/romanov73/example-jpa/-/archive/jpa/example-jpa-jpa.zip)
res=$(unzip example-jpa-jpa.zip)
res=$(rm example-jpa-jpa.zip)
cd example-jpa-jpa
./gradlew bootJar
cp build/libs/example-jpa-jpa-0.1.0-SNAPSHOT.jar dockerJar.jar
