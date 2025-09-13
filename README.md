# Propozycja tematu pracy inżynierskiej

**Tytuł roboczy:** Implementacja i ocena efektywności systemu percepcji audio opartego na HRTF w interaktywnym środowisku wirtualnej rzeczywistości

**Autor:** Damian Skonieczny
**Kierunek:** Informatyka Stosowana

---

### Spis Treści
1. [Streszczenie projektu](#1-streszczenie-projektu)
2. [Opis konceptu aplikacyjnego (gry)](#2-opis-konceptu-aplikacyjnego-gry)
3. [Cele pracy inżynierskiej](#3-cele-pracy-inżynierskiej)
4. [Aspekty techniczne i innowacyjne](#4-aspekty-techniczne-i-innowacyjne)
5. [Proponowane technologie](#5-proponowane-technologie)
6. [Metodyka badawcza i ewaluacja](#6-metodyka-badawcza-i-ewaluacja)
7. [Wstępny harmonogram prac](#7-wstępny-harmonogram-prac)
8. [Potencjalne wyzwania i ryzyka](#8-potencjalne-wyzwania-i-ryzyka)
9. [Podsumowanie](#9-podsumowanie)

---

## 1. Streszczenie projektu

Projekt zakłada zaprojektowanie, implementację oraz **eksperymentalną walidację** prototypu aplikacji w technologii wirtualnej rzeczywistości (VR). Aplikacja ta będzie celowo minimalizować bodźce wizualne, aby wymusić na użytkowniku podejmowanie decyzji w oparciu o percepcję dźwięku przestrzennego, renderowanego z wykorzystaniem **funkcji przenoszenia związanej z głową (HRTF)**. Głównym celem pracy jest zbadanie wyzwań technicznych implementacji takiego systemu oraz **ilościowa ocena** jego skuteczności w zadaniach wymagających precyzyjnej lokalizacji źródeł dźwięku w dynamicznym, interaktywnym środowisku.

## 2. Opis konceptu aplikacyjnego (gry)

Aplikacja, będąca praktyczną realizacją projektu, przyjmie formę gry z gatunku survival horror, inspirowanej zabawą w „ciuciubabkę”. Służy ona jako motywujące środowisko testowe dla zaimplementowanych mechanik audio.

### Główna idea

Użytkownik, umieszczony w wirtualnym środowisku o mocno ograniczonej widoczności (np. widoczna jedynie podłoga), musi przetrwać, nasłuchując i reagując na zagrożenia. Każde zagrożenie (przeciwnik) charakteryzuje się unikalną, czytelną sygnaturą dźwiękową, która komunikuje jego stan, pozycję i intencje.

### Pętla rozgrywki

1.  **Percepcja:** Użytkownik nasłuchuje otoczenia, identyfikując aktywne źródła dźwięku.
2.  **Lokalizacja:** Wykorzystując dźwięk binauralny (3D), użytkownik określa wektor (kierunek i odległość) do zidentyfikowanego zagrożenia.
3.  **Decyzja i reakcja:** Na podstawie sygnatury dźwiękowej i zlokalizowanej pozycji, użytkownik podejmuje adekwatną akcję: unika, konfrontuje się lub wykonuje specyficzną czynność (np. fizyczne schylenie się).

### Przykładowe bodźce testowe (mechaniki przeciwników)

*   **Bodziec o przewidywalnej trajektorii (roboczo: "Balora"):** Dźwięk pozytywki poruszający się po okręgu. Testuje zdolność śledzenia ruchomego celu. Zmiana tempa muzyki sygnalizuje zmianę stanu, wymagając od użytkownika szybkiej reakcji.
*   **Bodziec wymagający reakcji w płaszczyźnie wertykalnej ("Gliblobsy"):** Cichy dźwięk emitowany z niskiej wysokości. Wymusza lokalizację nie tylko w poziomie, ale i w pionie, oraz adekwatną reakcję fizyczną (schylenie się).
*   **Bodziec zakłócający percepcję ("Marnin"):** Szepty generowane blisko uszu użytkownika, mające na celu maskowanie innych dźwięków. Testuje zdolność skupienia się na istotnym sygnale w obecności szumu informacyjnego.
*   **Bodziec typu "sygnał-akcja" ("Foxy"):** Wyraźna melodia, której nagłe urwanie jest jednoznacznym sygnałem zbliżającego się, liniowego ataku. Mierzy czas reakcji na konkretny, wyuczony sygnał dźwiękowy.

## 3. Cele pracy inżynierskiej

### Cel główny

Zaprojektowanie, implementacja i **ilościowa ocena efektywności** prototypowego systemu VR, w którym interakcja opiera się na percepcji dźwięku przestrzennego.

### Cele szczegółowe

1.  **Analiza i implementacja systemu dźwięku przestrzennego:** Zbadanie i implementacja renderowania dźwięku binauralnego z wykorzystaniem HRTF w silniku Godot, z weryfikacją jego skuteczności w zadaniach lokalizacyjnych.
2.  **Stworzenie interaktywnego środowiska testowego:** Zaprojektowanie i implementacja mechanik VR (ruch, interakcja) oraz logiki bodźców (AI przeciwników), które stworzą powtarzalne i mierzalne scenariusze testowe.
3.  **Zarządzanie percepcją gracza:** Opracowanie mechanik dynamicznie wpływających na scenę akustyczną (maskowanie, zagłuszanie), stanowiących dodatkowe zmienne w eksperymentach.
4.  **Zaprojektowanie i przeprowadzenie kontrolowanych testów z użytkownikami:** Opracowanie protokołu badawczego, przeprowadzenie testów i zebranie danych ilościowych (np. błąd lokalizacji, czas reakcji).
5.  **Analiza statystyczna wyników:** Przetworzenie i analiza zebranych danych w celu wyciągnięcia obiektywnych wniosków na temat wydajności i ograniczeń zaimplementowanego systemu.

## 4. Aspekty techniczne i innowacyjne

*   **Inżynieria dźwięku w czasie rzeczywistym:** Projekt skupia się na technicznych aspektach dźwięku jako nośnika informacji w systemie interaktywnym, a nie tylko elementu tła.
*   **Niestandardowe wykorzystanie VR:** Eksploracja potencjału VR w potęgowaniu immersji poprzez świadome ograniczenie zmysłu wzroku i wzmocnienie słuchu.
*   **Badanie psychoakustyki w praktyce:** Projekt stanowi platformę do praktycznego badania zjawisk psychoakustycznych, takich jak lokalizacja dźwięku, efekt coctail party czy maskowanie.
*   **Analiza latencji "motion-to-sound":** Kluczowym parametrem technicznym do zbadania będzie opóźnienie między ruchem głowy użytkownika a aktualizacją sceny dźwiękowej.

## 5. Proponowane technologie

*   **Silnik gry:** Godot 4.x (z modułem OpenXR dla VR)
*   **Język programowania:** GDScript
*   **Oprogramowanie do obróbki dźwięku:** Audacity, CakeWalk
*   **Oprogramowanie do grafiki (minimalne):** GIMP, Blender
*   **Analiza danych:** Python (biblioteki NumPy, Pandas, Matplotlib, SciPy) lub arkusz kalkulacyjny.

## 6. Metodyka badawcza i ewaluacja

Ocena projektu zostanie przeprowadzona na podstawie kontrolowanych eksperymentów z udziałem grupy testowej (N ≈ 10-15 osób).

### Procedura testowa

1.  **Kalibracja i instruktaż:** Uczestnik zapoznaje się ze sterowaniem i sygnaturami dźwiękowymi.
2.  **Test A: Lokalizacja statyczna:** Uczestnik ma za zadanie wskazać (poprzez obrót głowy) kierunek, z którego dobiega krótki sygnał testowy. Test weryfikuje bazową dokładność lokalizacji.
3.  **Test B: Scenariusz dynamiczny:** Uczestnik bierze udział w krótkich (60-90s) sesjach rozgrywki, podczas których musi reagować na pojawiające się bodźce.

### Mierzone metryki (dane ilościowe)

*   **Błąd kątowy lokalizacji [stopnie]:** Różnica między rzeczywistym a wskazanym przez użytkownika kątem źródła dźwięku.
*   **Czas reakcji [ms]:** Czas od pojawienia się sygnału do wykonania poprawnej akcji.
*   **Wskaźnik sukcesu [%]:** Odsetek poprawnie zneutralizowanych zagrożeń w scenariuszu dynamicznym.
*   **Wskaźnik pomyłek przód-tył [%]:** Identyfikacja klasycznych błędów lokalizacji w dźwięku binauralnym.

### Analiza wyników

Zebrane dane zostaną poddane analizie statystycznej (np. obliczenie średniej, odchylenia standardowego, zastosowanie testu t-Studenta do porównania warunków) w celu obiektywnej oceny działania systemu.

## 7. Wstępny harmonogram prac

*   **Semestr V (bieżący):**
    *   Badania literaturowe (HRTF, psychoakustyka, implementacje audio w VR).
    *   Stworzenie prototypu _proof-of-concept_: ruch gracza w VR, testy bazowego systemu `AudioStreamPlayer3D` z HRTF.
*   **Semestr VI:**
    *   Implementacja kluczowych mechanik i bodźców testowych (1-2 przeciwników).
    *   Projektowanie scenariuszy testowych i systemu zbierania danych (logowania metryk).
    *   Rozwój pętli rozgrywki.
*   **Semestr VII:**
    *   Finalizacja prototypu, przeprowadzenie testów z użytkownikami.
    *   **Analiza statystyczna zebranych danych.**
    *   Pisanie pracy inżynierskiej, ze szczególnym uwzględnieniem rozdziału badawczego.
    *   Przygotowanie do obrony.

## 8. Potencjalne wyzwania i ryzyka

*   **Latencja systemu audio:** Zbyt duże opóźnienie "motion-to-sound" może zniszczyć immersję i uniemożliwić precyzyjną lokalizację. **Mitigacja:** Optymalizacja kodu, użycie wydajnego sprzętu, potencjalne wykorzystanie sterowników ASIO.
*   **Jakość generycznego HRTF:** Standardowe modele HRTF mogą być nieefektywne dla części użytkowników. **Mitigacja:** Zaznaczenie tego ograniczenia w pracy, ewentualne przetestowanie 2-3 różnych, publicznie dostępnych modeli HRTF.
*   **Choroba symulatorowa (Cybersickness):** Może utrudnić lub uniemożliwić testy. **Mitigacja:** Minimalizacja sztucznego ruchu, zapewnienie stałej, wysokiej liczby klatek na sekundę (>90 FPS), krótkie sesje testowe.
*   **Subiektywność percepcji:** Odbiór dźwięku jest cechą indywidualną. **Mitigacja:** Zastosowanie testów na większej grupie i analiza statystyczna wyników w celu zniwelowania wpływu pojedynczych obserwacji.

## 9. Podsumowanie

Przedstawiony projekt łączy w sobie kreatywne aspekty projektowania gier wideo z solidnymi podstawami inżynierii oprogramowania i metodologii badawczej. Jego realizacja pozwoli nie tylko na stworzenie unikalnego doświadczenia interaktywnego, ale przede wszystkim na zebranie i przeanalizowanie konkretnych danych dotyczących praktycznego zastosowania dźwięku przestrzennego w wirtualnej rzeczywistości. Wierzę, że ten dualizm czyni go interesującym i wartościowym tematem pracy inżynierskiej.
