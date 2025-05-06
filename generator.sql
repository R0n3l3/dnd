create sequence creature_id_seq
    as integer;

alter sequence creature_id_seq owner to postgres;

create type size as enum ('Small', 'Medium', 'Large');

alter type size owner to postgres;

create type condition as enum ('Blinded', 'Charmed', 'Deafened', 'Frightened', 'Grappled', 'Incapacitated', 'Invisible', 'Paralyzed', 'Petrified', 'Poisoned', 'Prone', 'Restrained', 'Stunned', 'Unconscious', 'Exhausted');

alter type condition owner to postgres;

create type damage as enum ('Acid', 'Bludgeoning', 'Cold', 'Fire', 'Force', 'Lightning', 'Necrotic', 'Piercing', 'Poison', 'Psychic', 'Radiant', 'Slashing', 'Thunder');

alter type damage owner to postgres;

create type language as enum ('Elf', 'Common', 'Halfling', 'Orc', 'Dwarvish', 'Goblin', 'Draconic', 'Giant', 'Gnomish', 'Infernal', 'Abyssal', 'Celestial', 'Deep Speech', 'Druidic', 'Sylvan', 'Primordial', 'Quori', 'Thieves cant', 'Undercommon');

alter type language owner to postgres;

create type sense as enum ('Blindsight', 'Darkvision', 'Tremorsense', 'Truesight');

alter type sense owner to postgres;

create type class as enum ('Barbarian', 'Bard', 'Cleric', 'Druid', 'Fighter', 'Monk', 'Paladin', 'Ranger', 'Rogue', 'Sorcerer', 'Warlock', 'Wizard');

alter type class owner to postgres;

create type race as enum ('Aasimar', 'Dragonborn', 'Dwarf', 'Elf', 'Gnome', 'Goliath', 'Halfling', 'Human', 'Orc', 'Tiefling');

alter type race owner to postgres;

create type school as enum ('Abjuration', 'Conjuration', 'Divination', 'Enchantment', 'Evocation', 'Illusion', 'Necromancy', 'Transmutation');

alter type school owner to postgres;

create type characteristic as enum ('Strength', 'Dexterity', 'Constitution', 'Intelligence', 'Wisdom', 'Charisma');

alter type characteristic owner to postgres;

create domain spell_int as integer
    constraint val check ((VALUE >= 0) AND (VALUE <= 9));

alter domain spell_int owner to postgres;

create domain uint as integer
    constraint positive check (VALUE >= 0);

alter domain uint owner to postgres;

create type casting as enum ('Action', 'Bonus Action', 'Reaction', '1 Minute', '1 Hour', '10 Minutes', '8 Hours', '24 Hours', '12 Hours');

alter type casting owner to postgres;

create type range as enum ('Self', 'Touch', 'Sight', '60 Feet', '120 Feet', '30 Feet', '5 Feet', '10 Feet', '15 Feet');

alter type range owner to postgres;

create type duration as enum ('Instantaneous', '1 Round', '10 Rounds', '1 Hour', '8 Hours', '100 Rounds', '24 Hours', 'Until Dispelled', '10 Days');

alter type duration owner to postgres;

create type alignment as enum ('LG', 'LN', 'LE', 'NG', 'TN', 'NE', 'CG', 'CN', 'CE', 'U');

alter type alignment owner to postgres;

create type types as enum ('Aberration', 'Beast', 'Celestial', 'Construct', 'Dragon', 'Elemental', 'Fey', 'Fiend', 'Giant', 'Humanoid', 'Monstrosity', 'Ooze', 'Plant', 'Undead');

alter type types owner to postgres;

create type armor_cat as enum ('Light', 'Medium', 'Heavy', 'Shield');

alter type armor_cat owner to postgres;

create type weapon_type as enum ('Simple Melee', 'Simple Ranged', 'Martial Melee', 'Martial Ranged');

alter type weapon_type owner to postgres;

create type dmg as enum ('Bludgeoning', 'Piercing', 'Slashing', '-');

alter type dmg owner to postgres;

