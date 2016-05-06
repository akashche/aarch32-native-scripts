#!/bin/bash

rm -rf /home/$USER/tmp/JTreport-hotspot
rm -rf /home/$USER/tmp/JTwork-hotspot

java -jar /home/$USER/jtreg/lib/jtreg.jar \
		-jdk:/usr/lib/jvm/java-1.8.0-openjdk \
		-r:/home/$USER/tmp/JTreport-hotspot \
		-w:/home/$USER/tmp/JTwork-hotspot \
		-v1 \
		-a \
		-ovm \
		-ignore:quiet \
		/home/$USER/jdk8u/hotspot/test

