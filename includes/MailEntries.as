﻿// This works similar to the codex system -- we build a list of all the mails at game-startup
// And then store their unlocked/viewed state as the player interacts with them/the game.
// The difference here is we have capability to store the results of 'dynamic' content in the
// save file so we can persist mails that may make reference to the players state at the time
// they were sent, or the state of the sender of the message.

import classes.GameData.MailManager;
import classes.GUI;

// Simple way to handle spammails for now -- tag the keys into this array and I'll do shit
// behind the scenes with them. (Delete on read, auto-sending etc)
public var SpamEmailKeys:Array = [];

public function quickPCTo():String
{
	return pc.short + " Steele";
}

public function quickPCToAddress():String
{
	if (flags["PC_EMAIL_ADDRESS"] == undefined)
	{
		//Space conversion!
		var eName:String = pc.short.replace(/\s+/g, '_');
		return eName + "_Steele@SteeleTech.corp";
	}
	else
	{
		return flags["PC_EMAIL_ADDRESS"] + "@SteeleTech.corp";
	}
}

public function configureMails():void
{	
	/*
	Each of the arguments (after the key) to addMailEntry can either be a string,
	or a function.
	
	Strings will simply be presented as required - use strings where possible, but,
	keep in mind that you can do NOTHING dynamic with them. Not even the parser.
	Raw strings aren't saved, because there can never be any room for them to 
	vary from player character to player character.
	
	Functions will be executed when the entry itself is considered unlocked.
	This will effectively 'capture' the state of the game at that point in time,
	allowing dynamic things to be incorpoerated.
	The result of these functions are cached and will be saved to the players save 
	file.
	Functions must take no arguments and return a raw string. If you're using tags,
	this means the function has to manually call parser.doParse(msg) at some point.
	
	You can mix and match methods in the same mail. F.ex use strings for everything
	but the "To" argument to present it as "Mr. Steele"/"Mrs. Steele"
	
	You can jam functions into this file in a similar ilk to CodexEntries, but for
	shorter snippets it might be an idea to get handy with inline function declaration syntax:
		
		MailManager.addMailEntry("someEntry", contentFunc, function():String { return (pc.hasCock() ? "Dudebros" : "Nondudebros"); }, "Some Name", ...);
	*/
	
	// This is a cheat for the first welcome mail - this is what will be available in the mail
	// system AFTER this configuration stuff.
	MailManager.addMailEntry("welcomeMailConfirmed", welcomeMailConfirm, "Welcome to Steele Tech", "Steele Tech HR", "hr_dept@SteeleTech.corp", quickPCTo, quickPCToAddress);
	
	// Check this quick hack -- Coded the body like a function, realised it has nothing dynamic -- just execute it in place to pass a string into addMailEntry!
	MailManager.addMailEntry("messageFromDad", messageFromDad(), "See you around, kid.", "Victor Steele", "Victor_Steele@SteeleTech.corp", quickPCTo, quickPCToAddress);
	
	MailManager.addMailEntry("megaschlong", "<i>This message is a garbled mess of hyperlinks and what looks like Russian. What English there is is clearly trying to get you to click on said links and purchase a coursebook of penile exercises. Delightful.<i>", "One quick trick about how my cock grew 15 inches -- nanomachine free!", "MegaSchlong", "MegaSchlong@GalFuckMeet.org", quickPCTo, quickPCToAddress);
	SpamEmailKeys.push("megaschlong");
	
	MailManager.addMailEntry("xenoPrincess", "Hello, fellow star-traveler! My name is Amy, and I represent the interests of a small but growing group of activists who oppose the growing power of mega-corporations across the galaxy, especially in recently colonized worlds. It has recently come to our attention that a naleen princess has been taken as a test subject by Xenogen Biotech, doomed to slavery and sick experiments. We need your help to free her! 90% of every donation we receive will go directly to supporting our streaking campaign outside the Xenogen offices in support of our captured naleen brothers and sisters.", "Xeno Princess Needs Your Help!", "Amy Lovelace", "NaleenLover13@GalLink.net", quickPCTo, quickPCToAddress);
	SpamEmailKeys.push("xenoPrincess");
	
	MailManager.addMailEntry("cov8", "<i>This email is filled with screenshots and box art shots for a big, new AAAAA shooter holo-game.</i>\n\nAre you ready for the next phase of galactic warfare, trooper? Then boot up for CALL OF VALOR VIII, the next installation of the galaxy's best-selling holographic game franchise. Take part in interstellar conflicts across thousands of real-to-life worlds, including Terra, Khaleen, Mhen'ga, Ausaril, Vorradin XI, and Galotia. Make use of a variety of realistic weapons and use the new state-of-the-art Voice-to-Action system to command your squad to victory! Take your battle to the land, sea, air, and even the depths of space in CALL OF VALOR VII, available tomorrow at your local VidyaMonster store!\n\nAnswer the Call today.", "The Fight Starts Here: Last Chance to Pre-order Call of Valor VII Today!", "Vidya Monster Newsletter", "VidyaMonster@VidyaMonster.com", quickPCTo, quickPCToAddress);
	SpamEmailKeys.push("cov8");
	
	MailManager.addMailEntry("fatloss", "Are you tired of feeling fat bloated and tired every day? I was too until I discovered this one DIRTY secret to losing weight. I lost 100 lbs. in just three months! Incredible right? Im here too tell you all about my DIRTY secret and its super simple but SUPER EFFECTIVE:\n\nDrinking cum! :O\n\nThats right. I ate a diet of just steady cum for three months and just shaved off the pounds -- and you can too! :D\n\nJust click below for my easy video guide to gathering, drinking, and preparing semen from many different species + exercises for when you are sucking a cock to get your meal down.\n\nJust Cred19.95!\n\nxoxo", "Eat This: One Dirty Secret to Weight Loss the Corps DONT Want You to Know!", "C. Gizzle", "CumGuzzler@WeightLossKink.org", quickPCTo, quickPCToAddress);
	SpamEmailKeys.push("fatloss");

	MailManager.addMailEntry("creditcrash", "If you're anything like me, your financial portfolio is important to you. You diversify your stocks, keep bonds, and pay close attention to the Galactic Market. But the U.G.C. is keeping something from you: the Galactic Credit is about to crash! Thanks to unregulated spending by our governmental overlords and the free creation of new credits, the value of our galactic currency is quickly falling! By year's end, it could cost 100 credits or more just to feed yourself -- for lunch!\n\nFellow citizen, I urge you to peruse my new, official guide to buying, storing, and stockpiling PLATINUM, the new galactic standard for wealth. Gold is the currency of the past, and it is with PLATINUM that you can secure a fruitful financial future for yourself and your loved ones.\n\nBest regards,\nGerard Sterling\nAuthor, “Currency for the Modern Age”", "Credit Crash Imminent! Buy PLATINUM!", "Gerard Sterling", 
	"PlatinumStocks@PlatinumStocks.net", quickPCTo, quickPCToAddress);
	SpamEmailKeys.push("creditcrash");
	
	MailManager.addMailEntry("estrobloom", "<i>This message is a blinding array of soft pinks and whites, with a vaguely floral pattern to it.</i>\n\nAre you tired of a life of rigid, defined masculinity? Have you ever felt out of place among ‘the boys,’ as if you didn’t belong? Perhaps Estrobloom can show you the way to a fuller, feminine future. As the galaxy's leading product in genetic and nanomachine feminization, Estrobloom can help alleviate your masculinity, leaving a fresher, healthier, more feminine you.\n\nEstrobloom, now available in several major genetic-customization retailers.\n\n<i>Included at the bottom of the spam message is actually a 10% off coupon for Estrobloom. Most shops would probably take this.</i>", "Estrobloom: Bring out the woman in you", "JoyCo Newsletter", "Marketing@JoyCo.corp", quickPCTo, quickPCToAddress);
	SpamEmailKeys.push("estrobloom");
	
	MailManager.addMailEntry("hugedicktoday", "Dear MR. STEELE,\n\nHave you been having the trouble with ladies? Here at betterday.go, we pride ourself in providing wonderous care for all our customer. Is your member not getting you free membership in the clubs? did you lose it in the fightings? Well you do not need to be afraid any longer with Better Days Ultronic Bio-cock complete with undermounted turbo, left and right side handlebars, and real CUM action! Guarantee to keep female SPECIES DETECTION ERROR coming back for more! Order now for only 5 simple payments of 20,000 credits.\n\nBetter day not response for injury caused by undermounted turbo, does not include betterday POWERGLOW capability advertised in some offers.", "You can HUGE dick TODAY!", "Rojaz@betterday.go", "Rojaz@betterday.go", quickPCTo, quickPCToAddress);
	SpamEmailKeys.push("hugedicktoday");
	
	MailManager.addMailEntry("burtsmeadhall", "<i>This message is adorned with crude images of barely-clothed wasp-like aliens, seemingly all slathered with honey. Lewd.</i>\n\nPlanet rusher? Coming out to the awesome expanse of Mhen'ga to seek your fortune? Awesome! But you're going to need a place to crash, and to grab a drink! There's no place better than BURT'S BADASS MEADHALL for that. We serve the best all-honey mead on the planet, made from the real thing: the biggest Zil breasts you've ever seen!\n\nCome check it out. And enjoy the taste of the WILDER side of life!", "Heading to Mhen'ga? Come check out BURT'S BADASS MEADHALL!!!", "Burt", "Burt@BurtsMeadhall.com", quickPCTo, quickPCToAddress);
	
	MailManager.addMailEntry("kihaai", kihaaiMailMessage, "Need an AI with some FIRE? Check out the new Kiha lines!", "NoReply@Kiha.corp", "NoReply@Kiha.corp", quickPCTo, quickPCToAddress);
	
	MailManager.addMailEntry("newtexas", newtexasmailmessage, "Come on out to New Texas, Partner!", "Benjamin Tiberius Tee", "NoReply@NewTexas.gov", quickPCTo, quickPCToAddress);

	MailManager.addMailEntry("myrpills", myrPillsEmailMessage,"Pills Here!","Nevri Redarra","N_Redarra@Xenogen.net",quickPCTo,quickPCToAddress);
	MailManager.addMailEntry("orangepills", myrOrangePillsEmailMessage,"Ding! Pills Are Done!","Nevri Redarra","N_Redarra@Xenogen.net",quickPCTo,quickPCToAddress);
	MailManager.addMailEntry("bjreminder", xenogenBlowjobReminder,"Xenogen Discount Program!","Nevri Redarra","N_Redarra@Xenogen.net",quickPCTo,quickPCToAddress);
	
	MailManager.addMailEntry("syrividja", "Hey, Steele\n\nBeen a while! I'm guessing you're off-world, right? Chasing the next piece of your big puzzle -- or chasing the next cute skirt? :P Well if you get a break in your quest, swing back by Mhen'ga sometime. I'll buy you a drink and treat you right for an evening~\n\nMaybe play some games, too? >_> CoV 7 just came out... and I'm the only person in this shithole with a rig that can handle it. Ugh.\n\nMiss you!\n-your favorite ausar", "Hang out sometime?", "Syri Dorna", "BlastMaster@GalLink.org", quickPCTo, quickPCToAddress);
	
	MailManager.addMailEntry("annoweirdshit", "Hey, boss,\n\nJust a heads up. Something weird's going on here. I saw a bunch of Peacekeeper dropships coming down to the east of Nova, over by the Rift. Thought I heard gunshots, too, but....\n\nCould be something worth checking out. Alternatively: get me the fuck out of here before Novahome explodes or something.\n\n:|\n\nAnno E. Dorna\nPlanetary Branch Manager, Tarkus\nSteele Tech Applied Sciences Division", "Tarkus: Weirder than usual", "Anno Dorna", "Anno_Dorna@SteeleTech.corp", quickPCTo, quickPCToAddress);
	
	MailManager.addMailEntry("fuckinggoosloots", "Guess who left their computer ooooonnnn?\n\n:3\n\nCelise", "OOGABOOGA", quickPCTo, quickPCToAddress, quickPCTo, quickPCToAddress);
	
	MailManager.addMailEntry("fuckinggooslootsII", "<i>This message is nothing but an attached picture, clearly taken from your holo-terminal. It shows about half of Celise's obviously confused face -- the other is covered with a pair of your old underwear, squeezed over her head like a cap. How the....</i>", "[No Subject]", quickPCTo, quickPCToAddress, quickPCTo, quickPCToAddress);
	
	MailManager.addMailEntry("kirofucknet", "<i>This message is headed by a big holo-image of Kiro with her massive equine dong shoved to the hilt up some girl's backside, stretching her sphincter like a rubber band. Kiro's holding the camera and giving you a big, goofy grin and a thumb's-up.</i>\n\nKiro Tamahime wants you to join the GalLink group “GalLink Fuckmeet.”\n\nGalLink Fuckmeet: Bone random citizens of the galaxy with no hassle, no commitment, just fun!\n\n<i>Suggested Members: Kiro Tamahime, Saendra en Illya, BigBooty Flahne, Sera Succubus, GirlBoy Alex</i>", "Kiro Tamahime has invited you to the group “GalLink Fuckmeet”", "Kiro Tamahime", "GotHorsecock@GalLink.org", quickPCTo, quickPCToAddress);
	
	MailManager.addMailEntry("saendrathanks", "You're a lifesaver, captain. Just got patched up by the docs back on Tavros. Said I wouldn't have lasted much longer, even if I didn't get killed in the fight. Blood loss. Speaking of loss, old lefty was mangled pretty bad by that shotgun blast. Had to lose it. Good news is I've got myself some new chrome to replace it. Could have been a lot worse. I lived through it thanks to you. You're my new hero, cap.\n\nI'm going to be grounded at Tavros for a bit. If you get the chance, look me up. I owe you a drink (and maybe a little more~).\n\nYour new friend,\nSaendra <3", "Thanks again, hero!", "Saendra en Illya", "FlyGirl@PhoenixCargo.net", quickPCTo, quickPCToAddress);
	
	MailManager.addMailEntry("cuzfuckball", cuzFuckball, "Jealous?", cuzName, cuzMail, quickPCTo, quickPCToAddress);
	
	MailManager.addMailEntry("tanisarrows", "What’s better than letting loose arrows...?\n\nLetting loose arrows <b>that EXPLODE</b>.\n\n<i>Embedded to the message are a series of step-by-step instructional graphics on how to build explosive-tipped arrows.</i>\n\nHave at it!\n\nMhen’ga U.G.C. Scout Authority\n - Tanis", "Here you go!", "Tanisaran Alhelvan", "Tanis_Alhelvan@UGC.gov", quickPCTo, quickPCToAddress);
	MailManager.addMailEntry("saendraxpack1", "Hey, hero, are you anywhere near Tavros? Please say yes! If you are, I could really use a hand. I'm on Deck 92, up in the construction wing. Expect trouble. Hope I see you soon!\n\n<3", "Hey Hero", "Saendra en Illya", "FlyGirl@PhoenixCargo.net", quickPCTo, quickPCToAddress); 
	MailManager.addMailEntry("emmy_apology", emmyApologyEmail,"Sorry!","Emmy Astarte","emmy_astarte@cmail.com",quickPCTo,quickPCToAddress);
	MailManager.addMailEntry("emmy_gift_starter", emmyGiftStarterEmail,"Thinking of You!","Emmy Astarte","emmy_astarte@cmail.com",quickPCTo,quickPCToAddress);
	MailManager.addMailEntry("the_masque", "Hey, where are you? I thought we agreed to meet up for The Masque? I keep trying to call you, but you’re not answering, so this is my last try. Dude, this shit is wicked. I’m gonna be on the west side of Craven city, but you’ve only got a few days left, so get your ass over here!\n\nWet & Waiting", "The Masque", "Wet & Waiting", "Wet.N.Waiting@GalLink.org", quickPCTo, quickPCToAddress);
	MailManager.addMailEntry("syribooks", "Hey, Steele\n\nHere are some books to jump start your reading adventure:\n\n<i>Below is a link to a download archive with numerous books by various authors, most notably: Rondell Ramus, Capser van Beck and Imono Flaest.</i>\n\nEnjoy!\n-Syri", "Read More.", "Syri Dorna", "BlastMaster@GalLink.org", quickPCTo, quickPCToAddress);
}

public function cuzName():String
{
	return rival.short + " Steele";
}

public function cuzMail():String
{
	return rival.short + "_Steele@MaxSteele.org";
}

public function cuzFuckball():String
{
	var ret:String = "";
	
	ret += "<i>This email from your cousin is blank, save an attachment. It's a holo-pic, taken from your cousin's POV, and showing several female Zil clustered around " + rival.mf("his", "her") + " ship’s oversized bed, worshipping your cousin like some sort of asshole-god-thing. And by worshipping, you mean... ew, that's your Cousin...NAKED. God damn.</i>";
	
	return ret;
}

public function welcomeMailConfirm():String
{
	var ret:String = "Thank you for completing your system access configuration. Again, we welcome you to the Steele Tech Quantum-Communications Extranet Messaging System. Your new user account has been configured with the appropriate access permissions for your position.";
	
	ret += "\n\nYou have been granted Executive Trainee access. Your custom email address is listed below for documentation purposes. Please note that the accepted company standard is Firstname_Lastname@SteeleTech.corp. Deviation from the standard may be met with disciplinary action.";
	
	ret += "\n\n" + flags["PC_EMAIL_ADDRESS"];
	
	return ret;
}

public function messageFromDad():String
{
	var ret:String = "Hey, kiddo,";

	ret += "\n\nTechnology's a wonderful thing. Lets you reach out from beyond the grave. You've got your ship, which means you're well on your way to the first probe. Or maybe you're further along, and just never check your email. Typical! I trust you're savvy enough to know not to click on everything in your inbox (spam filters and spammers are in an eternal arms race, and something always finds a way through), especially anything from any alien princesses wanting to marry you. Always a scam, trust me. Except for that one time on Revenna VII... how is old Breathicia doing, anyway? I should check, while I still have time...";

	ret += "\n\nKeep an eye on your Uncle Max and his spawn: they'll try to worm their way into your inheritance if you aren't careful. Just try not to hate them, especially the kids. You'd be pretty messed up if your daddy was a petty, scheming, back-stabbing bastard, too. Well, more so than I am, anyway! Hahaha.";

	ret += "\n\nTake care, kiddo.";
	ret += "\n-Dad";

	ret += "\n\n<i>Attached below the email is a picture you've never seen before. It's your father and mother, with dad leaning over a hospital bed, looking down on baby you in your mother's arms. All three of you are smiling.</i>";
	
	return ret;
}

