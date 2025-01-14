public function tryProcKQ2CombatCourtyards():Boolean
{
	var encounters:Array = [];
	encounters.push(kq2FightBlackVoidGrunts);
}

public function tryProcKQ2CombatBarracks():Boolean
{
	var encounters:Array = [];
	encounters.push(kq2FightBlackVoidGrunts);
}

public function tryProcKQ2CombatSewers():Boolean
{
	var encounters:Array = [];
	encounters.push(kq2FightSecDrones);
}

public function kq2FightBlackVoidGrunts():void
{
	var num:int = 2 + rand(3);
	output("\n\nYou hear heavy footfalls pounding towards you, and you quickly sight in on "+ num2Text(num) +" black-clad figures in heavy armor racing towards you, each carrying a machine pistol. They skid to a stop just ahead of you, raising their weapons to their hips and opening fire without warning!")

	foes = [];
	for (var i:int = 0; i < num; i++)
	{
		foes.push(new KQ2BlackVoidGrunt());
	}

	startCombatLight();
}

public function kq2FightSecDrones():void
{
	var num:int = 3 + rand(2);
	output("\n\nKara puts a hand up to stop you. <i>“Something’s coming... take cover!”</i>");

	output("\n\nYou move quickly - but not quickly enough. Several small, ball-like drones zip out of the darkness, hovering a few feet off the ground.");
	if (9999 == 0) output(" They look almost exactly like the drone you put together just after your Dad died, still tucked away in your pack.");
	output(" The drones zip towards you, powering up stun-guns.");

	foes = [];
	for (var i:int = 0; i < num; i++)
	{
		foes.push(new KQ2SecurityDroid());
	}

	startCombatLight();
}

public function kq2rfRappelPoint():Boolean
{
	output("<i>“Alright, we’ve got a good vantage on the base from here,”</i> Kara says, taking a knee on the cliff side. She taps a finger to her temple, and you can see a slight glimmer in her eyes, shifting almost imperceptibly. <i>“I see a few guards on the perimeter. Electric fence surrounding the base, a couple of machine-gun nests at the gate.");
	if (kara.isNice()) output(" Good thing we’ve got another way in.");
	else if (kara.isMischevious()) output(" Definitely don’t want to go knocking.");
	else output(" They’ll never know what hit ‘em.”</i>");

	output("\n\nKara stands and points down, almost straight to the base of the plateau. <i>“Sewer entrance is just below us. Give me the go, and I’ll shoot a grappling line down.”</i>");

	addButton(0, "Rappel", kq2RappelIn, undefined "Rappel", "Do it.");

	return false;
}

