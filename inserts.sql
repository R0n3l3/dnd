INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (2, 'Light', 11, null, false);
INSERT INTO public.armor (id, type, ac, strength, stealth_dis) VALUES (1, 'Light', 11, null, true);
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
INSERT INTO public.condition_immunities (creature, condition) VALUES (6, 'Prone');
INSERT INTO public.condition_immunities (creature, condition) VALUES (9, 'Prone');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Blinded');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Charmed');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Deafened');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Exhausted');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Frightened');
INSERT INTO public.condition_immunities (creature, condition) VALUES (11, 'Prone');
INSERT INTO public.condition_immunities (creature, condition) VALUES (13, 'Poisoned');
INSERT INTO public.creature (max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency, hit_dice, strength, dexterity, constitution, intelligence, wisdom, charisma, "money (cp)") VALUES (7, 15, 30, null, null, 'Small', 9, 8, 'NE', 2, 2, 'd6', 8, 14, 10, 10, 8, 8, null);
INSERT INTO public.creature (max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency, hit_dice, strength, dexterity, constitution, intelligence, wisdom, charisma, "money (cp)") VALUES (84, 6, 15, null, null, 'Large', 8, 11, 'U', -4, 2, 'd10', 14, 3, 20, 1, 6, 1, null);
INSERT INTO public.creature (max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency, hit_dice, strength, dexterity, constitution, intelligence, wisdom, charisma, "money (cp)") VALUES (58, 12, 15, null, null, 'Medium', 11, 9, 'TN', 1, 2, 'd8', 17, 12, 15, 5, 13, 8, null);
INSERT INTO public.creature (max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency, hit_dice, strength, dexterity, constitution, intelligence, wisdom, charisma, "money (cp)") VALUES (180, 18, null, 20, null, 'Large', 22, 6, 'LE', 2, 2, 'd10', 10, 14, 18, 17, 15, 17, null);
INSERT INTO public.creature (max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency, hit_dice, strength, dexterity, constitution, intelligence, wisdom, charisma, "money (cp)") VALUES (59, 13, 40, null, null, 'Large', 13, 7, 'U', 1, 2, 'd10', 20, 12, 17, 3, 12, 7, null);
INSERT INTO public.creature (max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency, hit_dice, strength, dexterity, constitution, intelligence, wisdom, charisma, "money (cp)") VALUES (22, 16, 25, null, null, 'Small', 14, 12, 'CG', 1, 2, 'd10', 12, 13, 14, 11, 15, 10, null);
INSERT INTO public.creature (max_pf, ac, speed, speed_fly, speed_swim, size, passive_perception, id, alignment, initiative, proficiency, hit_dice, strength, dexterity, constitution, intelligence, wisdom, charisma, "money (cp)") VALUES (73, 17, 50, null, null, 'Small', 13, 13, 'CG', 4, 4, 'd8', 8, 18, 14, 10, 16, 8, 1500);
INSERT INTO public.damage_immunities (creature, damage) VALUES (9, 'Acid');
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
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Backpack', 55, 'A backpack can hold one cubic foot or 30 pounds of gear. You can also strap items, such as a bedroll or a coil of rope, to the outside of a backpack.', 5, 200);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Bedroll', 56, null, 7, 100);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Mess Kit', 57, 'This tin box contains a cup and simple cutlery. The box clamps together, and one side can be used as a cooking pan and the other as a plate or shallow bowl.', 1, 20);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Tinderbox', 58, 'This small container holds flint, fire steel, and tinder (usually dry cloth soaked in light oil) used to kindle a fire. Using it to light a torch - or anything else with abundant, exposed fuel - takes an action. Lighting any other fire takes 1 minute.', 1, 50);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Torch', 59, 'A torch burns for 1 hour, providing bright light in a 20-foot radius and dim light for an additional 20 feet. If you make a melee attack with a burning torch and hit, it deals 1 fire damage.', 1, 1);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Ration', 60, 'Rations consist of dry foods suitable for extended travel, including jerky, dried fruit, hardtack, and nuts.', 2, 50);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Waterskin', 61, 'A waterskin can hold up to 4 pints of liquid.', 5, 20);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Hempen Rope', 62, 'Rope, whether made of hemp or silk, has 2 hit points and can be burst with a DC 17 Strength check.', 10, 100);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Crowbar', 67, 'Using a crowbar grants advantage to Strength checks where the crowbar''s leverage can be applied.', 5, 200);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Hammer', 68, null, 3, 100);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Piton', 69, null, 0.25, 5);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Card set', 70, 'If you are proficient with a gaming set, you can add your proficiency bonus to ability checks you make to play a game with that set. Each type of gaming set requires a separate proficiency.', 0, 50);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Cook''s Utensils', 71, 'These special tools include the items needed to pursue a craft or trade. Proficiency with a set of artisan''s tools lets you add your proficiency bonus to any ability checks you make using the tools in your craft. Each type of artisan''s tools requires a separate proficiency.', 8, 100);
INSERT INTO public.item (name, id, description, weight, "cost (cp)") VALUES ('Heal Potion', 72, 'You regain 2d4+2 hit points when you drink this potion. Drinking or administering a potion takes an action.', 0.5, 5000);
INSERT INTO public.languages (creature, language) VALUES (6, 'Deep Speech');
INSERT INTO public.languages (creature, language) VALUES (6, 'Undercommon');
INSERT INTO public.languages (creature, language) VALUES (8, 'Common');
INSERT INTO public.languages (creature, language) VALUES (8, 'Goblin');
INSERT INTO public.languages (creature, language) VALUES (12, 'Common');
INSERT INTO public.languages (creature, language) VALUES (12, 'Gnomish');
INSERT INTO public.languages (creature, language) VALUES (13, 'Common');
INSERT INTO public.languages (creature, language) VALUES (13, 'Goblin');
INSERT INTO public.monster (id, cr, type, name) VALUES (6, 13, 'Aberration', 'Beholder');
INSERT INTO public.monster (id, cr, type, name) VALUES (7, 3, 'Monstrosity', 'Owlbear');
INSERT INTO public.monster (id, cr, type, name) VALUES (8, 0.25, 'Humanoid', 'Goblin');
INSERT INTO public.monster (id, cr, type, name) VALUES (9, 2, 'Monstrosity', 'Mimic');
INSERT INTO public.monster (id, cr, type, name) VALUES (11, 2, 'Ooze', 'Gelatinous Cube');
INSERT INTO public.saving_throws (creature, strength, constitution, intelligence, wisdom, dexterity, charisma) VALUES (6, 0, 0, 8, 7, 0, 8);
INSERT INTO public.saving_throws (creature, strength, constitution, intelligence, wisdom, dexterity, charisma) VALUES (12, 3, 2, 0, 2, 1, 0);
INSERT INTO public.saving_throws (creature, strength, constitution, intelligence, wisdom, dexterity, charisma) VALUES (13, 3, 2, 0, 3, 8, -1);
INSERT INTO public.senses (creature, sense) VALUES (6, 'Darkvision');
INSERT INTO public.senses (creature, sense) VALUES (7, 'Darkvision');
INSERT INTO public.senses (creature, sense) VALUES (8, 'Darkvision');
INSERT INTO public.senses (creature, sense) VALUES (9, 'Darkvision');
INSERT INTO public.senses (creature, sense) VALUES (11, 'Blindsight');
INSERT INTO public.senses (creature, sense) VALUES (12, 'Darkvision');
INSERT INTO public.senses (creature, sense) VALUES (13, 'Darkvision');
INSERT INTO public.skills (creature, stealth, perception, athletics, acrobatics, sleight_of_hand, arcana, history, investigation, nature, religion, animal_handling, insight, medicine, survival, deception, intimidation, performance, persuasion) VALUES (6, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO public.skills (creature, stealth, perception, athletics, acrobatics, sleight_of_hand, arcana, history, investigation, nature, religion, animal_handling, insight, medicine, survival, deception, intimidation, performance, persuasion) VALUES (7, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO public.skills (creature, stealth, perception, athletics, acrobatics, sleight_of_hand, arcana, history, investigation, nature, religion, animal_handling, insight, medicine, survival, deception, intimidation, performance, persuasion) VALUES (8, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO public.skills (creature, stealth, perception, athletics, acrobatics, sleight_of_hand, arcana, history, investigation, nature, religion, animal_handling, insight, medicine, survival, deception, intimidation, performance, persuasion) VALUES (9, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO public.skills (creature, stealth, perception, athletics, acrobatics, sleight_of_hand, arcana, history, investigation, nature, religion, animal_handling, insight, medicine, survival, deception, intimidation, performance, persuasion) VALUES (12, 1, 4, 1, 1, 1, 0, 0, 0, 2, 0, 4, 2, 2, 2, 0, 0, 0, 0);
INSERT INTO public.skills (creature, stealth, perception, athletics, acrobatics, sleight_of_hand, arcana, history, investigation, nature, religion, animal_handling, insight, medicine, survival, deception, intimidation, performance, persuasion) VALUES (13, 8, 3, -1, 8, 4, 0, 0, 0, 0, 0, 3, 7, 3, 3, -1, -1, -1, 3);
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
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Minor Illusion', 'Illusion', 0, 'Intelligence', false, false, 'Action', '30 Feet', '10 Rounds', e'You create a sound or an image of an object within range that lasts for the duration. The illusion also ends if you dismiss it as an action or cast this spell again.

If you create a sound, its volume can range from a whisper to a scream. It can be your voice, someone else’s voice, a lion’s roar, a beating of drums, or any other sound you choose. The sound continues unabated throughout the duration, or you can make discrete sounds at different times before the spell ends.

If you create an image of an object—such as a chair, muddy footprints, or a small chest—it must be no larger than a 5-foot cube. The image can’t create sound, light, smell, or any other sensory effect. Physical interaction with the image reveals it to be an illusion, because things can pass through it.

If a creature uses its action to examine the sound or image, the creature can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the illusion becomes faint to the creature.');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Cure Wounds', 'Evocation', 1, null, false, false, 'Action', 'Touch', 'Instantaneous', e'A creature you touch regains a number of hit points equal to 1d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs.
At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the Healing increases by 1d8 for each slot level above 1st.');
INSERT INTO public.spell (name, school, level, saving_throw, ritual, concentration, casting, range, duration, description) VALUES ('Hunter''s Mark', 'Divination', 1, null, false, true, 'Bonus Action', '90 feet', '1 Hour', e'You choose a creature you can see within range and mystically mark it as your quarry. Until the spell ends, you deal an extra 1d6 damage to the target whenever you hit it with a weapon attack, and you have advantage on any Wisdom (Perception) or Wisdom (Survival) check you make to find it. If the target drops to 0 hit points before this spell ends, you can use a bonus action on a subsequent turn of yours to mark a new creature.
At Higher Levels: When you cast this spell using a spell slot of 3rd or 4th level, you can maintain your Concentration on the spell for up to 8 hours. When you use a spell slot of 5th level or higher, you can maintain your concentr⁠ation on the spell for up to 24 hours.');
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
INSERT INTO public.action (creature, name, description) VALUES (6, 'Bite', 'Melee Weapon Attack: +5 to hit, reach 5 ft., one target. Hit: 14 (4d6) piercing damage.');
INSERT INTO public.action (creature, name, description) VALUES (6, 'Eye Rays', e'The beholder shoots three of the following magical eye rays at random (reroll duplicates), choosing one to three targets it can see within 120 feet of it:

1- Charm Ray. The targeted creature must succeed on a DC 16 Wisdom saving throw or be charmed by the beholder for 1 hour, or until the beholder harms the creature.

2- Paralyzing Ray. The targeted creature must succeed on a DC 16 Constitution saving throw or be paralyzed for 1 minute. The target can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.

3- Fear Ray. The targeted creature must succeed on a DC 16 Wisdom saving throw or be frightened for 1 minute. The target can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.

4- Slowing Ray. The targeted creature must succeed on a DC 16 Dexterity saving throw. On a failed save, the target\'s speed is halved for 1 minute. In addition, the creature can\'t take reactions, and it can take either an action or a bonus action on its turn, not bofh. The creature can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.

5- Enervation Ray. The targeted creature must make a DC 16 Constitution saving throw, taking 36 (8d8) necrotic damage on a failed save, or half as much damage on a successful one.

6- Telekinetic Ray. If the target is a creature, it must succeed on a DC 16 Strength saving throw or the beholder moves it up to 30 feet in any direction. It is restrained by the ray\'s telekinetic grip until the start of the beholder\'s next turn or until the beholder is incapacitated. If the target is an object weighing 300 pounds or less that isn\'t being worn or carried, it is moved up to 30 feet in any direction. The beholder can also exert fine control on objects with this ray, such as manipulating a simple tool or opening a door or a container.

7- Sleep Ray. The targeted creature must succeed on a DC 16 Wisdom saving throw or fall asleep and remain unconscious for 1 minute. The target awakens if it takes damage or another creature takes an action to wake it. This ray has no effect on constructs and undead.

8- Petrification Ray. The targeted creature must make a DC 16 Dexterity saving throw. On a failed save, the creature begins to turn to stone and is restrained. It must repeat the saving throw at the end of its next turn. On a success, the effect ends. On a failure, the creature is petrified until freed by the greater restoration spell or other magic.

9- Disintegration Ray. If the target is a creature, it must succeed on a DC 16 Dexterity saving throw or take 45 (10d8) force damage. If this damage reduces the creature to 0 hit points, its body becomes a pile of fine gray dust. If the target is a Large or smaller non magical object or creation of magical force, it is disintegrated without a saving throw. If the target is a Huge or larger object or creation of magical force, this ray disintegrates a 10-foot cube of it.

10- Death Ray. The targeted creature must succeed on a DC 16 Dexterity saving throw or take 55 (10d10) necrotic damage. The target dies if the ray reduces it to 0 hit points.');
INSERT INTO public.action (creature, name, description) VALUES (6, 'Legendary Action', e'The beholder can take 3 legendary actions, using the Eye Ray option below. It can take only one legendary action at a time and only at the end of another creature\'s turn. The beholder regains spent legendary actions at the start of its turn.

Eye Ray. The beholder uses one random eye ray.');
INSERT INTO public.action (creature, name, description) VALUES (7, 'Multiattack', 'The owlbear makes two attacks: one with its beak and one with its claws.');
INSERT INTO public.action (creature, name, description) VALUES (7, 'Beak', 'Melee Weapon Attack: +7 to hit, reach 5 ft., one creature. Hit: 10 (1d10 + 5) piercing damage.');
INSERT INTO public.action (creature, name, description) VALUES (7, 'Claws', 'Melee Weapon Attack: +7 to hit, reach 5 ft., one target. Hit: 14 (2d8 + 5) slashing damage.');
INSERT INTO public.action (creature, name, description) VALUES (8, 'Scimitar', 'Melee Weapon Attack: +4 to hit, reach 5 ft., one target. Hit: 5 (1d6 + 2) slashing damage.');
INSERT INTO public.action (creature, name, description) VALUES (8, 'Shortbow', 'Ranged Weapon Attack: +4 to hit, range 80/320 ft., one target. Hit: 5 (1d6 + 2) piercing damage.');
INSERT INTO public.action (creature, name, description) VALUES (9, 'Pseudopod', 'Melee Weapon Attack: +5 to hit, reach 5 ft., one target. Hit: 7 (1d8 + 3) bludgeoning damage. If the mimic is in object form, the target is subjected to its Adhesive trait.');
INSERT INTO public.action (creature, name, description) VALUES (9, 'Bite', 'Melee Weapon Attack: +5 to hit, reach 5 ft., one target. Hit: 7 (1d8 + 3) piercing damage plus 4 (1d8) acid damage.');
INSERT INTO public.action (creature, name, description) VALUES (11, 'Pseudopod', 'Melee Weapon Attack: +4 to hit');
INSERT INTO public.action (creature, name, description) VALUES (11, 'Engulf', e'The cube moves up to its speed. While doing so, it can enter Large or smaller creatures\' spaces. Whenever the cube enters a creature\'s space, the creature must make a DC 12 Dexterity saving throw.

On a successful save, the creature can choose to be pushed 5 feet back or to the side of the cube. A creature that chooses not to be pushed suffers the consequences of a failed saving throw.

On a failed save, the cube enters the creature\'s space, and the creature takes 10 (3d6) acid damage and is engulfed. The engulfed creature can\'t breathe, is restrained, and takes 21 (6d6) acid damage at the start of each of the cube\'s turns. When the cube moves, the engulfed creature moves with it.

An engulfed creature can try to escape by taking an action to make a DC 12 Strength check. On a success, the creature escapes and enters a space of its choice within 5 feet of the cube.');
INSERT INTO public.action (creature, name, description) VALUES (13, 'Martial Arts', e'At 1st level, your practice of martial arts gives you mastery of combat styles that use unarmed strikes and monk weapons, which are shortswords and any simple melee weapons that don\'t have the two-handed or heavy property.

You gain the following benefits while you are unarmed or wielding only monk weapons and you aren\'t wearing armor or wielding a shield:

You can use Dexterity instead of Strength for the attack and damage rolls of your unarmed strikes and monk weapons.
You can roll a d4 in place of the normal damage of your unarmed strike or monk weapon. This die changes as you gain monk levels, as shown in the Martial Arts column of the Monk table.
When you use the Attack action with an unarmed strike or a monk weapon on your turn, you can make one unarmed strike as a bonus action. For example, if you take the Attack action and attack with a quarterstaff, you can also make an unarmed strike as a bonus action, assuming you haven\'t already taken a bonus action this turn.
Certain monasteries use specialized forms of the monk weapons. For example, you might use a club that is two lengths of wood connected by a short chain (called a nunchaku) or a sickle with a shorter, straighter blade (called a kama). Whatever name you use for a monk weapon, you can use the game statistics provided for the weapon on the Weapons page.');
INSERT INTO public.action (creature, name, description) VALUES (13, 'Ki', e'Starting at 2nd level, your training allows you to harness the mystic energy of ki. Your access to this energy is represented by a number of ki points. Your monk level determines the number of points you have, as shown in the Ki Points column of the Monk table.

You can spend these points to fuel various ki features. You start knowing three such features: Flurry of Blows, Patient Defense, and Step of the Wind. You learn more ki features as you gain levels in this class.

When you spend a ki point, it is unavailable until you finish a short or long rest, at the end of which you draw all of your expended ki back into yourself. You must spend at least 30 minutes of the rest meditating to regain your ki points.

Some of your ki features require your target to make a saving throw to resist the feature\'s effects. The saving throw DC is calculated as follows:

Ki save DC = 8 + your proficiency bonus + your Wisdom modifier

Flurry of Blows. Immediately after you take the Attack action on your turn, you can spend 1 ki point to make two unarmed strikes as a bonus action.
Patient Defense. You can spend 1 ki point to take the Dodge action as a bonus action on your turn.
Step of the Wind. You can spend 1 ki point to take the Disengage or Dash action as a bonus action on your turn, and your jump distance is doubled for the turn.');
INSERT INTO public.action (creature, name, description) VALUES (12, 'Speak with Small Beasts', 'Through sound and gestures, you may communicate simple ideas with Small or smaller beasts.');
INSERT INTO public.action (creature, name, description) VALUES (12, 'Fighting Style: Defence', 'At 2nd level, you adopt a particular style of fighting as your specialty. Choose one of the following options. You can''t take a Fighting Style option more than once, even if you later get to choose again. While you are wearing armor, you gain a +1 bonus to AC.');
INSERT INTO public.action (creature, name, description) VALUES (13, 'Monastic Tradition: Way of the Open Hand', e'Starting when you choose this tradition at 3rd level, you can manipulate your enemy\'s ki when you harness your own. Whenever you hit a creature with one of the attacks granted by your Flurry of Blows, you can impose one of the following effects on that target:

It must succeed on a Dexterity saving throw or be knocked prone.
It must make a Strength saving throw. If it fails, you can push it up to 15 feet away from you.
It can\'t take reactions until the end of your next turn.');
INSERT INTO public.action (creature, name, description) VALUES (13, 'Wholeness of Body', 'At 6th level, you gain the ability to heal yourself. As an action, you can regain hit points equal to three times your monk level. You must finish a long rest before you can use this feature again.');
INSERT INTO public.action (creature, name, description) VALUES (13, 'Deflect Missiles', e'Starting at 3rd level, you can use your reaction to deflect or catch the missile when you are hit by a ranged weapon attack. When you do so, the damage you take from the attack is reduced by 1d10 + your Dexterity modifier + your monk level.

If you reduce the damage to 0, you can catch the missile if it is small enough for you to hold in one hand and you have at least one hand free. If you catch a missile in this way, you can spend 1 ki point to make a ranged attack with a range of 20/60 using the weapon or piece of ammunition you just caught, as part of the same reaction. You make this attack with proficiency, regardless of your weapon proficiencies, and the missile counts as a monk weapon for the attack.');
INSERT INTO public.action (creature, name, description) VALUES (13, 'Slow Fall', 'Beginning at 4th level, you can use your reaction when you fall to reduce any falling damage you take by an amount equal to five times your monk level.');
INSERT INTO public.action (creature, name, description) VALUES (13, 'Stunning Strike', 'Starting at 5th level, you can interfere with the flow of ki in an opponent''s body. When you hit another creature with a melee weapon attack, you can spend 1 ki point to attempt a stunning strike. The target must succeed on a Constitution saving throw or be stunned until the end of your next turn.');
INSERT INTO public.action (creature, name, description) VALUES (13, 'Stillness of Mind', 'Starting at 7th level, you can use your action to end one effect on yourself that is causing you to be charmed or frightened.');

INSERT INTO public.trait (creature, name, description) VALUES (6, 'Antimagic Cone', 'The beholder''s central eye creates an area of antimagic, as in the antimagic field spell, in a 150-foot cone. At the start of each of its turns, the beholder decides which way the cone faces and whether the cone is active. The area works against the beholder''s own eye rays.');
INSERT INTO public.trait (creature, name, description) VALUES (7, 'Keen Sight and Smell', 'The owlbear has advantage on Wisdom (Perception) checks that rely on sight or smell.');
INSERT INTO public.trait (creature, name, description) VALUES (8, 'Nimble Escape', 'The goblin can take the Disengage or Hide action as a bonus action on each of its turns.');
INSERT INTO public.trait (creature, name, description) VALUES (9, 'Shapechanger', 'The mimic can use its action to polymorph into an object or back into its true, amorphous form. Its statistics are the same in each form. Any equipment it is wearing or carrying isn''t transformed. It reverts to its true form if it dies.');
INSERT INTO public.trait (creature, name, description) VALUES (9, 'Adhesive (Object Form Only)', 'The mimic adheres to anything that touches it. A Huge or smaller creature adhered to the mimic is also grappled by it (escape DC 13). Ability checks made to escape this grapple have disadvantage.');
INSERT INTO public.trait (creature, name, description) VALUES (9, 'False Appearance (Object Form Only)', 'While the mimic remains motionless, it is indistinguishable from an ordinary object.');
INSERT INTO public.trait (creature, name, description) VALUES (9, 'Grappler', 'The mimic has advantage on attack rolls against any creature grappled by it.');
INSERT INTO public.trait (creature, name, description) VALUES (11, 'Ooze Cube', e'The cube takes up its entire space. Other creatures can enter the space, but a creature that does so is subjected to the cube\'s Engulf and has disadvantage on the saving throw.

Creatures inside the cube can be seen but have total cover.

A creature within 5 feet of the cube can take an action to pull a creature or object out of the cube. Doing so requires a successful DC 12 Strength check, and the creature making the attempt takes 10 (3d6) acid damage.

The cube can hold only one Large creature or up to four Medium or smaller creatures inside it at a time.');
INSERT INTO public.trait (creature, name, description) VALUES (11, 'Transparent', 'Even when the cube is in plain sight, it takes a successful DC 15 Wisdom (Perception) check to spot a cube that has neither moved nor attacked. A creature that tries to enter the cube''s space while unaware of the cube is surprised by the cube.');
INSERT INTO public.trait (creature, name, description) VALUES (12, 'Gnome Cunning', 'You have advantage on all Intelligence, Wisdom, and Charisma saves against magic.');
INSERT INTO public.trait (creature, name, description) VALUES (12, 'Favored Enemy: Beasts', e'Beginning at 1st level, you have significant experience studying, tracking, hunting, and even talking to a certain type of enemy.

Choose a type of favored enemy: aberrations, beasts, celestials, constructs, dragons, elementals, fey, fiends, giants, monstrosities, oozes, plants, or undead. Alternatively, you can select two races of humanoid (such as gnolls and orcs) as favored enemies.

You have advantage on Wisdom (Survival) checks to track your favored enemies, as well as on Intelligence checks to recall information about them.

When you gain this feature, you also learn one language of your choice that is spoken by your favored enemies, if they speak one at all.

You choose one additional favored enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures.');
INSERT INTO public.trait (creature, name, description) VALUES (12, 'Favored Terrain: Forest', e'Also at 1st level, you are particularly familiar with one type of natural environment and are adept at traveling and surviving in such regions. Choose one type of favored terrain: arctic, coast, desert, forest, grassland, mountain, swamp, or the Underdark. When you make an Intelligence or Wisdom check related to your favored terrain, your proficiency bonus is doubled if you are using a skill that you’re proficient in.

While traveling for an hour or more in your favored terrain, you gain the following benefits:

Difficult terrain doesn’t slow your group’s travel.
Your group can’t become lost except by magical means.
Even when you are engaged in another activity while traveling (such as foraging, navigating, or tracking), you remain alert to danger.
If you are traveling alone, you can move stealthily at a normal pace.
When you forage, you find twice as much food as you normally would.
While tracking other creatures, you also learn their exact number, their sizes, and how long ago they passed through the area.
You choose additional favored terrain types at 6th and 10th level.');
INSERT INTO public.trait (creature, name, description) VALUES (13, 'Nimble Escape', 'You The goblin can take the Disengage or Hide action as a bonus action on each of its turns.');
INSERT INTO public.trait (creature, name, description) VALUES (13, 'Fury of the Small', e'When you damage a creature with an attack or a spell and the creature’s size is larger than yours, you can cause the attack or spell to deal extra damage to the creature. The extra damage equals your proficiency bonus.
You can use this trait a number of times equal to your proficiency bonus, regaining all expended uses when you finish a long rest, and you can use it no more than once per turn.');
INSERT INTO public.trait (creature, name, description) VALUES (13, 'Unarmored Defence', 'Beginning at 1st level, while you are wearing no armor and not wielding a shield, your AC equals 10 + your Dexterity modifier + your Wisdom modifier.');
INSERT INTO public.trait (creature, name, description) VALUES (13, 'Harmless Appearance', 'Because of your utterly innocent presence, you rarely need to hide from people to hear in on what they talk about. You are just a simple barmaid that gives the drinks and takes them away when they are empty. People often forget that you''re there to the point that even very important conversations not meant for average ears can be spoken near you. Underworld lords and powerful figures feel no threat from speaking liberally near you, discussing plans and such as long as you tend to them in some way.');
INSERT INTO public.trait (creature, name, description) VALUES (13, 'Unarmored Movement', e'Starting at 2nd level, your speed increases by 10 feet while you are not wearing armor or wielding a shield. This bonus increases when you reach certain monk levels, as shown in the Monk table.

At 9th level, you gain the ability to move along vertical surfaces and across liquids on your turn without falling during the move.');
INSERT INTO public.trait (creature, name, description) VALUES (13, 'Extra Attack', 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.');
INSERT INTO public.trait (creature, name, description) VALUES (13, 'Ki Empowered Strikes', 'Starting at 6th level, your unarmed strikes count as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.');
INSERT INTO public.trait (creature, name, description) VALUES (13, 'Evasion', 'At 7th level, your instinctive agility lets you dodge out of the way of certain area effects, such as a blue dragon''s lightning breath or a fireball spell. When you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on the saving throw, and only half damage if you fail.');
INSERT INTO public.campaign (id, master) VALUES ('AB123CD', 4);
INSERT INTO public.campaign (id, master) VALUES ('EF456GH', 1);
INSERT INTO public.char_camp (campaign, character, curr_pf) VALUES ('AB123CD', 12, 15);
INSERT INTO public.char_camp (campaign, character, curr_pf) VALUES ('EF456GH', 13, 61);
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 56, 1, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 55, 1, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 18, 1, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 29, 1, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 57, 1, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 58, 1, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 59, 10, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 60, 10, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 61, 1, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 62, 1, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (12, 5, 1, 'AB123CD');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 55, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 67, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 68, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 69, 10, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 59, 10, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 58, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 60, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 61, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 62, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 70, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 71, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 72, 3, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 18, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 28, 1, 'EF456GH');
INSERT INTO public.char_equip (character, item, quantity, campaign) VALUES (13, 25, 1, 'EF456GH');
INSERT INTO public.character (id, class, level, background, race, player, name, proficiencies) VALUES (12, 'Ranger', 2, null, 'Gnome', 2, 'Kabo', 'Simple Weapons, Martial Weapons, Light Armor, Medium Armor, Shield');
INSERT INTO public.character (id, class, level, background, race, player, name, proficiencies) VALUES (13, 'Monk', 10, 'Tavern Waiter', 'Goblin', 1, 'Karina', 'Simple Weapons, Shortsword, Cook''s Utensils, Cards');
INSERT INTO public.compendium (character, spell, prepared, campaign) VALUES (12, 'Minor Illusion', true, 'AB123CD');
INSERT INTO public.compendium (character, spell, prepared, campaign) VALUES (12, 'Cure Wounds', true, 'AB123CD');
INSERT INTO public.compendium (character, spell, prepared, campaign) VALUES (12, 'Hunter''s Mark', true, 'AB123CD');
INSERT INTO public.spellcaster (id, caster_ability, spell_save_dc, spell_bonus_attack, slot_0, slot_1, slot_2, slot_3, slot_4, slot_5, slot_6, slot_8, slot_9, slot_7, campaign) VALUES (12, 'Wisdom', 12, 4, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'AB123CD');
INSERT INTO public."user" (id, username) VALUES (1, 'Giada');
INSERT INTO public."user" (id, username) VALUES (2, 'Ele');
INSERT INTO public."user" (id, username) VALUES (3, 'Pino');
INSERT INTO public."user" (id, username) VALUES (4, 'Gianni');
