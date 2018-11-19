# java
A docker image with an [openjdk](https://openjdk.java.net/) JRE with some tweaks:

* Opens up for JMX remoting
* Opens up the `java.base/java.lang` packages
* Work-around for TLSv1.3 [bug](https://bugs.java.com/bugdatabase/view_bug.do?bug_id=JDK-8213202) - by disabling it.
* Sets min mem variable `-Xms` to `128m`
* Sets `MaxRAMPercentage` to `90%` 
