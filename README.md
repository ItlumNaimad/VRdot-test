# Propozycja tematu pracy inżynierskiej

**Tytuł roboczy:** Projekt i implementacja gry w wirtualnej rzeczywistości opartej na mechanice percepcji dźwięku

**Autor:** Damian Skonieczny
**Kierunek:** Informatyka Stosowana

---

### Spis Treści
1. [Streszczenie projektu](#1-streszczenie-projektu)
2. [Słowniczek kluczowych pojęć](#2-słowniczek-kluczowych-pojęć)
3. [Opis konceptu gry](#3-opis-konceptu-gry)
4. [Cele pracy inżynierskiej](#4-cele-pracy-inżynierskiej)
5. [Aspekty techniczne i innowacyjne](#5-aspekty-techniczne-i-innowacyjne)
6. [Potencjał w zakresie dostępności (Accessibility)](#6-potencjał-w-zakresie-dostępności-accessibility)
7. [Proponowane technologie](#7-proponowane-technologie)
8. [Metodyka pracy i testowania](#8-metodyka-pracy-i-testowania)
9. [Wstępny harmonogram prac](#9-wstępny-harmonogram-prac)
10. [Podsumowanie](#10-podsumowanie)
11. [Załącznik A: Plan Realizacji Technicznej i Zasoby](#załącznik-a-plan-realizacji-technicznej-i-zasoby)

---

## 1. Streszczenie projektu

Celem pracy jest zaprojektowanie i zaimplementowanie w pełni funkcjonalnego prototypu gry w technologii wirtualnej rzeczywistości (VR). Kluczowym założeniem projektu jest oparcie rozgrywki na zmyśle słuchu, przy celowym ograniczeniu bodźców wizualnych. Praca obejmie cały proces tworzenia aplikacji: od analizy technologii dźwięku przestrzennego, przez implementację mechanik gry w silniku Godot, aż po przeprowadzenie testów z użytkownikami. Celem testów będzie zebranie opinii i danych, które posłużą do iteracyjnego ulepszania rozgrywki i walidacji zastosowanych rozwiązań projektowych.

## 2. Słowniczek kluczowych pojęć

Aby ułatwić zrozumienie technicznych aspektów projektu, poniżej wyjaśniam kilka kluczowych terminów:

*   **Dźwięk przestrzenny (3D Audio):** Technika przetwarzania dźwięku, która sprawia, że słuchacz ma wrażenie, iż dźwięk dochodzi z konkretnego punktu w trójwymiarowej przestrzeni (z przodu, z tyłu, z góry, z dołu).
*   **Dźwięk binauralny:** Specyficzny rodzaj dźwięku przestrzennego przeznaczony do słuchania na słuchawkach. Wykorzystuje on sposób, w jaki nasze uszy i mózg naturalnie lokalizują dźwięki, tworząc bardzo realistyczne i immersyjne wrażenie przestrzeni.
*   **HRTF (Head-Related Transfer Function):** Mówiąc prosto, jest to "filtr" akustyczny, który opisuje, jak kształt naszej głowy, ramion i małżowin usznych zmienia dźwięk, zanim dotrze on do bębenków. Silniki gier używają ogólnych modeli HRTF, aby symulować dźwięk binauralny i umożliwić nam precyzyjną lokalizację jego źródła.
*   **Walidacja (w kontekście projektu):** Proces sprawdzania i potwierdzania, czy zaprojektowane mechaniki gry działają zgodnie z założeniami i czy są zrozumiałe oraz satysfakcjonujące dla gracza.

## 3. Opis konceptu gry

### Główna idea

Gra jest survival horrorem inspirowanym zabawą w „ciuciubabkę”. Gracz, mając bardzo ograniczone pole widzenia (np. widzi tylko podłogę), musi polegać na słuchu, aby przetrwać. Jego zadaniem jest nasłuchiwanie i reagowanie na zagrożenia, z których każde posiada unikalne i rozpoznawalne cechy dźwiękowe.

### Pętla rozgrywki

1.  **Nasłuchiwanie:** Gracz nasłuchuje otoczenia, próbując zidentyfikować rodzaj i położenie zbliżających się przeciwników.
2.  **Lokalizacja:** Wykorzystując dźwięk przestrzenny, gracz określa kierunek i odległość od zagrożenia.
3.  **Reakcja:** Na podstawie rodzaju dźwięku, gracz podejmuje odpowiednią akcję: unika, atakuje lub wykonuje inną czynność (np. schyla się).

### Przykładowe bodźce testowe (mechaniki przeciwników)

*   **Przeciwnik o przewidywalnej trajektorii ("Balora"):** Emituje dźwięk pozytywki, poruszając się po okręgu. Testuje zdolność gracza do śledzenia ruchomego celu. Zmiana tempa muzyki sygnalizuje atak.
*   **Przeciwnik niskiego wzrostu ("Gliblobsy"):** Charakteryzuje się cichym chichotem emitowanym z niskiej wysokości. Wymaga od gracza nie tylko lokalizacji w poziomie, ale też w pionie, oraz adekwatnej reakcji fizycznej (schylenie się).
*   **Przeciwnik zakłócający ("Marnin"):** Generuje mylące szepty, które mają na celu zagłuszenie innych dźwięków. Testuje zdolność gracza do skupienia się na istotnym sygnale w trudniejszych warunkach.
*   **Przeciwnik typu "sygnał-akcja" ("Foxy"):** Jego obecność sygnalizuje melodia, której nagłe urwanie jest jednoznacznym sygnałem do uniku przed atakiem w linii prostej. Sprawdza czas reakcji gracza.

## 4. Cele pracy inżynierskiej

### Cel główny

Zaprojektowanie i zaimplementowanie grywalnego prototypu gry VR, w której dźwięk przestrzenny jest kluczową mechaniką rozgrywki, oraz udokumentowanie pełnego procesu deweloperskiego.

### Cele szczegółowe

1.  **Analiza i wybór technologii:** Zbadanie możliwości silnika Godot w zakresie implementacji dźwięku przestrzennego (3D Audio, HRTF).
2.  **Implementacja rdzenia gry:** Stworzenie podstawowych systemów: poruszania się gracza w VR, interakcji oraz logiki kilku zróżnicowanych przeciwników.
3.  **Projektowanie dźwięku:** Stworzenie i obróbka zasobów dźwiękowych, które będą czytelne i intuicyjne dla gracza.
4.  **Przeprowadzenie testów z użytkownikami:** Zorganizowanie sesji testowych w celu zebrania opinii (feedbacku) na temat grywalności, czytelności dźwięków i ogólnego doświadczenia.
5.  **Iteracyjny rozwój:** Wykorzystanie zebranych opinii do wprowadzenia poprawek i ulepszeń w prototypie, co zostanie opisane w pracy jako część procesu produkcyjnego.

## 5. Aspekty techniczne i innowacyjne

*   **Inżynieria rozgrywki opartej na audio:** Projekt skupia się na praktycznych wyzwaniach związanych z projektowaniem interakcji, której podstawą jest dźwięk, a nie grafika.
*   **Niestandardowe wykorzystanie VR:** Zamiast koncentrować się na grafice, projekt bada, jak VR może wzmocnić immersję poprzez zmysł słuchu.
*   **Praktyczne zastosowanie psychoakustyki:** Wykorzystanie wiedzy o tym, jak ludzie postrzegają dźwięk, do tworzenia zrozumiałych i angażujących mechanik gry.

## 6. Potencjał w zakresie dostępności (Accessibility)

Projekt posiada interesujący potencjał w kontekście dostępności dla osób z dysfunkcjami wzroku. Chociaż celem nie jest stworzenie komercyjnego produktu dla osób niewidomych, zaimplementowany prototyp może służyć jako **ciekawy przykład (proof-of-concept)**, jak technologia VR może być wykorzystywana do tworzenia doświadczeń niezależnych od zmysłu wzroku. Gra mogłaby stanowić atrakcję do przetestowania dla takich osób, pokazując nowe kierunki w projektowaniu gier inkluzywnych.

## 7. Proponowane technologie

*   **Silnik gry:** Godot 4.x (z modułem OpenXR dla VR)
*   **Język programowania:** GDScript
*   **Oprogramowanie do obróbki dźwięku:** Audacity, CakeWalk
*   **Oprogramowanie do grafiki (minimalne):** GIMP, Blender

## 8. Metodyka pracy i testowania

Proces tworzenia gry będzie przebiegał iteracyjnie. Po zaimplementowaniu kluczowych funkcjonalności, zostaną przeprowadzone testy z niewielką grupą użytkowników (testerów).

*   **Cel testów:** Nie jest to formalny eksperyment naukowy, lecz **standardowa w branży gier faza zbierania opinii**, mająca na celu odpowiedzieć na pytania:
    *   Czy dźwięki są czytelne?
    *   Czy gracze rozumieją, jak reagować na poszczególnych przeciwników?
    *   Czy gra jest angażująca i czy poziom trudności jest odpowiedni?
    *   Jakie elementy są frustrujące lub wymagają poprawy?
*   **Metoda:** Sesje testowe, po których uczestnicy wypełnią krótką ankietę i/lub wezmą udział w nieformalnym wywiadzie.
*   **Wynik:** Zebrane opinie posłużą do wprowadzenia konkretnych zmian w projekcie (np. zmiana dźwięku, modyfikacja zachowania przeciwnika, poprawa sterowania), co zostanie udokumentowane w pracy.

*Szczegółowy plan realizacji technicznej, wraz z listą kluczowych zasobów i kamieniami milowymi, znajduje się w Załączniku A.*

## 9. Wstępny harmonogram prac

*   **Semestr V (bieżący):**
    *   Badania i zapoznanie się z technologią dźwięku 3D w Godot.
    *   Stworzenie prostego prototypu z ruchem gracza w VR i jednym źródłem dźwięku.
*   **Semestr VI:**
    *   Implementacja kluczowych mechanik gry i 2-3 typów przeciwników.
    *   Stworzenie zasobów dźwiękowych i pierwszej grywalnej wersji.
*   **Semestr VII:**
    *   Przeprowadzenie pierwszej tury testów i zebranie opinii.
    *   Wprowadzenie poprawek na podstawie feedbacku.
    *   Finalizacja prototypu i pisanie pracy inżynierskiej.

## 10. Podsumowanie

Przedstawiony projekt to praca inżynierska skupiona na praktycznym procesie tworzenia gry wideo. Jej unikalność polega na eksploracji rzadko wykorzystywanej mechaniki opartej na słuchu w środowisku VR. Praca udokumentuje cały cykl produkcyjny – od pomysłu, przez implementację techniczną, aż po testy z użytkownikami i iteracyjne ulepszanie produktu. Wierzę, że jest to ambitny i ciekawy temat, który pozwoli mi w pełni wykorzystać i rozwinąć umiejętności zdobyte na studiach.

---

## Załącznik A: Plan Realizacji Technicznej i Zasoby

Niniejszy załącznik zawiera zbiór kluczowych zasobów technicznych oraz plan działania w formie kamieni milowych, które będą stanowić podstawę do realizacji projektu.

### A.1 Konfiguracja Środowiska VR w Godot 4

*   **Oficjalna Dokumentacja Godot:**
    *   *OpenXR w Godot 4:* Wyjaśnienie podstawowych koncepcji i wymagań konfiguracyjnych.
    *   *Twój pierwszy projekt XR:* Samouczek wprowadzający w tworzenie podstawowej sceny VR.
*   **Plugin "Godot XR Tools":**
    *   *Repozytorium na GitHubie:* Niezbędna wtyczka dostarczająca gotowe komponenty dla VR (kontroler gracza, interakcje), co znacząco przyspieszy pracę.
*   **Polecane Tutoriale Wideo:**
    *   *Godot XR Tutorials (Bastiaan Olij):* Merytoryczne materiały od jednego z głównych deweloperów XR w Godocie.
    *   *MitchDev - "Complete Godot 4 VR Beginner Tutorial":* Przystępny tutorial pokazujący konfigurację projektu od zera.
*   **Kluczowe węzły silnika:** `XROrigin3D`, `XRCamera3D`, `XRController3D`.

### A.2 Implementacja Dźwięku Przestrzennego (Spatial Audio)

*   **Oficjalna Dokumentacja Godot:**
    *   *Odtwarzanie audio:* Ogólne wprowadzenie do systemów audio w silniku.
    *   *Dźwięk 3D i Pozycjonowanie Audio:* **Kluczowy materiał dla projektu**, wyjaśniający działanie dźwięku przestrzennego.
*   **Polecane Tutoriale Wideo:**
    *   *FinePointCGI - "3D Positional Audio In Godot 4":* Praktyczny pokaz konfiguracji pozycjonowania dźwięku 3D.
    *   *GDQuest - "Godot's Audio Buses Tutorial":* Materiał o zarządzaniu wieloma źródłami dźwięku za pomocą szyn audio.
*   **Kluczowe węzły i koncepty:**
    *   `AudioStreamPlayer3D`: "Głośnik" w świecie gry, emitujący dźwięk z określonej pozycji.
    *   `AudioListener3D`: "Uszy" gracza, domyślnie powiązane z kamerą.
    *   `Tłumienie (Attenuation)`: Parametr kontrolujący, jak dźwięk cichnie wraz z odległością.
    *   `HRTF`: Opcja w ustawieniach projektu, której włączenie znacząco poprawia realizm i precyzję lokalizacji dźwięku na słuchawkach.

### A.3 Plan Działania i Kamienie Milowe (Checklista)

Poniższa lista przedstawia kolejne kroki w realizacji projektu.

#### Faza 1: Fundamenty i Konfiguracja
- [x] Przygotowanie wstępnej dokumentacji projektu.
- [x] Utworzenie repozytorium kodu (GitHub).
- [x] Inicjalizacja projektu w silniku Godot 4.4.
- [ ] Konfiguracja pluginu Godot XR Tools i weryfikacja działania podstawowej sceny na goglach VR.

#### Faza 2: Prototypowanie Rdzennych Mechanik
- [ ] Stworzenie sceny testowej dla weryfikacji dźwięku przestrzennego (jeden statyczny i jeden ruchomy emiter dźwięku).
- [ ] Implementacja prototypu pierwszej mechaniki przeciwnika ("Balora").
- [ ] Walidacja kluczowej pętli rozgrywki (słyszę -> lokalizuję -> reaguję).

#### Faza 3: Rozwój i Testowanie
- [ ] Implementacja kolejnych 1-2 mechanik przeciwników.
- [ ] Stworzenie prostego systemu do zbierania feedbacku (np. ankieta Google Forms).
- [ ] Przeprowadzenie pierwszej, nieformalnej tury testów z użytkownikami.
- [ ] Iteracja i wprowadzenie poprawek na podstawie zebranych opinii.
