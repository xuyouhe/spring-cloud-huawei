#!/bin/bash

JAR=canary-consumer-feign-hytrix-1.3.1-Greenwich.jar
if [ ! -e $JAR ]; then
    JAR=target/$JAR
    if [ -e application.yaml ]; then
        cp application.yaml ./target/
    fi
fi
java $CMDVAR -jar ./$JAR