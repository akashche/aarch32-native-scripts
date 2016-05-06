#!/bin/bash

rm -rf /home/$USER/tmp/JTreport-zip
rm -rf /home/$USER/tmp/JTwork-zip

java -jar /home/$USER/jtreg/lib/jtreg.jar \
		-jdk:/usr/lib/jvm/java-1.8.0-openjdk \
		-r:/home/$USER/tmp/JTreport-zip \
		-w:/home/$USER/tmp/JTwork-zip \
		-v1 \
		-a \
		-ovm \
		-ignore:quiet \
		/home/$USER/jdk8u/jdk/test/java/util/zip \
		/home/$USER/jdk8u/jdk/test/java/util/jar

