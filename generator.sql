create type size as enum ('Small', 'Medium', 'Large');

create type condition as enum ('Blinded', 'Charmed', 'Deafened', 'Frightened', 'Grappled', 'Incapacitated', 'Invisible', 'Paralyzed', 'Petrified', 'Poisoned', 'Prone', 'Restrained', 'Stunned', 'Unconscious', 'Exhausted');

create type damage as enum ('Acid', 'Bludgeoning', 'Cold', 'Fire', 'Force', 'Lightning', 'Necrotic', 'Piercing', 'Poison', 'Psychic', 'Radiant', 'Slashing', 'Thunder');

create type language as enum ('Elf', 'Common', 'Halfling', 'Orc', 'Dwarvish', 'Goblin', 'Draconic', 'Giant', 'Gnomish', 'Infernal', 'Abyssal', 'Celestial', 'Deep Speech', 'Druidic', 'Sylvan', 'Primordial', 'Quori', 'Thieves cant', 'Undercommon');

create type sense as enum ('Blindsight', 'Darkvision', 'Tremorsense', 'Truesight');

create type class as enum ('Barbarian', 'Bard', 'Cleric', 'Druid', 'Fighter', 'Monk', 'Paladin', 'Ranger', 'Rogue', 'Sorcerer', 'Warlock', 'Wizard');

create type race as enum ('Aasimar', 'Dragonborn', 'Dwarf', 'Elf', 'Gnome', 'Goliath', 'Halfling', 'Human', 'Orc', 'Tiefling');

create type school as enum ('Abjuration', 'Conjuration', 'Divination', 'Enchantment', 'Evocation', 'Illusion', 'Necromancy', 'Transmutation');

create type characteristic as enum ('Strength', 'Dexterity', 'Constitution', 'Intelligence', 'Wisdom', 'Charisma');

create domain spell_int as integer
    constraint val check ((VALUE >= 0) AND (VALUE <= 9));

create domain uint as integer
    constraint positive check (VALUE >= 0);

create type casting as enum ('Action', 'Bonus Action', 'Reaction', '1 Minute', '1 Hour', '10 Minutes', '8 Hours', '24 Hours', '12 Hours');

create type range as enum ('Self', 'Touch', 'Sight', '60 Feet', '120 Feet', '30 Feet', '5 Feet', '10 Feet', '15 Feet');

create type duration as enum ('Instantaneous', '1 Round', '10 Rounds', '1 Hour', '8 Hours', '100 Rounds', '24 Hours', 'Until Dispelled', '10 Days');

create type alignment as enum ('LG', 'LN', 'LE', 'NG', 'TN', 'NE', 'CG', 'CN', 'CE', 'U');

create type types as enum ('Aberration', 'Beast', 'Celestial', 'Construct', 'Dragon', 'Elemental', 'Fey', 'Fiend', 'Giant', 'Humanoid', 'Monstrosity', 'Ooze', 'Plant', 'Undead');

create type armor_cat as enum ('Light', 'Medium', 'Heavy', 'Shield');

create type weapon_type as enum ('Simple Melee', 'Simple Ranged', 'Martial Melee', 'Martial Ranged');

create type dmg as enum ('Bludgeoning', 'Piercing', 'Slashing', '-');

create type property as enum ('Light', 'Finesse', 'Thrown 20/60', 'Thrown 30/120', 'Two-Handed', 'Versatile 1d8', 'Ammunition 80/320', 'Loading', 'Versatile 1d10', 'Heavy', 'Reach', 'Special', 'Ammunition 25/100', 'Ammunition 30/120', 'Ammunition 100/400', 'Ammunition 150/600', 'Thrown 5/15');

create type dice as enum ('1d4', '1d8', '1d6', '1d10', '1d12', '2d6', '1', '0');

create type hit_dice as enum ('d4', 'd6', 'd8', 'd10', 'd12', 'd20');

create table creature
(
    max_pf             integer   not null,
    ac                 uint      not null,
    speed              double precision,
    speed_fly          double precision,
    speed_swim         double precision,
    size               size      not null,
    passive_perception uint      not null,
    id                 serial
        constraint creature_pk
            primary key,
    alignment          alignment not null,
    initiative         integer   not null,
    proficiency        integer   not null,
    hit_dice           hit_dice  not null,
    strength           uint      not null,
    dexterity          uint      not null,
    constitution       uint      not null,
    intelligence       uint      not null,
    wisdom             uint      not null,
    charisma           uint      not null
);

create table condition_immunities
(
    creature  integer   not null
        constraint condition_immunities_creature_id_fk
            references creature,
    condition condition not null,
    constraint immunities_pk
        primary key (creature, condition)
);

create table damage_immunities
(
    creature integer not null
        constraint damage_immunities_creature_id_fk
            references creature,
    damage   damage  not null,
    constraint damage_immunities_pk
        primary key (creature, damage)
);

create table languages
(
    creature integer  not null
        constraint languages_creature_id_fk
            references creature,
    language language not null,
    constraint languages_pk
        primary key (creature, language)
);

create table senses
(
    creature integer not null
        constraint senses_creature_id_fk
            references creature,
    sense    sense   not null,
    constraint senses_pk
        primary key (creature, sense)
);

create table skills
(
    creature        integer not null
        constraint skills_pk
            primary key
        constraint skills_creature_id_fk
            references creature,
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

create table saving_throws
(
    creature     integer not null
        constraint saving_throws_pk
            primary key
        constraint saving_throws_creature_id_fk
            references creature,
    strength     integer not null,
    constitution integer not null,
    intelligence integer not null,
    wisdom       integer not null,
    dexterity    integer not null,
    charisma     integer not null
);

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

create table monster
(
    id   integer          not null
        constraint monster_pk
            primary key
        constraint monster_creature_id_fk
            references creature,
    cr   double precision not null,
    type types            not null,
    name varchar
        constraint monster_pk_2
            unique
);

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

create table equipment
(
    character integer not null
        constraint equipment_creature_id_fk
            references creature,
    item      integer not null
        constraint equipment_item_id_fk
            references item,
    quantity  uint,
    constraint equipment_pk
        primary key (item, character)
);

create table compendium
(
    character integer not null
        constraint compendium_creature_id_fk
            references creature,
    spell     varchar not null
        constraint compendium_spell_name_fk
            references spell,
    constraint compendium_pk
        primary key (spell, character)
);

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

create table weapon_properties
(
    id       integer  not null
        constraint weapon_properties_weapon_id_fk
            references weapon,
    property property not null,
    constraint weapon_properties_pk
        primary key (id, property)
);

create table player
(
    id serial
        constraint player_pk
            primary key
);

create table character
(
    id         integer not null
        constraint character_pk
            primary key
        constraint character_creature_id_fk
            references creature,
    class      class   not null,
    level      uint    not null,
    background varchar,
    race       race    not null,
    player     integer not null
        constraint character_player_id_fk
            references player,
    name       varchar not null
);

create table campaign
(
    id varchar not null
        constraint campaign_pk
            primary key
);

create table char_camp
(
    campaign  varchar not null
        constraint char_camp_campaign_id_fk
            references campaign,
    character integer not null
        constraint char_camp_character_id_fk
            references character,
    curr_pf   integer not null,
    constraint char_camp_pk
        primary key (character, campaign)
);