public function kq2RappelIn():void
{
	clearOutput();

	output("\n\n<i>“Do it.”</i>");
	
	output("\n\nKara nods and unslings the rifle from her back, loads a hook into a small launcher under the barrel, and squeezes the trigger. The hook goes sailing downwards, trailing a slender rope behind it. You hear a faint <i>clink</i> a moment later, and the rope goes taut. Kara pulls the launcher off her gun and pitons it into the cliffside.");
	
	output("\n\n<i>“After you,”</i> she grins, motioning downwards.");
	
	output("\n\n{if PC is Misch: <i>“Oh, no, ladies first. I insist,”</i> you answer with a grin of your own. Kara rolls her eyes but agrees, grabbing the rope and sliding down out of sight. You follow her down a few seconds later{, surprised that the rope can actually bear your bestial half’s weight}.");
	output("\n\n{Else: You nod and grab the rope.} The descent is slow going, taking you more than a hundred feet down from the plateau to the lowland surface. You hit dirt with a slight THUD, {catching up to Kara // joined by Kara a moment later}. She looks around a moment, then nods toward the open maw of a cave entrance not far away. <i>“There we go. Should be a crack in the floor of that cavern that’ll drop us right into the base’s waste pumps. Just a short ways from there to the base interior. C’mon, let’s move.”</i>");

	// [Next]
	currentLocation = "K2_SEWERENTRANCE";
	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfSewer1():Boolean
{
	output("The sewers under the Black Void base are all concrete and stink, a dark tunnel so low that {you and your companion have to squat to pass through // you’re glad of your diminutive height - Kara’s having to duck down to get by}.");

	output("\n\n<i>“Careful,”</i> Kara whispers, <i>“Don’t know what could be down here...”</i>");

	return false;
}

public function kq2rfSewer2():Boolean
{
	output("The sewers under the Black Void base are all concrete and stink, a dark tunnel so low that {you and your companion have to squat to pass through // you’re glad of your diminutive height - Kara’s having to duck down to get by}. You’ve reached a cross-way in the sewer, directing sewage from all over through one channel.");

	output("\n\nAs you’re walking, Kara taps on a small wrist computer, eyeing a holo-display that flashes across her hand. <i>“East. We want to go east, just a little further.”</i>");

	return false;
}

public function kq2rfBaseEntrance():Boolean
{
	output("The sewers under the Black Void base are all concrete and stink, a dark tunnel so low that {you and your companion have to squat to pass through // you’re glad of your diminutive height - Kara’s having to duck down to get by}. There’s a ladder here, leading up to a manhole overhead.");
	
	output("\n\n<i>“Alright. Up we go,”</i> Kara whispers. <i>“Thank God. Don’t think I could stand the </i>stink<i> much longer...”</i>");

	addButton(0, "Enter Base", kq2GoBaseEntrance);
	return false;
}

public function kq2GoBaseEntrance():void
{
	clearOutput();

	output("It’s a short climb from the sewers up to the base itself. Kara goes first, using her dagger to hack through a flimsy lock on the manhole cover before popping it open. You blink in the sudden rush of {sunlight // light from the base’s floodlights}. You scramble up to the surface after Kara, ducking down with behind a stack of crates shoved up against the base of a tall building bristling with antennas, giving you a modicum of concealment from the wide open entrance to the base.");
	
	output("\n\n<i>“We’re in,”</i> Kara says, and you don’t think she’s talking to you. She nods to herself, then looks at you. <i>“Right. Research facility is north-east, across this courtyard. Wouldn’t be surprised if it’s locked up tight, so we might want to go hunting for a keycard, maybe in that barracks there,”</i> she says, pointing straight ahead to the north, towards a squat structure from which several black-clad men with machine pistols are coming. <i>“Or, I could try to override the lock - but you’ll need to cover me for a few minutes if I do. Either way works for me.”</i>");
	
	output("\n\nAfter a moment’s consideration, Kara adds, <i>“You can try and get me up to the top of that radio tower if you want, let me put this bad boy to use.”</i> For emphasis, she pats the rifle slung on her back. <i>“Could cover you all the way across the courtyard, make it easier to get to the barracks, then make a run for it when you get to the research facility. Up to you, [pc.name].”</i>");
	
	output("\n\nYou nod, mulling over your options.");

	currentLocation = "K2_BASESEWER";
	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfBaseSewer():Boolean
{
	output("You’re standing just atop a man hole, leading down into the sewers below. It reeks.");
	
	output("\n\nThere’s a tower just east of you, tall and imposing and covered in antennas. To the north lies the courtyard of the pirate complex, wide open save for the occasional crate and what looks like some kind of hover tank parked to the north. The main base building appears to be north-east of you.");
	return false;
}

public function kq2rfRadioTower():Boolean
{
	output("The radio tower is a towering concrete structure, the bottom of which is dominated by supply crates and an industrial lift going upwards. There’s a deadbolt security lock on the door, meaning that Kara won’t have any unexpected visitors {if you decide to leave her here // while she’s on overwatch}.");

	addButton(0, "Elevator", kq2RadioTowerElevator);

	return false;
}

public function kq2RadioTowerElevator():void
{
	if (flags["KQ2_KARA_WITH_PC"] != undefined)
	{
		output("\n\nYou and Kara step onto the elevator, and you press the <i>“UP”</i> button. It rumbles and shifts underfoot before starting to rise, chugging upwards on an old-fashioned gear track. It takes well over a minute to reach the top floor, which is little more than a chair, a few computer consoles, and an access hatch leading up to the roof and the antennae outside.");

		if (flags["KQ2_RADIO_TOWER_EXPLORED"] == undefined)
		{		
			output("\n\nA single pirate is on duty, a young man dressed in black armor and resting a shotgun over his knees. He’s fast asleep, a dirty magazine covering his face. Seeing him, Kara puts a finger to her lips before moving stealthily forward, drawing her rifle from over her shoulder. She makes it over to the pirate in utter silence, flashes you a wink over her shoulder, and cracks the rifle butt down on the kid’s face through the magazine. He makes a startled grunt, tenses, and then falls limp.");
			
			output("\n\n<i>“Ouch,”</i> Kara laughs, picking up the h-magazine from his face. After a second’s consideration, she hands it over to you. <i>“Here. Souvenir.");
			if (silly) output(" Maybe there’ll be some engineer down the line you can bribe with it!”</i>");
			
			pc.createKeyItem("Hentai Magazine");
			output("\n\n<b>New Key Item: Hentai Magazine</b>.");

			output("\n\n<i>“Alright. I’m on overwatch, [pc.name]. Anything gets near you, and you’ll hear about it. Good luck.”</i>");
				
			output("\n\nYou wish her the same, and hit the <i>“DOWN”</i> button on the elevator, leaving to the sight of Kara bracing her rifle on a console, aiming down the scope across the courtyard.");
		}
		else
		{
			output("\n\nThe pirate kid is still out cold. Kara chuckles to herself and unslings her rifle, bracing it on a console. <i>“Alright, [pc.name]. I’ll keep you covered again. Good luck!”</i>");
			
			output("\n\nYou wish her the same, and hit the <i>“DOWN”</i> button once again.");
		}

		flags["KQ2_KARA_WITH_PC"] = 2;
	}
	else
	{
		output("\n\nYou step onto the elevator and press the <i>“UP”</i> button. It rumbles and shifts underfoot before starting to rise, chugging upwards on an old-fashioned gear track. It takes well over a minute to reach the top floor, which is little more than a chair, a few computer consoles, and an access hatch leading up to the roof and the antennae outside.");
		
		output("\n\nWhen you get topside, you find Kara aiming her handgun dead at your chest. You raise your hands, and Kara sighs, holstering her gun. <i>“Hey, [pc.name]. Ready to get going?”</i>");
		
		output("\n\nYou nod, and Kara hops onto the elevator and presses the <i>“DOWN”</i> button, sending you both back to the ground floor.");

		flags["KQ2_KARA_WITH_PC"] = 1;
	}

	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfYardB2():Boolean
{
	output("\n\nThe courtyard of the base is wide and open, with little in the way of cover other than a few supply crates or ID-locked vehicles parked around the entrance. You can see a barracks to the north, the door to the research facility to the east, and a radio tower to the south-east.");
	
	output("\n\nThere’s a god-damned tank here, just sitting beside a few other vehicles. The hover-platforms look badly busted and you’re not sure if the engine sitting exposed on the front is any good, but it’s still a <i>tank</i>.");
	if (pc.characterClass == GLOBAL.CLASS_MERCENARY)
	{
		output(" Hey, you could do something with that....");
		addButton(0, "Use Tank", kq2UseTank, undefined, "Use the Tank", "That sure is a nice door the research facility has. It'd be a shame if something were to... <i>happen</i> to it. Hop in that tank, crane the main gun around, and knock.");
	}
	else
	{
		addDisabledButton(0, "Use Tank", "Use the Tank", "You have no idea how to pilot a tank. Don't be crazy; you're not a space marine.");
	}

	return false;
}

public function kq2UseTank():void
{
	clearOutput();

	flags["KQ2_RND_ENTRANCE_OPEN"] = 1;

	output("Now we’re fucking talking! You scramble up into the tank, thanking whatever careless Black Void goon left the hatch open, and situate yourself in the gunner’s seat. Thanks to the time you spent as a merc, it’s a simple matter to crane the turret around, leveling the cannon at the research facility door.");

	output("\n\nFire in the hole! You squeeze the trigger and cover your ears, wincing as the massive gun blows a chunk out of the door. The whole tank recoils with the blast, leaving you stunned for a moment with ears ringing. You manage to gather your wits enough to peek out the hatch, and grin maniacally to yourself as you see the front door to the facility crash inwards.");

	output("\n\n<i>“That’s one way to get inside,”</i> Kara laughs");
	if (flags["KQ2_KARA_WITH_PC"] == 2) output(" over the tank’s radio. <i>“I’ll meet you at the doors - or what’s left of ‘em!”</i>");
	output(".");
	
	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfYardB3():Boolean
{
	output("The courtyard of the base is wide and open, with little in the way of cover other than a few supply crates or ID-locked vehicles parked around the entrance. You can see a barracks to the north and a radio tower to the south.");

	output("\n\nYou’re smack dab in front of the research facility. The doors");
	if (flags["KQ2_RND_ENTRANCE_OPEN"] == undefined) output(" are locked, sealed by a computer security system");
	else if (flags["KQ2_RND_ENTRANCE_OPEN"] == 1) output(" are a smoldering ruin blasted across the interior lobby");
	else output(" are unlocked");
	output(".");

	if (flags["KQ2_RND_ENTRANCE_OPEN"] == 0)
	{
		if (pc.hasKeyItem("Key Card - R&D Security Pass"))
		{
			addButton(0, "Use Key", kq2rfUseKeycard, undefined, "Use Security Key card", "Swipe your key card and get inside.");
		}
		else if (pc.IQ() >= 75)
		{
			addButton(0, "Override", kq2rfManualOverride, undefined, "Manual Override", "Try and breach the security system yourself with a little bit of hacking. It'd be easier if you had a key card, though... ");
		}
		else
		{
			addDisabledButton(0, "Door Lock", "Security Door Lock", "You should look around and see if you can scrounge up the security key pass for this door; it looks pretty important.");
		}

		addButton(1, "Kara?", kq2rfKaraOverride, undefined, "Kara?", "Have Kara override the door. You'll need to cover her for a few moments while she works.");

		flags["NAV_DISABLED"] = NAV_EAST_DISABLE;
	}
	else if (flags["KQ2_RND_FIRST_ENTER"] == undefined)
	{
		flags["NAV_DISABLED"] = NAV_EAST_DISABLE;
		addButton(0, "Enter R&D", kq2rfEnterRNDFirstTime);
	}

	return false;
}

public function kq2rfManualOverride():void
{
	clearOutput();

	output("\n\nYou look around to make sure you’re not about to get shot, then");
	if (pc.tallness > 90) output(" take a knee");
	else output(" lean down");
	output(" next to the computer and pop it open.");
	if (flags["KQ2_KARA_WITH_PC"] == 1) output("Cover me,”</i> you say to Kara");
	else output(" You’ll have to trust Kara to cover you from the tower");
	output(". And she does so: the moment you look away, you hear the sound of gunfire around you - a few bullets slam into the metal near you, but nobody gets near you as you work.");

	// 9999 - [Lock-picking Minigame from Silence Here]

	output("\n\nIt’s a quick matter to rip some of the wiring out, cross it, and short out the security system. After about a minute of work, the door slides open. Success!");

	flags["KQ2_RND_ENTRANCE_OPEN"] = 3

	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfUseKeycard():void
{
	clearOutput();

	output("You swipe your key card, and the door slides open.");

	flags["KQ2_RND_ENTRANCE_OPEN"] = 2;

	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfKaraOverride():void
{
	clearOutput();

	if (flags["KQ2_KARA_WITH_PC"] == 2)
	{
		output("You wave at the radio tower, trying to signal Kara to come over. She’s back with you momentarily, running across the courtyard as quick as she can.");

		if (kara.isMischevious()) output("\n\n<i>“Miss me?”</i> she grins, giving you a playful wink.");
	}

	output("\n\n<i>“Alright, cover me,”</i> Kara says, taking a knee next to the computer and pulling a wire from her wrist device to the door panel. <i>“This’ll take a minute. Make sure I don’t get shot in the back, alright?”</i>");

	output("\n\nYou nod and turn to face the open courtyard. Now that you’re stuck in one place, you can see several black-armored Void soldiers rushing towards you. You ready your [pc.rangedWeapon] and take cover next to the door. This is going to be rough...");

	// 9999 - PC must hold out against waves of Void soldiers for 5~ rounds. On success:

	output("\n\n<i>“We’re in!”</i> Kara cheers as the doors slide open. <i>“C’mon, let’s go!”</i>");

	flags["KQ2_RND_ENTRANCE_OPEN"] = 4;
	flags["KQ2_KARA_WITH_PC"] = 1;
	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfEnterRNDFirstTime():void
{
	clearOutput();

	if (flags["KQ2_KARA_WITH_PC"] == 2)
	{
		output("You wave at the radio tower, trying to signal Kara to come over. She’s back with you momentarily, running across the courtyard as quick as she can.");

		if (kara.isMischevious()) output("\n\n<i>“Miss me?”</i> she grins, giving you a playful wink. <i>“Alright, we’re in! God job, [pc.name]!”</i>");
	}
	else
	{
		output("\n\n<i>“Whoo! For a second there, I didn’t think we’d make it this far. C’mon, we’re almost there!”</i>");
	}

	output("\n\nKara shouts, leaping through the");
	if (flags["KQ2_RND_ENTRANCE_OPEN"] == 1) output(" ruins of the");
	output(" door. You follow her in, getting through just as she’s pulling open a security panel on the other side and ripping some wires out. A big, heavy steel blast door slides down over the entrance, sealing you in - and keeping more Black Void soldiers out.");

	output("\n\n<i>“Alright. Research labs should be underground, so... let’s find an elevator, shall we?”</i>");

	currentLocation = "K2_RNDENTRANCE1";
	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfYardA1():void
{
	output("The courtyard of the base is wide and open, with little in the way of cover other than a few supply crates or ID-locked vehicles parked around the entrance. You can see a barracks to the east, the door to the research facility to the south-east, and a radio tower to the south-east.");

	output("\n\nThere’s a kennel here, made of steel and bearing several power hook-ups. A tag on the side of it indicates it’s a <i>“Fenris assault drone charging and repair station”</i> made by KihaCorp.");

	if (pc.accessory is TamWolfDamaged || pc.hasItemByType(TamWolfDamaged))
	{
		output("\n\nTam-wolf stalks toward the kennel and sniffs at one of the charging bays. <i>“M-m-[pc.master], I am baaaaadly damaged. With your permission, I will-will-will initiate repair protocooooools.”</i>");

		output("\n\nYou nod at your cyber-hound companion, and he limps into one of the bays which proceeds to seal behind him. You hear a whirring and buzzing from inside as the automated systems work, incapable of telling your Tam-wolf from the security droids in use at the base. The process only takes a moment, and when Tam-wolf emerges, he looks better than new: all sleek and shiny, with a fresh coat of paint and all his teeth filed to dagger points. He gives a pleased, bass-filled <i>“Woof!”</i> and hunches down, wagging his tail at you.");

		output("\n\n<i>“I am now in peak condition, [pc.master]!”</i>");

		output("\n\n<i>“Good boy!”</i> you answer, scratching him between the ears.");

		//Removed damaged Tam-wolf, replace with good Tam-wolf.
		if (pc.accessory is TamWolfDamaged) pc.accessory = new TamWolf();
		else
		{
			pc.removeItemByType(TamWolfDamaged);
			pc.inventory.push(new TamWolf());
		}

		flags["KQ2_RF_KENNEL_USED"] = 1;
	}
	else if (flags["KQ2_RF_KENNEL_USED"] == undefined && (pc.accessory is TamWolf || pc.hasItemByType(TamWolf)))
	{
		output("\n\nTam-wolf stalks toward the kennel and sniffs at one of the charging bays. <i>“[pc.Master], I detect a hardware update available, brought to you free of charge by FenCo, a subsidiary of KihaCorp. May I have permission to be upgraded?”</i>");
		
		output("\n\nYou nod and Tam-wolf leaps into the charging bay, which closes behind him. You hear a loud ZAP inside, and a moment later, your trusty canine charges back out, chasing his tail and barking raucously. Finally, he calms down, coming to a skidding halt in front of you and sitting down. He bares his teeth, which crackle with electricity. <i>“Upgrade successful, [pc.master]! I will shock and awe your enemies!”</i>");
		
		output("\n\n<i>“Good boy!”</i> you smile, scratching him between the ears.");
		
		output("\n\n<b>Tam-wolf now deals Electricity or Piercing damage, whichever is better.</b>");

		flags["TAMWOLF_DAMAGE_UPGRADE"] = 1;
		flags["KQ2_RF_KENNEL_USED"] = 2;
	}

	return false;
}

public function kq2rfBarracksInterior():Boolean
{
	output("The interior of the Black Void barracks looks classic military, with bunk beds arranged in rows all the way across it. Bits of armor and uniforms are scattered around, along with several knocked-out pirates from your scuffle.");

	if (flags["KQ2_BARRACKS_INTERIOR_ENTERED"] == undefined)
	{
		// force combat
		flags["KQ2_BARRACKS_INTERIOR_ENTERED"] = 1;
	}
	else if (9999 == 0) // try proc combat
	{

	}
	else if (flags["KQ2_TAKEN_ARMOR"] == undefined)
	{
		output(" You can see a full suit of armor sitting on one of the bunks. Looks usable.");
		addButton(0, "TakeArmor", kq2takeArmor);
	}
	output(" There’s a door south, back towards the courtyard, and another going west labeled <i>“Security.”</i>");

	return false;
}

public function kq2rftakeArmor():void
{
	clearOutput();
	flags["KQ2_TAKEN_ARMOR"] = 1;
	quickLoot(new ARMOR_TYPE()); // 9999

	// 9999 suppress combat

	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfSecurityRoom():Boolean
{
	//PC fights the Black Void Engineer here.
	output("A small stairway leads up from the barracks’ main floor and up to the security office. A set of windows overlook the courtyard, and over the wasteland leading up to the base.");

	if (flags["KQ2_DEFEATED_ENGINEER"] == undefined)
	{
		kq2EnterEngineersRoom();
		return true;
	}
	else
	{
		output(" A set of simple controls gave the engineer, now lying in a heap on the ground, command over the heavy machine-guns at the gate and allowed him to summon and direct reinforcements.");

		if (!pc.hasKeyItem("Key Card - R&D Security Pass"))
		{
			output("\n\nThere’s a keycard lying on the desk.");
			addButton(0, "Key Card", kq2rfTakeKeycard);
		}
	}

	return false;
}

public function kq2rfTakeKeycard():void
{
	clearOutput();

	output("\n\nYou pick up the keycard. Score! This should get you into the research facility, no problem.");

	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfRNDEnt1():Boolean
{
	output("The entrance to the R&D base is");
	if (flags["KQ2_RND_ENTRANCE_OPEN"] == 1) output(" completely trashed after you blasted the door. Debris is scattered for yards ahead, all the way to a welcome desk to the east.");
	else output(" actually quite nice, with couches and chairs lining an approach to a welcome desk to the east.");

	flags["NAV_DISABLED"] = NAV_WEST_DISABLE;
	return false;
}

public function kq2rfRNDEnt3():Boolean
{
	output("This part of the main floor is dominated by a welcome desk. There’s a staff room to the east, and an elevator just beside the desk to the south. Equipment and decorations are");
	if (flags["KQ2_RND_ENTRANCE_OPEN"] != 1) output(" neatly arranged");
	else output(" scattered haphazardly");
	output(" throughout the room, with a large painting of a red-haired ausar woman hanging just over the desk.");
	return false;
}

public function kq2rfBreakRoom():Boolean
{
	output("The staff room beyond the welcome desk is a small, cozy affair with a card table, a fridge, and a big, fat vending machine advertising JoyCo potion-brand energy drinks.");

	addButton(0, "V.Machine", vendingMachineMenu, undefined, "Vending Machine", "See what these energy drinks are all about.");
	return false;
}

public function kq2rfLobbyElevator():Boolean
{
	output("The elevator connects three floors of the Black Void base: the main level, the research level below, and a helipad on the roof.");

	if (flags["KQ2_DEFEATED_JUGGERNAUT"] == 1)
	{
		output("The roof's been caved in, and a dead pirate in massive armor lies on the floor of the car. You're amazed the elevator is still functional.");
	}

	addButton(0, "Labs", currentLocation, "K2_LABELEVATOR");
	addDisabledButton(1, "Lobby");
	addButton(2, "Roof", currentLocation, "K2_ROOFELEVATOR");

	return false;
}

public function kq2rfLab1():Boolean
{
	output("A stark white laboratory sits just outside the elevator room. Everything here is sleek, high technology bathed in sterile light");
	if (flags["KQ2_DEFEATED_JUGGERNAUT"] == 1) output(", though much of the equipment has been torn apart by the Juggernaut’s gunfire");
	output(". A hatch sits against the eastern wall, sealed from your side by a large circular handle. A warning painted in big, red letters advises against going through without <i>“proper safety equipment”</i> - whatever that is - and that nothing may come or go through the door ahead without thorough screening.");

	if (flags["KQ2_LAB1_ENTERED"] == undefined)
	{
		flags["KQ2_LAB1_ENTERED"] = 1;

		output("\n\n<i>“What the hell’s going on down here?”</i> Kara mumbles to herself, looking around for some kind of information. There are no computer terminals on hand, not even written notes after a moment’s search. <i>“I’ve got a bad feeling about this, [pc.name]. Be ready for anything.”</i>");

		output("\n\nYou nod as Kara turns back to the elevator. She opens the door and waves you over. Together, you’re able to push one of the smaller machines into the elevator door, locking the car in place. The doors ding, trying to close again and again. <i>“Nobody’ll be following us down here, now. That’s something, at least.”</i>");
	}

	return false;
}

public function kq2rfKhansLab():Boolean
{
	if (flags["KQ2_KHANS_LAB_ENTERED"] == undefined)
	{
		flags["KQ2_KHANS_LAB_ENTERED"] = 1;
		kq2EncounterKhan();
		return true;
	}
	output("The sealed lab hits you with a sultry heat the moment you step in, clinging to your [pc.skinFurScales] as your [pc.feet] tread through something wet and sticky covering the white floor. The lab’s a mess compared to the sterile facility you just passed through: computers and machinery is turned and toppled all over, and covered in a thick, musky white goo.");

	if (flags["KQ2_DEFEATED_KHAN"] != undefined)
	{
		output("\n\nDoctor Khan is knocked out in the corner, propped up by his oversized nuts. His <i>“assistants”</i> are");
		if (9999 == 9999) output(" fawning over him, even in his sleep.");
		else output(" trying to pick up the pieces of their work, occasionally shooting their former master dark looks.");
	}

	if (flags["KQ2_WATSON_MET"] == 1 && flags["KQ2_KHANS_FILES"] == undefined)
	{
		flags["NAV_DISABLED"] = NAV_WEST_DISABLE;
		output("\n\nYou and Kara should probably deal with Khan's files before you leave the R&D level.");
	}

	return false;
}

public function kq2rfLab2():Boolean
{
	output("A corridor connect’s Khan’s lab up north to what’s marked as <i>“Khan’s Office”</i> to the east, and the <i>“Slave Quarters”</i> and <i>“Server Room”</i> to the south. Several devices of unknowable purpose are pushed up against the walls, buzzing quietly as they work on... whatever it is they do.");

	if (flags["KQ2_WATSON_MET"] != undefined) output("\n\nCome on. Khan’s quarters are here. I know we’re in a hurry, but I </i>have<i> to see something!”</i>");

	return false;
}

public function kq2rfKhansQuarters():Boolean
{
	output("Khan’s <i>“office”</i> is as much the doctor’s quarters as it is workspace. A very large bed is shoved up against the back wall, clearly custom-made to allow the massively inflated kui-tan to actually recline without having to heft his massive nads from the floor thanks to a half-circle cut from the foot of the bed. How he managed to drag himself all the way from the lab here is another mystery altogether.");

	if (flags["KQ2_WATSON_MET"] != undefined && flags["KQ2_KHANS_FILES"] == undefined) addButton(0, "Kara", kq2KhansQuartersKaraThing, undefined, "Kara", "Have Kara do... whatever it is she needs to do.");
}

public function kq2KhansQuartersKaraThing():void
{
	clearOutput();

	output("<i>“Alright, we’re here,”</i> Kara says, holstering her sidearm and jogging over to the doctor’s personal computer terminal. She jacks a cable from her wrist device into it and starts typing, hurriedly tearing through the security on it. <i>“Good. Just like I hoped, doesn’t look like the doc had it connected to the base’s network. That fat bastard of an A.I. hasn’t touched it yet.”</i>");
	
	output("\n\n<i>“I thought you wanted to </i>destroy<i> their research.”</i>");
	
	output("\n\nKara shakes her head, not looking up from her work. <i>“Doesn’t matter anymore. I’m trawling for data - another base, ship movements, comm frequencies, anything.... Alright, got something here. Not much, but it’s something.”</i>");
	
	output("\n\nShe yanks her wire and draws her gun again, putting a plasma bolt through the computer before she leaves. <i>“Got what I need. C’mon, let’s go!”</i>");
	
	output("\n\nShe’s moving again before you have half a chance to ask what she found. Damn it!");

	flags["KQ2_KHANS_FILES"] = 1;
	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function kq2rfLab4():Boolean
{
	output("A T-bone intersection connects the labs to the north with the server room to the east, and the slave quarters to the west.");

	if (flags["KQ2_LAB4_ENTERED"] == undefined)
	{
		flags["KQ2_LAB4_ENTERED"] = 1;
		output("\n\nYou hear the sharp thrum of Kara’s plasma gun charging up. <i>“C’mon, let’s get to the server room. I’m not letting some sick fuck duplicate Khan’s work. This ends here.”</i>");
	}

	return false;
}

public function kq2rfServerRoom():Boolean
{
	if (flags["KQ2_SERVERROOM_ENTERED"] == undefined)
	{
		flags["KQ2_SERVERROOM_ENTERED"] = 1;
		kq2MeetWatson();
		return true;
	}

	if (!pc.isNice() && flags["KQ2_NUKE_STARTED"] == undefined) addButton(0, "S.Destruct", kq2WatsonSelfDestruct, undefined, "Self Destruct", "Might as well make a futile, childish gesture... and blow this place to kingdom come!");

	return false;
}

public function kq2rfRoof1():Boolean
{
	output("This access walkway connects the shack-like box of the elevator to the helipad to the north. Among several small shuttles, a single heavy gunship is parked there with its engines already running. Something tells you that you’re not alone up here.");

	if (flags["KQ2_SHADE_UNCONSCIOUS"] == 1)
	{
		output("\n\nShade, the kaithrit bounty hunter from back at the tavern, is lying unconscious on the ground.");
	}
	else if (flags["KQ2_SHADE_DEAD"] == 1)
	{
		output("\n\nShade, the kaithrit bounty hunter from back at the tavern, is lying face-down in a pool of smoking blood and plasma. Beside you, Kara looks utterly unremorseful.");
	}
	else if (9999 == 0 && flags["KQ2_SHADE_ENCOUNTERED"] == undefined) // Shade is still on planet
	{
		kq2EncounterShade();
		return true;
	}

	return false;
}

public function kq2rfLabElevator():void
{
	output("The elevator connects three floors of the Black Void base: the research level, the main level above, and a helipad on the roof.");

	if (flags["KQ2_DEFEATED_JUGGERNAUT"] == 1)
	{
		output("The roof's been caved in, and a dead pirate in massive armor lies on the floor of the car. You're amazed the elevator is still functional.");
	}

	if (flags["KQ2_DEFEATED_JUGGERNAUT"] == undefined && flags["KQ2_KHANS_FILES"] != undefined)
	{
		output("\n\nYou and Kara run towards the elevator, still locked open the way you left it. <i>“Okay, we’re almost out of here, [pc.name],”</i> your companion pants, grabbing the edge of the obstruction and yanking it out of the way. <i>“Just get up to the roof and jack a shuttle. We’ll be gone before they can blink.”</i>");
		
		output("\n\nAs soon as she says it, though, you hear a whistling from the elevator. The both of you peer into the cart as the sound grows louder and louder... before erupting into an explosion. The roof of the car smashes inwards, dropping a huge man clad from head to foot in a suit of black powered armor dead in the middle of the elevator. His whole body shudders as he lands, what looks like a thousand pounds of armor and weapons trying to drag him to the deck. Instead, he pulls himself upright with a roar of rage and levels a machinegun at you. The black faceplate of his helmet is emblazoned with a glowing white jolly roger, his own eyes barely visible through the skull’s.");

		if (silly) output("\n\n<i>“OH SHIT! It’s a motherfucking SKULLDOZER!”</i> Kara shrieks.");
		else output("\n\n<i>“Holy shit!”</i> Kara shrieks, scrambling back from the armored behemoth. <i>“What the fuck is </i>that<i>!?”</i>");

		output("\n\n<i>“ASS KICKIN’ TIME,”</i> the pirate roars, his voice amplified to painful levels by his armor.");

		foes = [];
		foes.push(new KQ2Juggernaught());
		startCombatLight();
		return true;
	}

	addDisabledButton(0, "Labs");
	addButton(1, "Lobby", currentLocation, "KQ2_LOBBYELEVATOR");
	addButton(2, "Roof", currentLocation, "K2_ROOFELEVATOR");

	return false;
}