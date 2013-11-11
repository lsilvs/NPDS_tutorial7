#!/bin/bash

javac -d ./ Hello.java Server.java Client.java
sleep 1
rmiregistry &
sleep 1
java -classpath ./ -Djava.rmi.server.codebase=file:./ example.hello.Server &
sleep 1
java  -classpath ./ example.hello.Client
java  -classpath ./ example.hello.Client
clear
java  -classpath ./ example.hello.Client
