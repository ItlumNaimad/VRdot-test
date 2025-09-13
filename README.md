# Propozycja tematu pracy inżynierskiej

**Tytuł roboczy:** Implementacja systemu rozgrywki opartej na percepcji audio w środowisku wirtualnej rzeczywistości

**Autor:** Damian Skonieczny
**Kierunek:** Informatyka Stosowana
**Proponowany promotor:** dr inż. (W TRAKCIE SZUKANIA)

---

## 1. Streszczenie projektu

Projekt zakłada zaprojektowanie i implementację gry komputerowej w technologii wirtualnej rzeczywistości (VR), w której głównym zmysłem angażowanym u gracza jest słuch. W odróżnieniu od większości produkcji VR, warstwa wizualna zostanie celowo ograniczona do minimum, aby zmusić gracza do nawigacji i podejmowania decyzji w oparciu o precyzyjną lokalizację źródeł dźwięku przestrzennego. Celem pracy jest zbadanie wyzwań technicznych związanych z implementacją takiej mechaniki oraz ocena jej wpływu na immersję i grywalność.

## 2. Opis konceptu gry

### Główna idea

Gra stanowi innowacyjne podejście do gatunku survival horror, inspirowane zabawą w „ciuciubabkę”. Gracz, umieszczony w wirtualnym środowisku o mocno ograniczonej widoczności (np. widoczna jedynie podłoga), musi przetrwać, nasłuchując i reagując na zagrożenia reprezentowane przez przeciwników o unikalnych sygnaturach dźwiękowych.

### Pętla rozgrywki

1.  **Nasłuchiwanie:** Gracz w ciszy nasłuchuje otoczenia, próbując zidentyfikować rodzaj i położenie zbliżających się przeciwników.
2.  **Lokalizacja:** Wykorzystując dźwięk przestrzenny (3D audio), gracz określa kierunek i odległość od zagrożenia.
3.  **Reakcja:** W zależności od typu przeciwnika, gracz musi podjąć odpowiednią akcję: unikać, konfrontować się lub wykonać specyficzną czynność (np. schylić się, udać w bezpieczne miejsce).

### Przykładowe mechaniki przeciwników

*   **Balora:** Emituje dźwięk pozytywki, poruszając się po okręgu i stopniowo zacieśniając pętlę wokół gracza. Nagłe przyspieszenie muzyki sygnalizuje atak, na który gracz musi odpowiedzieć kontrą w kierunku źródła dźwięku.
*   **Gliblobsy:** Charakteryzują się cichym chichotem i szuraniem. Ze względu na niski wzrost, wymagają od gracza fizycznego schylenia się w celu ich eliminacji.
*   **Marnin:** Generuje mylące szepty, które zagłuszają inne dźwięki i spowalniają gracza. Usunięcie tego efektu wymaga dotarcia do specjalnego punktu na mapie (np. „charge room”), który również jest identyfikowalny dźwiękowo.
*   **Foxy:** Jego obecność sygnalizuje powolna, specyficzna melodia. Jej nagłe ucichnięcie jest sygnałem, że przeciwnik przygotowuje się do sprintu w linii prostej, co wymaga od gracza szybkiego zejścia z toru jego ataku.

## 3. Cele pracy inżynierskiej

### Cel główny

Zaprojektowanie, implementacja i weryfikacja prototypu gry VR, w której dźwięk przestrzenny stanowi fundament mechanik rozgrywki.

### Cele szczegółowe

1.  **Analiza i implementacja systemu dźwięku przestrzennego:** Zbadanie dostępnych w silniku Godot narzędzi do obsługi 3D audio (np. z wykorzystaniem HRTF) i ich efektywna implementacja w celu zapewnienia precyzyjnej lokalizacji źródeł dźwięku.
2.  **Zaprojektowanie i implementacja mechanik gracza w VR:** Stworzenie systemu poruszania się i interakcji (atak) gracza z wykorzystaniem kontrolerów VR.
3.  **Implementacja zróżnicowanej sztucznej inteligencji (AI):** Stworzenie systemów zachowań (np. z użyciem maszyn stanów) dla kilku typów przeciwników, których działanie jest ściśle powiązane z emitowanymi przez nich sygnałami dźwiękowymi.
4.  **Zarządzanie percepcją gracza:** Opracowanie mechanik, które w sposób dynamiczny wpływają na zdolność słyszenia gracza (np. zagłuszanie, dezorientacja), stanowiąc dodatkowe wyzwanie.
5.  **Przeprowadzenie testów i analiza wyników:** Zebranie opinii od testerów na temat czytelności sygnałów audio, poziomu immersji oraz ogólnej grywalności w celu oceny finalnego produktu.

## 4. Aspekty techniczne i innowacyjne

*   **Inżynieria dźwięku w rozgrywce:** Projekt kładzie nacisk na techniczną stronę dźwięku jako kluczowego elementu interakcji, a nie tylko tła.
*   **Niestandardowe wykorzystanie VR:** Zamiast epatować grafiką, projekt eksploruje potencjał VR w potęgowaniu immersji poprzez ograniczenie jednego zmysłu i wzmocnienie innego.
*   **Projektowanie AI opartej na dźwięku:** Zachowanie przeciwników jest komunikowane graczowi głównie przez dźwięk, co stanowi ciekawe wyzwanie projektowe i programistyczne.
*   **Potencjał w zakresie dostępności (accessibility):** Koncept otwiera drogę do dyskusji na temat tworzenia gier VR, które mogłyby być częściowo grywalne dla osób z dysfunkcjami wzroku.

## 5. Proponowane technologie

*   **Silnik gry:** Godot 4.5 (z modułem OpenXR dla VR)
*   **Język programowania:** GDScript
*   **Oprogramowanie do obróbki dźwięku:** Audacity, CakeWalk
*   **Oprogramowanie do grafiki 2D/3D (elementy minimalne):** GIMP, Blender

## 6. Wstępny harmonogram prac

*   **Semestr V (bieżący):**
    *   Badania i literatura (technologie dźwięku przestrzennego, projektowanie gier audio).
    *   Stworzenie podstawowego prototypu (tzw. _proof-of-concept_): implementacja ruchu gracza w VR, testy systemu audio na jednym źródle dźwięku.
    *   Sformalizowanie tematu i celów pracy.
*   **Semestr VI:**
    *   Implementacja kluczowych mechanik gry (system ataku, systemy AI dla 2-3 typów przeciwników).
    *   Projektowanie i tworzenie zasobów dźwiękowych.
    *   Rozwój głównej pętli rozgrywki.
*   **Semestr VII:**
    *   Finalizacja projektu (dodanie pozostałych przeciwników, balans rozgrywki).
    *   Przeprowadzenie testów z użytkownikami i zebranie feedbacku.
    *   Pisanie części teoretycznej i praktycznej pracy inżynierskiej, przygotowanie dokumentacji.
    *   Przygotowanie do obrony.

## 7. Podsumowanie

Przedstawiony projekt stanowi ambitne, lecz wykonalne zadanie inżynierskie. Jego unikalny charakter pozwala na dogłębną eksplorację zagadnień związanych z dźwiękiem przestrzennym, sztuczną inteligencją i projektowaniem immersyjnych doświadczeń w wirtualnej rzeczywistości. Wierzę, że realizacja tej pracy przyniesie cenne doświadczenie oraz zaowocuje interesującym i wyróżniającym się produktem finalnym.