create type property as enum ('Light', 'Finesse', 'Thrown 20/60', 'Thrown 30/120', 'Two-Handed', 'Versatile 1d8', 'Ammunition 80/320', 'Loading', 'Versatile 1d10', 'Heavy', 'Reach', 'Special', 'Ammunition 25/100', 'Ammunition 30/120', 'Ammunition 100/400', 'Ammunition 150/600', 'Thrown 5/15');

alter type property owner to postgres;

create type dice as enum ('1d4', '1d8', '1d6', '1d10', '1d12', '2d6', '1', '0');

alter type dice owner to postgres;

create table creature
(
    name               varchar                                             not null
        constraint creature_pk_2
            primary key,
    max_pf             integer                                             not null,
    ac                 uint                                                not null,
    speed              double precision,
    speed_fly          double precision,
    speed_swim         double precision,
    size               size                                                not null,
    passive_perception uint                                                not null,
    id                 integer default nextval('creature_id_seq'::regclass) not null
        constraint creature_pk
            unique,
    alignment          alignment                                           not null,
    initiative         integer                                             not null,
    proficiency        integer                                             not null
);
INSERT INTO public.creature (name, max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency) VALUES ('Beholder', 180, 18, null, 20, null, 'Large', 22, 6, 'LE', 2, 2);
INSERT INTO public.creature (name, max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency) VALUES ('Owlbear', 59, 13, 40, null, null, 'Large', 13, 7, 'U', 1, 2);
INSERT INTO public.creature (name, max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency) VALUES ('Goblin', 7, 15, 30, null, null, 'Small', 9, 8, 'NE', 2, 2);
INSERT INTO public.creature (name, max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency) VALUES ('Mimic', 58, 12, 15, null, null, 'Medium', 11, 9, 'TN', 1, 2);
INSERT INTO public.creature (name, max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency) VALUES ('Gelatinous Cube', 84, 6, 15, null, null, 'Large', 8, 11, 'U', -4, 2);


alter table creature
    owner to postgres;

alter sequence creature_id_seq owned by creature.id;

create table condition_immunities
(
    creature  integer   not null
        constraint condition_immunities_creature_id_fk
            references creature (id),
    condition condition not null,
    constraint immunities_pk
        primary key (creature, condition)
);
INSERT INTO public.condition_immunities (creature, condition) VALUES (6, 'Prone');
INSERT INTO public.condition_immunities (creature, condition) VALUES (9, 'Prone');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Blinded');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Charmed');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Deafened');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Exhausted');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Frightened');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Prone');


alter table condition_immunities
    owner to postgres;

create table damage_immunities
(
    creature integer not null,
    damage   damage  not null,
    constraint damage_immunities_pk
        primary key (creature, damage)
);
INSERT INTO public.damage_immunities (creature, damage) VALUES (9, 'Acid');


alter table damage_immunities
    owner to postgres;

create table languages
(
    creature integer  not null,
    language language not null,
    constraint languages_pk
        primary key (creature, language)
);
INSERT INTO public.languages (creature, language) VALUES (6, 'Deep Speech');
INSERT INTO public.languages (creature, language) VALUES (6, 'Undercommon');
INSERT INTO public.languages (creature, language) VALUES (8, 'Common');
INSERT INTO public.languages (creature, language) VALUES (8, 'Goblin');


alter table languages
    owner to postgres;

create table senses
(
    creature integer not null,
    sense    sense   not null,
    constraint senses_pk
        primary key (creature, sense)
);
INSERT INTO public.senses (creature, sense) VALUES (6, 'Darkvision');
INSERT INTO public.senses (creature, sense) VALUES (7, 'Darkvision');
INSERT INTO public.senses (creature, sense) VALUES (8, 'Darkvision');
INSERT INTO public.senses (creature, sense) VALUES (9, 'Darkvision');
INSERT INTO public.senses (creature, sense) VALUES (11, 'Blindsight');


alter table senses
    owner to postgres;

create table skills
(
    creature        integer not null
        constraint skills_pk
            primary key,
    stealth         integer not null,
    perception      integer not null,
    athletics       integer not null,
    acrobatics      integer not null,
    sleight_of_hand integer not null,
    arcana          integer not null,
    history         integer not null,
    investigation   integer not null,
    nature          integer not null,
    religion        integer not null,
    animal_handling integer not null,
    insight         integer not null,
    medicine        integer not null,
    survival        integer not null,
    deception       integer not null,
    intimidation    integer not null,
    performance     integer not null,
    persuasion      integer not null
);
INSERT INTO public.skills (creature, stealth, perception, athletics, acrobatics, sleight_of_hand, arcana, history, investigation, nature, religion, animal_handling, insight, medicine, survival, deception, intimidation, performance, persuasion) VALUES (6, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO public.skills (creature, stealth, perception, athletics, acrobatics, sleight_of_hand, arcana, history, investigation, nature, religion, animal_handling, insight, medicine, survival, deception, intimidation, performance, persuasion) VALUES (7, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO public.skills (creature, stealth, perception, athletics, acrobatics, sleight_of_hand, arcana, history, investigation, nature, religion, animal_handling, insight, medicine, survival, deception, intimidation, performance, persuasion) VALUES (8, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO public.skills (creature, stealth, perception, athletics, acrobatics, sleight_of_hand, arcana, history, investigation, nature, religion, animal_handling, insight, medicine, survival, deception, intimidation, performance, persuasion) VALUES (9, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


alter table skills
    owner to postgres;

create table saving_throws
(
    creature     integer not null
        constraint saving_throws_pk
            primary key,
    strength     integer not null,
    constitution integer not null,
    intelligence integer not null,
    wisdom       integer not null,
    dexterity    integer not null,
    charisma     integer not null
);
INSERT INTO public.saving_throws (creature, strength, constitution, intelligence, wisdom, dexterity, charisma) VALUES (6, 0, 0, 8, 7, 0, 8);


alter table saving_throws
    owner to postgres;

create table spell
(
    name          varchar   not null
        constraint spell_pk
            primary key,
    school        school    not null,
    level         spell_int not null,
    saving_throw  characteristic,
    ritual        boolean   not null,
    concentration boolean   not null,
    casting       casting   not null,
    range         range     not null,
    duration      duration  not null,
    description   varchar   not null
);
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Simulacrum', 'Illusion', 7, null, false, false, '12 Hours', 'Touch', 'Until Dispelled', e'You shape an illusory duplicate of one beast or humanoid that is within range for the entire casting time of the spell. The duplicate is a creature, partially real and formed from ice or snow, and it can take actions and otherwise be affected as a normal creature. It appears to be the same as the original, but it has half the creature’s hit point maximum and is formed without any equipment. Otherwise, the illusion uses all the statistics of the creature it duplicates, except that it is a construct.

The simulacrum is friendly to you and creatures you designate. It obeys your spoken commands, moving and acting in accordance with your wishes and acting on your turn in combat. The simulacrum lacks the ability to learn or become more powerful, so it never increases its level or other abilities, nor can it regain expended spell slots.

If the simulacrum is damaged, you can repair it in an alchemical laboratory, using rare herbs and minerals worth 100 gp per hit point it regains. The simulacrum lasts until it drops to 0 hit points, at which point it reverts to snow and melts instantly.

If you cast this spell again, any currently active duplicates you created with this spell are instantly destroyed.');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Clone', 'Necromancy', 8, null, false, false, '1 Hour', 'Touch', 'Instantaneous', e'This spell grows an inert duplicate of a living creature as a safeguard against death. This clone forms inside the vessel used in the spell\'s casting and grows to full size and maturity after 120 days; you can also choose to have the clone be a younger version of the same creature. It remains inert and endures indefinitely, as long as its vessel remains undisturbed.

At any time after the clone matures, if the original creature dies, its soul transfers to the clone, provided that the soul is free and willing to return. The clone is physically identical to the original and has the same personality, memories, and abilities, but none of the original’s equipment. The original creature’s physical remains, if they still exist, become inert and can’t thereafter be restored to life, since the creature’s soul is elsewhere.');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Power Word: Kill', 'Enchantment', 9, null, false, false, 'Action', '60 Feet', 'Instantaneous', 'You utter a word of power that can compel one creature you can see within range to die instantly. If the creature you chose has 100 hit points or fewer, it dies. Otherwise, the spell has no effect.');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Eldritch Blast', 'Evocation', 0, null, false, false, 'Action', '120 Feet', 'Instantaneous', e'A beam of crackling energy streaks toward a creature within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 force damage.
At Higher Levels. The spell creates more than one beam when you reach higher levels: two beams at 5th level, three beams at 11th level, and four beams at 17th level. You can direct the beams at the same target or at different ones. Make a separate attack roll for each beam.');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Alarm', 'Abjuration', 1, null, true, false, '1 Minute', '30 Feet', '8 Hours', e'You set an alarm against unwanted intrusion. Choose a door, a window, or an area within range that is no larger than a 20-foot cube. Until the spell ends, an alarm alerts you whenever a tiny or larger creature touches or enters the warded area. When you cast the spell, you can designate creatures that won’t set off the alarm. You also choose whether the alarm is mental or audible.

A mental alarm alerts you with a ping in your mind if you are within 1 mile of the warded area. This ping awakens you if you are sleeping. An audible alarm produces the sound of a hand bell for 10 seconds within 60 feet.

');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Beast Sense', 'Divination', 2, null, true, true, 'Action', 'Touch', '1 Hour', 'You touch a willing beast. For the duration of the spell');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Blinding Smite', 'Evocation', 3, 'Constitution', false, true, 'Bonus Action', 'Self', '10 Rounds', e'The next time you hit a creature with a melee weapon attack during this spell’s duration, you weapon flares with a bright light, and the attack deals an extra 3d8 radiant damage to the target. Additionally, the target must succeed on a Constitution saving throw or be blinded until the spell ends.

A creature blinded by this spell makes another Constitution saving throw at the end of each of its turns. On a successful save, it is no longer blinded.');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Find Greater Steed', 'Conjuration', 4, null, false, false, '10 Minutes', '30 Feet', 'Instantaneous', 'You summon a spirit that assumes the form of a loyal, majestic mount. Appearing in an unoccupied space within range, the spirit takes on a form you choose: a griffon, a pegasus, a peryton, a dire wolf, a rhinoceros, or a saber-toothed tiger. The creature has the statistics provided in the Monster Manual for the chosen form, though it is a celestial, a fey, or a fiend (your choice) instead of its normal creature type. Additionally, if it has an Intelligence score of 5 or lower, its Intelligence becomes 6, and it gains the ability to understand one language of your choice that you speak. You control the mount in combat. While the mount is within 1 mile of you, you can communicate with it telepathically. While mounted on it, you can make any spell you cast that targets only you also target the mount. The mount disappears temporarily when it drops to 0 hit points or when you dismiss it as an action. Casting this spell again re-summons the bonded mount, with all its hit points restored and any conditions removed. You can’t have more than one mount bonded by this spell or find steed at the same time. As an action, you can release a mount from its bond, causing it to disappear permanently. Whenever the mount disappears, it leaves behind any objects it was wearing or carrying.');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Mislead', 'Illusion', 5, null, false, true, 'Action', 'Self', '1 Hour', e'You become invisible at the same time that an illusory double of you appears where you are standing. The double lasts for the duration, but the invisibility ends if you attack or cast a spell.

 You can use your action to move your illusory double up to twice your speed and make it gesture, speak, and behave in whatever way you choose.

 You can see through its eyes and hear through its ears as if you were located where it is. On each of your turns as a bonus action, you can switch from using its senses to using your own, or back again. While you are using its senses, you are blinded and deafened in regard to your own surroundings.');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Disintegrate', 'Transmutation', 6, 'Dexterity', false, false, 'Action', '60 Feet', 'Instantaneous', e'A thin green ray springs from your pointing finger to a target that you can see within range. The target can be a creature, an object, or a creation of magical force, such as the wall created by wall of force.

A creature targeted by this spell must make a Dexterity saving throw. On a failed save, the target takes 10d6 + 40 force damage. The target is disintegrated if this damage leaves it with 0 hit points.

A disintegrated creature and everything it is wearing and carrying, except magic items, are reduced to a pile of fine gray dust. The creature can be restored to life only by means of a true resurrection or a wish spell.

This spell automatically disintegrates a Large or smaller nonmagical object or a creation of magical force. If the target is a Huge or larger object or creation of force, this spell disintegrates a 10-foot-cube portion of it. A magic item is unaffected by this spell.

At Higher Levels. When you cast this spell using a spell slot of 7th level or higher, the damage increases by 3d6 for each slot level above 6th.');


alter table spell
    owner to postgres;

create table char_points
(
    creature     integer not null
        constraint char_points_pk
            primary key
        constraint characteristic_creature_id_fk
            references creature (id),
    strength     integer not null,
    dexterity    integer not null,
    constitution integer not null,
    intelligence integer not null,
    charisma     integer not null,
    wisdom       integer not null
);
INSERT INTO public.char_points (creature, strength, dexterity, constitution, intelligence, charisma, wisdom) VALUES (6, 10, 14, 18, 17, 17, 15);
INSERT INTO public.char_points (creature, strength, dexterity, constitution, intelligence, charisma, wisdom) VALUES (7, 20, 12, 17, 3, 7, 12);
INSERT INTO public.char_points (creature, strength, dexterity, constitution, intelligence, charisma, wisdom) VALUES (8, 8, 14, 10, 10, 8, 8);
INSERT INTO public.char_points (creature, strength, dexterity, constitution, intelligence, charisma, wisdom) VALUES (9, 17, 12, 15, 5, 8, 13);
INSERT INTO public.char_points (creature, strength, dexterity, constitution, intelligence, charisma, wisdom) VALUES (11, 14, 3, 20, 1, 1, 6);


alter table char_points
    owner to postgres;

create table character
(
    id         integer not null
        constraint character_pk
            primary key
        constraint character_creature_id_fk
            references creature (id),
    class      class   not null,
    level      uint    not null,
    background varchar,
    race       race    not null,
    hit_dice   uint    not null
);

alter table character
    owner to postgres;

create table monster
(
    id   integer          not null
        constraint monster_pk
            primary key
        constraint monster_creature_id_fk
            references creature (id),
    cr   double precision not null,
    type types            not null
);
INSERT INTO public.monster (id, cr, type) VALUES (6, 13, 'Aberration');
INSERT INTO public.monster (id, cr, type) VALUES (7, 3, 'Monstrosity');
INSERT INTO public.monster (id, cr, type) VALUES (8, 0.25, 'Humanoid');
INSERT INTO public.monster (id, cr, type) VALUES (9, 2, 'Monstrosity');
INSERT INTO public.monster (id, cr, type) VALUES (11, 2, 'Ooze');


alter table monster
    owner to postgres;

create table item
(
    name        varchar          not null
        constraint item_pk_2
            unique,
    id          serial
        constraint item_pk
            primary key,
    description varchar,
    weight      double precision not null,
    "cost (cp)" uint             not null
);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Padded Armor', 1, 'Padded armor consists of quilted layers of cloth and batting.', 8, 500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Leather Armor', 2, 'The breastplate and shoulder protectors of this armor are made of leather that has been stiffened by being boiled in oil. The rest of the armor is made of softer and more flexible materials.', 10, 1000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Studded Leather Armor', 3, 'Made from tough but flexible leather, studded leather is reinforced with close-set rivets or spikes', 13, 4500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Hide Armor', 4, 'This crude armor consists of thick furs and pelts. It is commonly worn by barbarian tribes, evil humanoids, and other folk who lack access to the tools and materials needed to create better armor.', 12, 1000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Chain Shirt', 5, 'Made of interlocking metal rings, a chain shirt is worn between layers of clothing or leather. This armor offers modest protection to the wearer''s upper body and allows the sound of the rings rubbing against one another to be muffled by outer layers.', 20, 5000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Scale Mail', 6, 'This armor consists of a coat and leggings (and perhaps a separate skirt) of leather covered with overlapping pieces of metal, much like the scales of a fish. The suit includes gauntlets.', 45, 5000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Spiked Armor', 7, 'Spiked armor is a rare type of medium armor made by dwarves. It consists of a leather coat and leggings covered with spikes that are usually made of metal.', 45, 7500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Breastplate', 8, 'This armor consists of a fitted metal chest piece worn with supple leather. Although it leaves the legs and arms relatively unprotected, this armor provides good protection for the wearer''s vital organs while leaving the wearer relatively unencumbered.', 20, 40000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Halfplate', 9, 'Half plate consists of shaped metal plates that cover most of the wearer''s body. It does not include leg protection beyond simple greaves that are attached with leather straps.', 40, 75000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Ring Mail', 10, 'This armor is leather armor with heavy rings sewn into it. The rings help reinforce the armor against blows from swords and axes. Ring mail is inferior to chain mail, and it''s usually worn only by those who can''t afford better armor.', 40, 3000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Chain Mail', 11, 'Made of interlocking metal rings, chain mail includes a layer of quilted fabric worn underneath the mail to prevent chafing and to cushion the impact of blows. The suit includes gauntlets.', 55, 7500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Splint Armor', 12, 'This armor is made of narrow vertical strips of metal riveted to a backing of leather that is worn over cloth padding. Flexible chain mail protects the joints.', 60, 20000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Plate Armor', 13, 'Plate consists of shaped, interlocking metal plates to cover the entire body. A suit of plate includes gauntlets, heavy leather boots, a visored helmet, and thick layers of padding underneath the armor. Buckles and straps distribute the weight over the body.', 65, 150000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Shield', 14, 'A shield is made from wood or metal and is carried in one hand. Wielding a shield increases your Armor Class by 2. You can benefit from only one shield at a time.', 6, 1000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Club', 15, null, 2, 10);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Dagger', 16, null, 1, 200);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Greatclub', 17, null, 10, 20);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Handaxe', 18, null, 2, 500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Javelin', 19, null, 2, 50);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Light Hammer', 20, null, 2, 200);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Mace', 21, null, 4, 500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Quarterstaff', 22, null, 4, 20);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Sickle', 23, null, 2, 100);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Spear', 24, null, 3, 100);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Unarmed Strike', 25, null, 0, 0);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Light Crossbow', 26, null, 5, 2500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Dart', 28, null, 0.25, 5);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Shortbow', 29, null, 2, 2500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Sling', 30, null, 0, 10);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Battleaxe', 31, null, 4, 1000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Flail', 32, null, 2, 1000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Glaive', 33, null, 6, 2000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Greataxe', 34, null, 7, 3000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Greatsword', 35, null, 6, 5000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Halberd', 36, null, 6, 2000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Lance', 37, null, 6, 1000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Longsword', 38, null, 3, 1500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Maul', 39, null, 10, 1000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Morningstar', 40, null, 4, 1500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Pike', 41, null, 18, 500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Rapier', 42, null, 2, 2500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Scimitar', 43, null, 3, 2500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Shortsword', 44, null, 2, 1000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Trident', 45, null, 4, 500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('War Pick', 46, null, 2, 500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Warhammer', 47, null, 2, 1500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Whip', 48, null, 3, 200);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Blowgun', 49, null, 1, 1000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Hand Crossbow', 50, null, 3, 7500);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Heavy Crossbow', 51, null, 18, 5000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Longbow', 52, null, 2, 5000);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Net', 53, null, 3, 100);

alter table item
    owner to postgres;

create table equipment
(
    character integer not null
        constraint equipment_character_id_fk
            references character,
    item      integer not null
        constraint equipment_item_id_fk
            references item,
    quantity  uint,
    constraint equipment_pk
        primary key (item, character)
);

alter table equipment
    owner to postgres;

create table compendium
(
    character integer not null
        constraint compendium_character_id_fk
            references character,
    spell     varchar not null
        constraint compendium_spell_name_fk
            references spell,
    constraint compendium_pk
        primary key (spell, character)
);

alter table compendium
    owner to postgres;

create table armor
(
    id          integer   not null
        constraint armor_pk
            primary key
        constraint armor_item_id_fk
            references item,
    type        armor_cat not null,
    ac          uint      not null,
    strength    uint,
    stealth_dis boolean   not null
);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (1, 'Light', 11, null, true);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (2, 'Light', 11, null, false);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (3, 'Light', 12, null, false);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (4, 'Medium', 12, null, false);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (5, 'Medium', 13, null, false);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (6, 'Medium', 14, null, true);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (7, 'Medium', 14, null, true);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (8, 'Medium', 14, null, false);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (9, 'Medium', 15, null, true);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (10, 'Heavy', 14, null, true);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (11, 'Heavy', 16, 13, true);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (12, 'Heavy', 17, 15, true);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (13, 'Heavy', 18, 15, true);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (14, 'Shield', 2, null, false);


alter table armor
    owner to postgres;

create table weapon
(
    id          integer     not null
        constraint weapon_pk
            primary key
        constraint weapon_item_id_fk
            references item,
    damage_type dmg         not null,
    damage      dice,
    type        weapon_type not null
);
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (15, 'Bludgeoning', '1d4', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (16, 'Piercing', '1d4', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (17, 'Bludgeoning', '1d8', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (18, 'Slashing', '1d6', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (19, 'Piercing', '1d6', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (20, 'Bludgeoning', '1d4', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (21, 'Bludgeoning', '1d6', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (22, 'Bludgeoning', '1d6', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (23, 'Slashing', '1d4', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (24, 'Piercing', '1d6', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (25, 'Bludgeoning', '1', 'Simple Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (26, 'Piercing', '1d8', 'Simple Ranged');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (28, 'Piercing', '1d4', 'Simple Ranged');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (29, 'Piercing', '1d6', 'Simple Ranged');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (30, 'Bludgeoning', '1d4', 'Simple Ranged');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (31, 'Slashing', '1d8', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (32, 'Bludgeoning', '1d8', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (33, 'Slashing', '1d10', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (34, 'Slashing', '1d12', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (35, 'Slashing', '2d6', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (36, 'Slashing', '1d10', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (37, 'Piercing', '1d12', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (38, 'Slashing', '1d8', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (39, 'Bludgeoning', '2d6', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (40, 'Piercing', '1d8', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (41, 'Piercing', '1d10', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (42, 'Piercing', '1d8', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (43, 'Slashing', '1d6', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (44, 'Piercing', '1d6', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (45, 'Piercing', '1d6', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (46, 'Piercing', '1d8', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (47, 'Bludgeoning', '1d8', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (48, 'Slashing', '1d4', 'Martial Melee');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (49, 'Piercing', '1', 'Martial Ranged');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (50, 'Piercing', '1d6', 'Martial Ranged');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (51, 'Piercing', '1d10', 'Martial Ranged');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (52, 'Piercing', '1d8', 'Martial Ranged');
INSERT INTO public.weapon (id, damage_type, damage, type) VALUES (53, '-', '0', 'Martial Ranged');


alter table weapon
    owner to postgres;

create table weapon_properties
(
    id       integer  not null
        constraint weapon_properties_weapon_id_fk
            references weapon,
    property property not null,
    constraint weapon_properties_pk
        primary key (id, property)
);
INSERT INTO public.weapon_properties (id, property) VALUES (15, 'Light');
INSERT INTO public.weapon_properties (id, property) VALUES (16, 'Finesse');
INSERT INTO public.weapon_properties (id, property) VALUES (16, 'Light');
INSERT INTO public.weapon_properties (id, property) VALUES (16, 'Thrown 20/60');
INSERT INTO public.weapon_properties (id, property) VALUES (17, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (18, 'Light');
INSERT INTO public.weapon_properties (id, property) VALUES (18, 'Thrown 20/60');
INSERT INTO public.weapon_properties (id, property) VALUES (19, 'Thrown 30/120');
INSERT INTO public.weapon_properties (id, property) VALUES (20, 'Light');
INSERT INTO public.weapon_properties (id, property) VALUES (20, 'Thrown 20/60');
INSERT INTO public.weapon_properties (id, property) VALUES (22, 'Versatile 1d8');
INSERT INTO public.weapon_properties (id, property) VALUES (23, 'Light');
INSERT INTO public.weapon_properties (id, property) VALUES (24, 'Thrown 20/60');
INSERT INTO public.weapon_properties (id, property) VALUES (24, 'Versatile 1d8');
INSERT INTO public.weapon_properties (id, property) VALUES (26, 'Ammunition 80/320');
INSERT INTO public.weapon_properties (id, property) VALUES (26, 'Loading');
INSERT INTO public.weapon_properties (id, property) VALUES (26, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (28, 'Finesse');
INSERT INTO public.weapon_properties (id, property) VALUES (28, 'Thrown 20/60');
INSERT INTO public.weapon_properties (id, property) VALUES (29, 'Ammunition 80/320');
INSERT INTO public.weapon_properties (id, property) VALUES (29, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (30, 'Ammunition 30/120');
INSERT INTO public.weapon_properties (id, property) VALUES (31, 'Versatile 1d10');
INSERT INTO public.weapon_properties (id, property) VALUES (33, 'Heavy');
INSERT INTO public.weapon_properties (id, property) VALUES (33, 'Reach');
INSERT INTO public.weapon_properties (id, property) VALUES (33, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (34, 'Heavy');
INSERT INTO public.weapon_properties (id, property) VALUES (34, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (35, 'Heavy');
INSERT INTO public.weapon_properties (id, property) VALUES (35, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (36, 'Heavy');
INSERT INTO public.weapon_properties (id, property) VALUES (36, 'Reach');
INSERT INTO public.weapon_properties (id, property) VALUES (36, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (37, 'Reach');
INSERT INTO public.weapon_properties (id, property) VALUES (37, 'Special');
INSERT INTO public.weapon_properties (id, property) VALUES (38, 'Versatile 1d10');
INSERT INTO public.weapon_properties (id, property) VALUES (39, 'Heavy');
INSERT INTO public.weapon_properties (id, property) VALUES (39, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (41, 'Heavy');
INSERT INTO public.weapon_properties (id, property) VALUES (41, 'Reach');
INSERT INTO public.weapon_properties (id, property) VALUES (41, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (42, 'Finesse');
INSERT INTO public.weapon_properties (id, property) VALUES (43, 'Finesse');
INSERT INTO public.weapon_properties (id, property) VALUES (43, 'Light');
INSERT INTO public.weapon_properties (id, property) VALUES (44, 'Finesse');
INSERT INTO public.weapon_properties (id, property) VALUES (44, 'Light');
INSERT INTO public.weapon_properties (id, property) VALUES (45, 'Thrown 20/60');
INSERT INTO public.weapon_properties (id, property) VALUES (45, 'Versatile 1d8');
INSERT INTO public.weapon_properties (id, property) VALUES (47, 'Versatile 1d8');
INSERT INTO public.weapon_properties (id, property) VALUES (48, 'Finesse');
INSERT INTO public.weapon_properties (id, property) VALUES (48, 'Reach');
INSERT INTO public.weapon_properties (id, property) VALUES (49, 'Ammunition 25/100');
INSERT INTO public.weapon_properties (id, property) VALUES (49, 'Loading');
INSERT INTO public.weapon_properties (id, property) VALUES (50, 'Ammunition 30/120');
INSERT INTO public.weapon_properties (id, property) VALUES (50, 'Loading');
INSERT INTO public.weapon_properties (id, property) VALUES (50, 'Light');
INSERT INTO public.weapon_properties (id, property) VALUES (51, 'Ammunition 100/400');
INSERT INTO public.weapon_properties (id, property) VALUES (51, 'Heavy');
INSERT INTO public.weapon_properties (id, property) VALUES (51, 'Loading');
INSERT INTO public.weapon_properties (id, property) VALUES (51, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (52, 'Ammunition 150/600');
INSERT INTO public.weapon_properties (id, property) VALUES (52, 'Heavy');
INSERT INTO public.weapon_properties (id, property) VALUES (52, 'Two-Handed');
INSERT INTO public.weapon_properties (id, property) VALUES (53, 'Special');
INSERT INTO public.weapon_properties (id, property) VALUES (53, 'Thrown 5/15');


alter table weapon_properties
    owner to postgres;