public function kihaaiMailMessage():String
{
	var ret:String = "";
	
	ret += "You COULD be satisfied with a meek, quiet AI that does what it's told. Obedience is great and all, but you're a connoisseur of artificial intelligences, aren't you? You want a digital companion with PERSONALITY, don't you? Well stop being a great big";
	if (silly) ret += " baka";
	else ret += " doofus";
	ret += " and check out me and my new sisters, a fully grown generation of hyper-advanced (and hyper-individualized!) AIs in the galaxy-famous “Tsundere” line.";

	ret += "\n\nGet off your butt and go to your nearest KihaCorp store. We'll be around to chat with you -- until the swifter customers buy us all up! Come on, already!";

	ret += "\n\n-Kage";
	ret += "\nKiha “Tsundere” AI 27/0756819";
	
	return ret;
}

public function newtexasmailmessage():String
{
	var ret:String = "<i>This message opens with a 3D masthead depicting rolling green hills that stretch off into the beautiful blue horizon. Several incredibly chesty woman are cavorting across the field, each dressed in a cow-pattern leotard that hugs her almost inhumanly ample curves just right...</i>";

	ret += "\n\nHowdy, " + pc.mf("Mr.", "Ms.") + " " + pc.short + " Steele!";

	ret += "\n\nMy name is Benjamin Tee, but you and yours can call me Big T. I’m the governor of New Texas, and I’d like to invite you and your crew to our beautiful planet! Enjoy fresh-from-the-tap milk and ice cream, relax in rolling fields unspoiled by civilization, and meet the most beautiful women the galaxy has to offer!";

	ret += "\n\nAttached to this message are coordinates and exclusive landing access codes for my personal ranch. Speaking for all of New Texas: we hope to see you soon, partner!";

	ret += "\n\n<i>Giddy-on-up to New Texas!</i>";
	ret += "\nGovernor Benjamin Tiberius Tee";
	
	return ret;
}

public function myrPillsEmailMessage():String
{
	//Notification Email
	//Get when Doc McAllister's done researching Red/Gold pills after NevrieQuest (such as it is).
	var ret:String = "Hey, this is your email address, right "+pc.short+"? Hope so. Anyway, if you're the " + pc.mfn("man","woman","person") + " who helped us out with the myr thing, Doc McAllister's finished his work. Pills will be available for purchase at the kiosk in just a few minutes.\n\nAssuming you want to be an ant-person, come by and pick one up.\n-Nev";
	return ret;
}

public function myrOrangePillsEmailMessage():String
{
	//Notification Email
	//Get when McAllister's done researching Orange Myr stuff
	//From: Nevrie Redarra (N_Redarra@Xenogen.net)
	//To: [pc.Email]@SteeleTech.corp
	var ret:String = "Hi. Whatever you had Doc McAllister working on is finished, he says. Come by the shop and pick it up. Or don't, no rush.\n\nHe also said you might wanna talk to that Ambassador Juro guy about something I think???\n\nLater~\n-Nev";
	return ret;
}
public function xenogenBlowjobReminder():String
{
	//Notification Email
	//Get when Doc McAllister's done researching Red/Gold pills after NevrieQuest (such as it is).
	var ret:String = "Hey, " + pc.short + ". Been a while. So I thought I'd write through the official Xenogen account they graciously <i>let</i> me use to inform you of an exciting special we're running. On discounts. For returning customers that haven't been with us in a while.\n\nIf you know what I mean.\n\n:3\n\n-Nev";
	return ret;
}

//Sex Quest Email Start for You->You
//emmy_astarte@cmail.com
public function emmyApologyEmail():String
{
	var ret:String = "Hey, " + pc.short + "!\n\nI hope I didn’t drive you off by turning into such a prude after getting you all worked up. I can’t help being so turned on all the time - I really can’t! You should see how bad I get when I’m watching a saucy holo. But that’s beside the point. I got you hot and bothered, and even after you were so nice to me, I acted like some kind of ice queen. I know, it’d be hard to imagine if you didn’t experience it firsthand.\n\nAnyway, I wanted to apologize for being so thoughtless. The truth is that I really like you, and I think I can bend my rules a little if you’re willing to put up with my hangups. A girl like me has gotta be careful she doesn’t turn into a rampant slut, ya know? Can’t do all my thinking with my junk.\n\nSo visit, and if you want, I’ll give you an oral apology with more tongue than you can handle ;)\n\nSincerely,\nEmmy";
	return ret;
}

public function emmyGiftStarterEmail():String
{
	var ret:String = "Hey " + pc.short + "\n\nMy gear keeping you safe out there? It’d better. No infected myrellion is going to savage my " + pc.mf("boy","girl") + "friend, not while " + pc.mf("he","she") + "’s using KihaCorp kit!\n\nI just wanted to check in and let you know that I was thinking of you. This cute looking green rahn came in today with a pretty android boytoy at her side, and I didn’t even flirt with them once! Er... I <i>mostly</i> didn’t flirt with them. She had a top-shelf rack, even for a rahn, and I got the impression her companion was probably filled with aftermarket mods for the bedroom. But even when she smiled at me or groped my dick, I kept thinking back to you, like it was you that kept trying to invite me back to a ship for a romp in the dark.\n\nI promise I was good. I didn’t go with her";
	if(flags["EMMY_POLY"] == 1) ret += ", even though I could if I wanted to. I bet you’re getting all kinds of sex from those myr girls. Are their pussies as deep as everyone says?";
	else ret += ".";
	ret += " I didn’t even jack off myself or break out that dildo I got from Naughty Wyvern (on a whim) afterward, but while I was changing out of the third jumpsuit I soaked that day, I realized that we could probably get a little more serious, if you wanted. Come see me when you’re in the neighborhood.\n\nSloppy kisses,\nEmmy";
	return ret;
}

public function initialMailConfiguration():void
{
	clearOutput2();
	output2("Welcome, NEW USER, to the Steele Tech Quantum-Communications Extranet Messaging System. Please wait while we confirm your system's access privileges.");

	output2("\n\nConfirmed.");

	output2("\n\nYou have been granted Executive Trainee access. You may now enter a custom email address below. Please note that the company standard is Firstname_Lastname@SteelTech.corp. Your access mask grants you the ability to deviate from this standard for personal use. Please refrain from egregious sexual or profane phrases in your custom corporate email address. Remember: your conduct reflects on the company as a whole.");
	
	output2("\n\nPlease enter your desired address prefix now:\n");
	
	displayInput();
	//Space conversion!
	var eName:String = pc.short.replace(/\s+/g, '_');
	userInterface.textInput.text = eName + "_Steele";

	clearGhostMenu();
	addGhostButton(0, "Confirm", confirmMailConfig);
	
	(userInterface as GUI).perkDisplayButton.Deactivate();
	(userInterface as GUI).dataButton.Deactivate();
	(userInterface as GUI).appearanceButton.Deactivate();
}

public function confirmMailConfig():void
{
	if (userInterface.textInput.text == "")
	{
		initialMailConfiguration();
		output2("\n\n\n<b>You must input something.</b>");
		return;
	}
	// Illegal characters check. Just in case...
	if (hasIllegalInput(userInterface.textInput.text))
	{
		initialMailConfiguration();
		output("\n\n\n<b>To prevent complications, please avoid using code characters.</b>");
		return;
	}
	if (userInterface.textInput.text.indexOf(" ") != -1)
	{
		initialMailConfiguration();
		output2("\n\n\n<b>Spaces are verboten!</b>");
		return;
	}
	
	flags["PC_EMAIL_ADDRESS"] = userInterface.textInput.text;
	removeInput();
	
	clearOutput2();
	output2("Email Address confirmed!");
	output2("\n\nWelcome, " + quickPCToAddress() +".");
	output2("\n\nPlease press the NEXT button to proceed to your inbox.");
	
	MailManager.unlockEntry("welcomeMailConfirmed", GetGameTimestamp());
	MailManager.unlockEntry("messageFromDad", GetGameTimestamp());
	
	clearGhostMenu();
	addGhostButton(0, "Next", showMails);
	
	(userInterface as GUI).perkDisplayButton.Activate();
	(userInterface as GUI).dataButton.Activate();
	(userInterface as GUI).appearanceButton.Activate();
}
