run: projekt/MainClass.class projekt/Pomnoz.class
	java -cp . projekt.MainClass

projekt/MainClass.class: projekt/MainClass.java projekt/Pomnoz.class
	javac -cp . projekt/MainClass.java

projekt/Pomnoz.class: projekt/Pomnoz.kt projekt/Dodaj.class
	kotlinc -cp . projekt/Pomnoz.kt

projekt/Dodaj.class: projekt/Dodaj.java
	javac projekt/Dodaj.java

.PHONY: run

clean:
	rm projekt/*.class
	rm -r META-INF