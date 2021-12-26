---
layout: default
title: Konwersja potworów
nav_order: 2
parent: Narzędzia
---

# Konwersja potworów

Nie ma idealnego systemu do konwersji z innych systemów.  
Poniżej znajduje się kilka wskazówek, które mogą Ci pomóc w tym procesie!

## Podstawy

Zapoznaj się z instrukcjami w [SRD](../../docs/../cairn-pl/docs/cairn-srd-pl.md#Tworzenie potworów). Oto kilka rzeczy, o których należy pamiętać:

- OSE (lub B/X) mają naprawdę świetne statystyki, które można po prostu tylko zredukować w celu szybkiej konwersji.
- Konwersja **HD** jest zazwyczaj najtrudniejsza do zrozumienia. Konwertuj _najpierw_ **HP**, _następnie_ **STR**. Możesz użyć oryginalnego **HD** stwora dwa razy podczas konwersji lub wcale, w zależności od poziomu szczegółowości bloku statystyk.
- Dungeon World ma kilka świetnych "ruchów" potworów, które całkiem ładnie przekładają się na obrażenia krytyczne, więc szukanie odpowiednika stworzenia w tym systemie może naprawdę pomóc! Zobacz przykład [tutaj](http://codex.dungeon-world.com/monster/5698559156420608).
- Czasami bezpośrednie tłumaczenie statystyk nie wchodzi w grę - nie przejmuj się. Jest na to [sposób](#użyj-fikcji))!

### Zdrowie, Pancerz i Umiejętności

- **Ochrona przed trafieniem** to _nie_ zdrowie. To zdolność do unikania niebezpieczeństw, czy to dzięki wytrzymałości, szybkości, czy umiejętnościom. Jeśli graczom ciężko będzie zadać cios, który spowoduje obrażenia, stworzenie ma wysoką **OCHR**. Dobrą zasadą jest, że 1 **HD** = 1 **OCHR**, zaczynając od minimum **3 OCHR** dla przeciętnego człowieka. Zazwyczaj myślę o **HD** jako odpowiedniku k6, które ma _średnią_ równą 3,5.
- **Pancerz** jest generalnie łatwy do odwzorowania; zwroty takie jak "jak skóra" i "jak zbroja płytowa" są naprawdę pomocne. Generalnie zignoruj THAC0 i użyj malejącego AC (7 = skóra, 5 = kolczuga, 3 = zbroja płytowa). Jeśli podane jest tylko rosnące AC, możesz użyć (12 = skóra, 14 = kolczuga, 16 = zbroja płytowa). Niezależnie od systemu, z którego dokonujesz konwersji, wartości pancerza mieszczą się w przedziale 1-3.
- **Siła** to zarówno zdrowie, jak i siła fizyczna.  Podaje również poziom wytrzymałości fizycznej i odporność na trucizny.  Spójrz na **HD** i **HP** stworzenia (nawet jeśli już to zrobiłeś dla **Ochrony przed trafieniem**). **SIŁ** opisuje jak długo stwór może pozostać w walce _po_ otrzymaniu ciosu, a nie zdolność do unikania niebezpieczeństwa. Jeśli stworzenie jest trudne do zabicia, ale _nie_ dlatego, że dobrze unika obrażeń, daj mu więcej **SIŁ**, ale _nie_ więcej **OCHR**. Dobrą zasadą jest porównanie stwora do przeciętnego człowieka (10 **SIŁ**) i odpowiednie podwyższanie lub obniżanie wartości.
- **Zręczność** jest prawdopodobnie najłatwiejsza z całej grupy zdolności. Zacznij od **10** jako podstawy, a jeśli stwór jest szczególnie szybki lub zwinny, zwiększ liczbę. Jeśli reaguje powoli lub jest niezgrabny, obniż wartość.
- **Wola** może być problematyczna. Rzadko pojawia się u potworów, ale kiedy już się pojawi, ma spore znaczenie. Wysoka **WOL** to silna osobowość, duch lub prezencja. **Morale** (**ML**) może być dobrym punktem odniesienia dla **Woli**. Morale zazwyczaj waha się pomiędzy 2-12; niektóre gry używają "Testu Morale", aby określić czy potwór ucieka (w Cairn używa się zamiast tego rzutu obronnego na **WOL**). Strażnik rzuca 2k6; jeśli wynik jest wyższy niż wynik **ML** potwora, stworzenie ucieka.

Poniższa tabela oferuje zasady konwersji **ML** na **WOL**.

|         |     |     |     |     |
| ------- | --- | --- | --- | --- |
| **ML**  | 4   | 8   | 10  | 12  |
| **WOL** | 6   | 12  | 15  | 18  |

### Walka

- Attack **damage** is pretty straightforward coming from games like OSE (or B / X); you can usually just copy them as-is. Double-check with the [weapons table](/cairn-srd/#weapons) if unsure.
- Multiple attacks (e.g. 2 x claw, 1 x sting) typically convert to [_Blast_](/cairn-srd#Blast) and/or the "two weapons" rule (e.g. d6+d6 is roll 2d6, keep highest).
- When in doubt, think about how much serious damage the creature is supposed to do. Remember that instead of raising attack damage a step, think about making it _enhanced_ in certain situations or use the _Blast_ and "two weapons" rule.

### Abilities & Magic

- Some abilities simply won't translate directly! That's OK, not every system is equivalent. If for example an OSR monster has an attack that assumes the PCs will be able to dodge or defend against, you might need to rewrite it a bit.
- Abilities can sometimes be made into weapons, and assign a damage die, making Critical Damage reveal the damage. More often you should simply let the ability or attack _happen_. Combat is dangerous, and it is up to the Warden to properly telegraph danger before the fighting begins.
- Spells are tricky; you can give wizardy-types Spellbooks but remember, the creature might _drop_ them when they are defeated. I like to make 1d4 dropped Spellbooks implode ([Die of Fate](/cairn-srd#die-of-fate)).
- Magical creatures can just "know" a bunch of spells. In this case make their corpse magical (and dangerous).1

### Stat Block Structure

 There are many ways to do this, but try to be consistent! In Cairn I write it like this:
**Name**
X HP, X Armor, X STR, X DEX, X WIL, Weapon (dX, _qualities_), special items

- Engaging descriptor of appearance or demeanor
- Quirk, tactic, or peculiarity making this NPC unique
- Special effect or critical damage consequence

## Użyj fikcji

Read the original stat block and surrounding commentary, then write a few sentences about the creature. Then convert what you've written to the Cairn monster stat block.

Take for example this creature:

### Foxwoman

Can take the form of a fox, a woman, or a 7' tall fox-headed.  
_HD 5, Speed 120', Armor 14, Morale 11, Attack: +4 d8hp (claw, bite or choke)_

- Defense: Cannot be harmed by metal
- Special: Can transform into a fox or a maiden with one fox leg hidden (same stats) at will

_**Using the example above, I can see that she:**_  

- Appears as a 7-foot tall with a human woman with the head of a fox.
- Looking at the stats, it seems like she doesn't have too high HP, and she's quite fast.
- Her **ML** is pretty high. She's obviously quite willful.
- Agile and lithe.
- Attacks with deadly teeth and claws (choking her prey if possible).
- Transforms into a fox at will.
- Immune to metal weapons.

_**What can we learn from this?**_  

- She's fast, and probably savvy in a fight. Starting from **3 HP**, then counting 1 **HP** per additional **HD** is **8 HP**.
- I don't think foxes have protective hides, and she's otherwise human beside her head. **No Armor**.
- She is decently strong. Normal human is 10 and she's bigger. **12 STR**.
- I can imagine her hunting prey over the snowy tundra. She's fast. **14 DEX**.
- Her **ML** is high but not the max. And foxes are pretty cunning, right? She'll stick it out in a tough situation. **15 WIL**.
- I'd go with **bite (d6)** for the teeth attack, and **claws (d8+d8)**, the same as any two-handed weapon.

_**In summary, that leaves us with the following opening stat block:**_  
_8 HP, 12 STR, 14 DEX, 15 WIL, teeth (d6), claws (d8+d8)_

_**Now on to her abilities:**_  
This is pretty straightforward. We simply read the fictional stat block we created earlier!

- We know what she looks like, and that she can transform into a fox at will.
- She cannot be harmed by metal; I'm taking this to mean she's immune to _metal weapons_.
- She chokes her victims.

_**Easy, right? Now to make it useful:**_  

- Appears as a 7-foot tall with a human woman with the head of a fox.
- Transforms into a fox at will.
- Immune to attacks from metal weapons.
- Critical damage: victim is choked unconscious, to be fed on soon after.

_**And that's it!**_
_**Behold, a converted Cairn monster:**_

#### Foxwoman

_8 HP, 12 STR, 14 DEX, 15 WIL, teeth (d6), claws (d8+d8)_

- Appears as a 7-foot tall with a human woman with the head of a fox.
- Transforms into a fox at will.
- Immune to attacks from metal weapons.
- Critical damage: victim is choked unconscious, to be fed on soon after.
