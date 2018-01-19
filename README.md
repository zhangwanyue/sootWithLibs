## How to run this project:

#### project in github:
https://github.com/Sable/soot

#### the jdk version needed in this project:
I am using: java version "1.8.0_161"
official recommend using java >= 1.8.0_144

#### want to build soot with idea? read this:
https://github.com/Sable/soot/wiki/Building-Soot-with-IntelliJ-IDEA

#### some dependent project of it(if you do not want to compile these project yourself, you can use the compiled jars in local_lib dir):
https://github.com/Sable/jasmin
https://github.com/Sable/heros
https://github.com/Sable/axml
https://github.com/Sable/java_cup
https://github.com/Sable/polyglot

#### install dependent jars in local_lib, run this(you need to install mvn first):
`./installJar.sh`

#### Ok, now you can have a try with this little test:
the original file is test/Foo.java, we want to transfer it into jimple code.
Edit your Run/Debug configurations:
* Main class: `soot.Main`
* Program arguments: `-cp . -pp -f J Foo`
    using `. -pp`, you may encounter an Exception, there are some ways to resolve it
    1. set your JAVA_HOME appropriate, or add the following to `~/.bashrc`
    ```
    # set soot classpath
    export CLASSPATH=.:${JAVA_HOME}/jre/lib/rt.jar:${JAVA_HOME}/jre/lib/jce.jar
    ```
    2. using `-cp .:/xxx/bin/jdk1.8.0_161/jre/lib/rt.jar -f J Foo` instead.
    3. (not recommended)using `-allow-phantom-refs -cp . -f J Foo` instead.
    * you can find more details here:
    https://github.com/Sable/soot/wiki/Introduction:-Soot-as-a-command-line-tool
   
* Working directory: `/xxx/soot/test`(mine is `/home/vera/IdeaProjects/soot/test`)
* after you run, result can be found at xxx/test/sootOutput/Foo.jimple. 
Congratulations, you have transfered java source code to jimple code!

#### how to compile this project:
run this:
`mvn clean compile package`
and The resulting jar is saved as `target/sootclasses-trunk.jar`
now you can use this command to test your compiled jar:
`java -cp sootclasses-trunk-jar-with-dependencies.jar soot.Main -cp . -pp -f J Foo`

## More information for you:

#### want to get the latest project youself? try this:
`git clone https://github.com/Sable/soot.git -b develop`

#### the version of this project:
this project is cloned from develop branch in 2018/1/18, the version of it is 3.0.0-SNAPSHOT(the version can be found in pom.xml)
you can also download 3.0.0-SNAPSHOT.jar from nexus repository(see the location below).

#### dependent jars:
you can find dependent jars in nexus repository, those nightly-build jars may help you.
http://soot-build.cs.uni-paderborn.de/nexus/repository/soot-snapshot/
* ATTENTION: 
jasmin-3.0.0 dependent on java_cup.jar(see the pom.xml of jasmin-3.0.0 for detail), but java_cup.jar have not be compiled in jasmin-3.0.0.jar, so you need to add this to soot project's pom.xml(It really stuck me for a long time!!!)
```
<dependency>
	<groupId>ca.mcgill.sable</groupId>
	<artifactId>java_cup</artifactId>
	<version>0.9.2</version>
</dependency>
```
we have prepared you java_cup.jar in local_lib, which can also be found in `https://github.com/Sable/jasmin` project's /libs file.
you can also compile java_cup.jar yourself using `https://github.com/Sable/java_cup` project.

#### these guides may help you with this big project:
https://github.com/Sable/soot/wiki
http://www.brics.dk/SootGuide/

