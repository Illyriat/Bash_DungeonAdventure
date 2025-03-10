#!/bin/bash

SECONDS=0

echo "What is your characters name? "
read NAME
echo "What is your characters class?
1 - Dragon Knight
2 - Necromancer
3 - Nightblade
4 - Sorcerer
5 - Templar
6 - Arcanist
7 - Warden"

read CLASS

case $CLASS in 
    1)
        type="Dragon Knight"
        about="These skillful masters-at-arms use the ancient Akaviri martial arts tradition of battle-spirit, and wield fearsome magic that pounds, shatters and physically alters the world around them."
        ;;
    2)
        type="Necromancer"
        about="Necromancers are masters of elemental damage that protect themselves with bone and flesh shields while buffing themselves and others with powerful Living Death magic."
        ;;
    3)
        type="Nightblade"
        about="Nightblades are adventurers and opportunists with a gift for getting in and out of trouble. Relying variously on stealth, blades and speed, they thrive on conflict and misfortune trusting to their luck and cunning to survive."
        ;;
    4)
        type="Sorcerer"
        about="Sorcerers summon and control weather phenomena - hurling lightning bolts and creating electrified fields, summoning tornadoes and impenetrable fog and calling upon Daedric forces to summon Storm Atronachs and magical armor."
        ;;
    5)
        type="Templar"
        about="These traveling knights call upon the power of light and the burning sun to deal massive damage to their enemies while restoring health, magicka and stamina to their allies. The Templar is a defensive champion, channeling the power of the sun to strengthen himself, aid allies, and smite foes with righteous magic. Frequently protecting themselves with heavy armor and a stalwart shield, Templars are bastions of order and justice. A templar’s wrath is formidable; they pride themselves on steadfastly resisting occult forces, be they mage, daedra, or undead. Templars specialize in protecting their allies from these perils, whether by intercepting harmful attacks, or restoring the wounds sustained by their comrades."
        ;;
    6)
        type="Arcanist"
        about="Currently no imformation is available."
        ;;
    7)
        type="Warden"
        about="Wardens are defenders of the Green, master storytellers whose nature tales become magical reality. They wield frost spells against enemies and summon animals to aid them."
        ;;
    *)
        echo "Inncorrectr input. Please choose an option: "
esac

echo "Welcome $NAME. Your chosen class was a $type. $about"