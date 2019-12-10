JAVAS = $(wildcard *.java)
CLASSES = $(subst .java,.class,$(JAVAS))
SOURCE = dz.tgz
JARS = DazzleStar.jar
SHIPS = $(SOURCE) $(JARS)
DEST = durgadas.com:/http/durgadas.com/sebhc/dazzlestar
DEST2 = durgadas.com:/http/durgadas.com/dazzlestar
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
	rsync -Wuv docs/dz*.html dzrc.example $(DEST)
	rsync -Wuv www/* ../dz*.png $(DEST2)

ship2:
	rsync -Wuv ../disas/dz-out.* ../disas/dz-out2.* \
		../disas/dzi-out2.* \
		../disas/dzxterm.asm ../disas/dzh19.asm \
		$(DEST)/disas
	rsync -Wuv ../disas/zout/dz-out2.cim $(DEST)/disas/dz2.com
	rsync -Wuv ../disas/zout/dzi-out2.cim $(DEST)/disas/dzi2.com

docs/About.html: __FRC__
	sed -e 's/\$$(date)/$(shell date)/' docs/About.html.in >$@

dz.tgz: __FRC__
	cd ..; tar -czf dz/dz.tgz dz/Makefile \
		dz/LICENSE dz/README dz/INSTALL \
		dz/*.java 

__FRC__:
