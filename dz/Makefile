JAVAS = $(wildcard *.java)
CLASSES = $(subst .java,.class,$(JAVAS))
SOURCE = dz.tgz
JARS = DazzleStar.jar
SHIPS = $(SOURCE) $(JARS)
DEST = durgadas.com:/http/durgadas.com/sebhc/dazzlestar
# DEST=/var/www/html/sebhc/mms89/dazzlestar

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

release: # jar src
	rsync -Wuv DazzleStar.jar ../jar

ship: release # jar src
	rsync -Wuv ../jar/*.jar README $(DEST)
	rsync -Wuv docs/dz*.html $(DEST)
	rsync -Wuv ../disas/dz-out.* $(DEST)/disas

docs/About.html: __FRC__
	sed -e 's/\$$(date)/$(shell date)/' docs/About.html.in >$@

dz.tgz: __FRC__
	cd ..; tar -czf dz/dz.tgz dz/Makefile \
		dz/LICENSE dz/README dz/INSTALL \
		dz/*.java 

__FRC__:
