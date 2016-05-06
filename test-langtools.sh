#!/bin/bash

rm -rf /home/$USER/tmp/JTreport-langtools
rm -rf /home/$USER/tmp/JTwork-langtools

java -jar /home/$USER/jtreg/lib/jtreg.jar \
		-jdk:/usr/lib/jvm/java-1.8.0-openjdk \
		-r:/home/$USER/tmp/JTreport-langtools \
		-w:/home/$USER/tmp/JTwork-langtools \
		-v1 \
		-a \
		-ovm \
		-ignore:quiet \
		/home/$USER/jdk8u/langtools/test

