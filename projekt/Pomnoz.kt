package projekt

import projekt.Dodaj.dodaj

class Pomnoz {
    companion object {
        @JvmStatic fun pomnoz(a: Int, b: Int): Int {
            var wynik = 0
            for (i in 1..b) {
                wynik = dodaj(wynik, a)
            }

            return wynik
        }
    }
}