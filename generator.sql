create type size as enum ('Small', 'Medium', 'Large');

create type condition as enum ('Blinded', 'Charmed', 'Deafened', 'Frightened', 'Grappled', 'Incapacitated', 'Invisible', 'Paralyzed', 'Petrified', 'Poisoned', 'Prone', 'Restrained', 'Stunned', 'Unconscious', 'Exhausted');

create type damage as enum ('Acid', 'Bludgeoning', 'Cold', 'Fire', 'Force', 'Lightning', 'Necrotic', 'Piercing', 'Poison', 'Psychic', 'Radiant', 'Slashing', 'Thunder');

create type language as enum ('Elf', 'Common', 'Halfling', 'Orc', 'Dwarvish', 'Goblin', 'Draconic', 'Giant', 'Gnomish', 'Infernal', 'Abyssal', 'Celestial', 'Deep Speech', 'Druidic', 'Sylvan', 'Primordial', 'Quori', 'Thieves cant', 'Undercommon');

create type sense as enum ('Blindsight', 'Darkvision', 'Tremorsense', 'Truesight');

create type class as enum ('Barbarian', 'Bard', 'Cleric', 'Druid', 'Fighter', 'Monk', 'Paladin', 'Ranger', 'Rogue', 'Sorcerer', 'Warlock', 'Wizard');

create type race as enum ('Aasimar', 'Dragonborn', 'Dwarf', 'Elf', 'Gnome', 'Goliath', 'Halfling', 'Human', 'Orc', 'Tiefling', 'Goblin');

create type school as enum ('Abjuration', 'Conjuration', 'Divination', 'Enchantment', 'Evocation', 'Illusion', 'Necromancy', 'Transmutation');

create type characteristic as enum ('Strength', 'Dexterity', 'Constitution', 'Intelligence', 'Wisdom', 'Charisma');

create domain spell_int as integer
    constraint val check ((VALUE >= 0) AND (VALUE <= 9));

create domain uint as integer
    constraint positive check (VALUE >= 0);

create type item_type as enum ('Armor', 'Weapon', 'Item');

create type casting as enum ('Action', 'Bonus Action', 'Reaction', '1 Minute', '1 Hour', '10 Minutes', '8 Hours', '24 Hours', '12 Hours');

create type range as enum ('Self', 'Touch', 'Sight', '60 Feet', '120 Feet', '30 Feet', '5 Feet', '10 Feet', '15 Feet', '90 feet');

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
    charisma           uint      not null,
    "money (cp)"       integer
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
    name varchar          not null
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

create table monster_instance
(
    type integer not null
        constraint monster_instance_monster_id_fk
            references monster,
    id   serial
        constraint monster_instance_pk
            primary key,
    curr_pf uint not null,
    campaign varchar not null
        constraint monster_instance_campaign_id_fk
            references campaign
);

create table monster_equip
(
    id       integer not null
        constraint monster_equip_monster_instance_id_fk
            references monster_instance,
    item     integer not null
        constraint monster_equip_item_id_fk
            references item,
    quantity uint    not null,
    constraint monster_equip_pk
        primary key (id, item),
    item_type item_type not null
);

create table "user"
(
    username varchar not null
        constraint user_pk
            primary key,
    password varchar not null
);

create table character
(
    id            integer not null
        constraint character_pk
            primary key
        constraint character_creature_id_fk
            references creature,
    class         class   not null,
    level         uint    not null,
    background    varchar,
    race          race    not null,
    player        varchar
        constraint character_user_id_fk
            references "user",
    name          varchar not null,
    proficiencies varchar not null
);

create table campaign
(
    id     varchar not null
        constraint campaign_pk
            primary key,
    master varchar not null
        constraint campaign_user_id_fk
            references "user"
);

create table char_equip
(
    character integer not null
        constraint char_equip_creature_id_fk
            references creature,
    item      integer not null
        constraint char_equip_item_id_fk
            references item,
    quantity  uint,
    campaign  varchar not null
        constraint char_equip_campaign_id_fk
            references campaign,
    constraint char_equip_pk
        primary key (item, character),
    item_type item_type not null
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

create table action
(
    creature    integer not null
        constraint action_creature_id_fk
            references creature,
    name        varchar not null,
    description varchar not null,
    constraint action_pk
        primary key (creature, name)
);

create table trait
(
    creature    integer not null
        constraint trait_creature_id_fk
            references creature,
    name        varchar not null,
    description varchar not null,
    constraint trait_pk
        primary key (creature, name)
);

create table spellcaster
(
    id                 integer        not null
        constraint spellcaster_character_id_fk
            references character,
    caster_ability     characteristic not null,
    spell_save_dc      uint           not null,
    spell_bonus_attack uint           not null,
    slot_0             uint           not null,
    slot_1             uint           not null,
    slot_2             uint           not null,
    slot_3             uint           not null,
    slot_4             uint           not null,
    slot_5             uint           not null,
    slot_6             uint           not null,
    slot_8             uint           not null,
    slot_9             uint           not null,
    slot_7             uint           not null,
    campaign           varchar        not null
        constraint spellcaster_campaign_id_fk
            references campaign,
    constraint spellcaster_pk
        primary key (id, campaign)
);

create table compendium
(
    character integer not null,
    spell     varchar not null
        constraint compendium_spell_name_fk
            references spell,
    prepared  boolean not null,
    campaign  varchar not null,
    constraint compendium_pk
        primary key (character, campaign, spell),
    constraint compendium_spellcaster_campaign_id_fk
        foreign key (campaign, character) references spellcaster (campaign, id)
);

