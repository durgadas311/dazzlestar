JAVAS = $(wildcard *.java)
CLASSES = $(subst .java,.class,$(JAVAS))
SOURCE = dz.tgz
JARS = DazzleStar.jar Analyzer.jar
SHIPS = $(SOURCE) $(JARS)

all: $(CLASSES)

%.class: %.java
	javac $?

jar: $(JARS)

src: $(SOURCE)

DazzleStar.jar: all docs/About.html
	echo "Main-Class: DazzleStar" >Manifest.txt
	jar -cmf Manifest.txt DazzleStar.jar *.class \
		docs/*.html

Analyzer.jar: all
	echo "Main-Class: Analyzer" >Manifest.txt
	jar -cmf Manifest.txt Analyzer.jar Analyzer.class \
		Memory.class Z80*.class

ship: # jar src
	rsync -Wuv $(JARS) README \
		durgadas.com:/http/durgadas.com/sebhc/dazzlestar
	rsync -Wuv docs/*.html \
		durgadas.com:/http/durgadas.com/sebhc/dazzlestar
	rsync -Wuv DazzleStar.jar ../jar

docs/About.html: __FRC__
	sed -e 's/\$$(date)/$(shell date)/' docs/About.html.in >$@

dz.tgz: __FRC__
	cd ..; tar -czf dz/dz.tgz dz/Makefile \
		dz/LICENSE dz/README dz/INSTALL \
		dz/*.java 

__FRC__:
