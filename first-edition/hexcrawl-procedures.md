---
layout: default
title: Hexcrawl
parent: Pierwsza edycja
nav_order: 5
---

# Jeszcze jedna procedura poruszania się po heksach (Hexcrawl)

- Opracowana na podstawie [Yet Another Hexcrawl Procedure](https://dangerisreal.blogspot.com/2021/08/yet-another-hexcrawl-procedure-there-is.html), za pozwoleniem autora.
- Bazuje na [Wilderness Adventuring](https://oldschoolessentials.necroticgnome.com/srd/index.php/Wilderness_Adventuring) dla [Old School Essentials](https://www.drivethrurpg.com/product/272802/OldSchool-Essentials-Basic-Rules).
- Procedura ta przyjmuje klasyczne rozmiary 1 heks = 6 mil = +/- 10 km, ale powinna działać dla dowolnego rozmiaru pola.
- Raz na początku każdego dnia, rzuć na **Pogodę** używając swojej ulubionej tabeli. Na przykład [tutaj](https://ynasmidgard.blogspot.com/2019/02/simple-seasonal-weather-table.html) albo [tutaj](https://donjon.bin.sh/d20/weather/).

## Wachty

Dzień jest podzielony na 3 wachty po _około 8 godzin_ każda:

- **Wachta poranna** (+/- 6 rano -> 2 po południu (14:00))
- **Wachta popołudniowa** (+/- 2 po południu (14:00) -> 10 wieczorem (22:00))
- **Wachta nocna** (+/- 10 wieczorem (22:00) -> 6 rano)

### Na każdej wachcie, drużyna wykonuje jedną akcję  

#### Podróż

Drużyna podróżuje w ramach heksa.

- Przemieszczają się maksymalnie na odległość połowy dziennego dystansu podróży (pieszo, konno, na wozie, itp.).
- Oczywiste miejsca, cechy i rodzaje terenu na sąsiednich heksach są ujawniane odpowiednio do odległości i widoczności.
- Drużyna musi uważać, aby nie [stracić orientacji](./hexcrawl-procedures.md#utrata-orientacji).
- Rzuć na [tabelę zdarzeń](./hexcrawl-procedures.md/#tabela-zdarzeń).

##### Utrata orientacji

- W 2 przypadkach na 6 istnieje szansa, że drużyna zgubi się podczas podróży przez trudny teren lub teren o słabej widoczności.
- Mapy i odpowiednia przeszłość postaci eliminują potrzebę rzutu, lub zmniejszają szanse do 1 na 6.

#### Eksploracja

Drużyna poszukuje ukrytych aspektów/cech/elementów w obrębie aktualnego heksu.

- Rzuć na [tabelę zdarzeń](./hexcrawl-procedures.md/#tabela-zdarzeń).
- Jedna lokacja bądź cecha zostaje odkryta.

#### Uzupełnianie zasobów

Drużyna gromadzi żywność i wodę.

- Rzuć na [tabelę zdarzeń](./hexcrawl-procedures.md/#tabela-zdarzeń).
- Polowanie i poszukiwanie pożywienia (jeśli to możliwe ze względu na ukształtowanie terenu).

#### Obozowanie

Drużyna zatrzymuje się, aby rozbić obóz.

- Rzuć na [tabelę zdarzeń](./hexcrawl-procedures.md/#tabela-zdarzeń).
- Jeśli wypadnie _spokój_ lub drużyna jest w stanie w pełni odpocząć, członkowie drużyny tracą całe swoje Zmęczenie (jeśli dotyczy).

#### Interakcja

Drużyna wchodzi w interakcję z otoczeniem.

- Przemierzanie lochów, przygody w mieście/wiosce, eksploracja legowisk, długie interakcje z BN, itd...
- Jeśli drużyna jest w stanie w pełni odpocząć, członkowie drużyny tracą całe swoje Zmęczenie (jeśli dotyczy).

### Zmęczenie

Za każdą noc, w której partia pomija _obozowanie_ lub jest _zmuszona do marszu_, każda postać gracza dostaje jeden punkt Zmęczenia.

### Tabela zdarzeń

|                           |                   |                   |                          |                   |
| ------------------------- | ----------------- | ----------------- | ------------------------ | ----------------- |
| **k6+modyfikator terenu** | **Podróż**        | **Eksploracja**   | **Uzupełnianie zasobów** | **Obozowanie**    |
| <=1                       | Spotkanie         | Spotkanie         | Spotkanie                | Spotkanie         |
| 2                         | Niebezpieczeństwo | Niebezpieczeństwo | Niebezpieczeństwo        | Niebezpieczeństwo |
| 3                         | Lokacja/Cecha     | Niebezpieczeństwo | Lokacja/Cecha            | Spokój            |
| >=4                       | Spokój            | Spokój            | Spokój                   | Spokój            |

#### Spotkanie

Wygeneruj losowe spotkanie. Jeśli odległość jest duża, może to być zapowiedź wydarzenia (omen, znak).

#### Lokacja/Cecha

Druzyna natyka się na ukrytą lokalizację lub cechę otoczenia.

#### Niebezpieczeństwo

Drużyna napotyka zagrożenie lub przeszkodę ([zdarzenie](./hexcrawl-procedures.md/#tabela-zdarzeń) lub [teren](./hexcrawl-procedures.md/#modyfikator-terenu) według uznania Strażnika).

#### Spokój

Nie dzieje się nic istotnego. Członkowie drużyny tracą całe swoje Zmęczenie (jeśli dotyczy).

### Modyfikator terenu

- Miasto, pola, łąki, tereny zamieszkałe: 0.
- Przestrzeń powietrzna, jałowe pustkowie, pustynia, las, wzgórza: -1.
- Dżungla, góry, bagno: -2.

### Zasięg widoczności

(1 heks = 6 mil / 10 km)

|                                |               |
| ------------------------------ | ------------- |
| **Wysokość**                   | **Widnokrąg** |
| Rozmiar człowieka              | Aktualny heks |
| 50' - 15m - Drzewo             | 1 heks        |
| 100' - 30m – Wieża strażnicza  | 2 heksy       |
| 330' - 100m – Niskie wzgórze   | 3 heksy       |
| 1000' - 300m – Średnie wzgórze | 5 heksów      |
| 1650' - 500m - Wzgórze         | 7 heksów      |
| 3300' - 1000m – Góra           | 10 heksów     |
