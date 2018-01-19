#!/bin/bash

mvn install:install-file -Dfile=./local_lib/axml-2.0.0-20171107.142541-2.jar -DgroupId=pxb.android  -DartifactId=axml  -Dversion=2.0.0-SNAPSHOT  -Dpackaging=jar

mvn install:install-file -Dfile=./local_lib/polyglot-2006.jar -DgroupId=ca.mcgill.sable -DartifactId=polyglot -Dversion=2006  -Dpackaging=jar

mvn install:install-file -Dfile=./local_lib/heros-1.0.0-20171106.183359-2.jar -DgroupId=heros -DartifactId=heros -Dversion=1.0.0-SNAPSHOT  -Dpackaging=jar

mvn install:install-file -Dfile=./local_lib/jasmin-3.0.0.jar -DgroupId=ca.mcgill.sable -DartifactId=jasmin -Dversion=3.0.0-SNAPSHOT  -Dpackaging=jar

mvn install:install-file -Dfile=./local_lib/java_cup.jar -DgroupId=ca.mcgill.sable -DartifactId=java_cup -Dversion=0.9.2  -Dpackaging=jar