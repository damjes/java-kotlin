run: projekt/MainClass.class projekt/Pomnoz.class
	java projekt.MainClass

projekt/MainClass.class: projekt/MainClass.java projekt/Pomnoz.class
	javac projekt/MainClass.java

projekt/Pomnoz.class: projekt/Pomnoz.kt
	kotlinc projekt/Pomnoz.kt

.PHONY: run

clean:
	rm projekt/*.class
	rm -r META-INF