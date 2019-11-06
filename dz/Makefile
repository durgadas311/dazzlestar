JAVAS = $(wildcard *.java)
CLASSES = $(subst .java,.class,$(JAVAS))
SOURCE = dz.tgz
JARS = DazzleStar.jar
SHIPS = $(SOURCE) $(JARS)

all: $(CLASSES)

%.class: %.java
	javac $?

jar: $(JARS)

src: $(SOURCE)

DazzleStar.jar: all
	echo "Main-Class: DazzleStar" >Manifest.txt
	jar -cmf Manifest.txt DazzleStar.jar *.class \
		docs/*.html

dz.tgz: __FRC__
	cd ..; tar -czf dz/dz.tgz dz/Makefile \
		dz/LICENSE dz/README dz/INSTALL \
		dz/*.java 

__FRC__:
