﻿/*
-glasses girls are dumb and I hate them
-
-NPC had earth-style clothes made based on clothing in an old Earth biographical vid she saw about a frontierswoman who was a doctor, a queen, and a medicine woman all at the same time
-NPC has been studying UGC (Earth) education theory, suspects that the failure to divide labor to the most skilled teachers by subject may be holding back gold myr research and industry (but doesn’t see a way to switch with so many kids and so few adults)
-kids are uniformed in vests and skirts according to assigned prefect, to make IDing simpler and also to not have nude children in the scenes
-proudly horse-compatible since 1983

schedule reference:
0600-0659 - kids at breakfast; NPC eating and prepping alone in classroom
0700-1159 - NPC and kids in class or field trip (never off-premises while PC is present), half of sumins and honeypot teen students being milked in milking room
1200-1259 - lunch break, NPC alone in courtyard
1300-1759 - NPC and kids in class/trip, other half of sumins/honeypot students being milked
1800-1859 - evening meal, NPC alone in courtyard
1900-2059 - kids’ rec time, NPC preparing tomorrow’s materials with fat friend in classroom	2100-2159 - kids curfewed in bed, NPC ‘relaxing’ (working) in chambers nearby
2200-0559 - school inaccessible at night


click here for content


room descript revisions
//changes marked in Dunmer skin

735 THOLLUM\nFOYER
//at the bottleneck
//please restrict the thollum squares behind the foyer until the PC has obtained the pass

//before completing ‘Check In’ or if time 2200-0559
An enormous, weatherbeaten stone complex, the thollum, stands around you. This is an institution that processes the hundreds of female gold myr children born to Irellia every year - housing, rearing, education, and job placement are all handled inside this labyrinthine structure. Guards stand posted in the main foyer you’re currently at, and it’s a safe bet that there are more in the other rooms. {(if time 2200-0559)They notice you, and warn you away. Doesn’t look like you’re allowed to wander around the building at night.}
//present ‘Check In’ if incomplete and time 0600-2159

//else if PC has completed ‘Check In’ and time is not 2200-0559
“Hey, [pc.name],” says the well-built woman at the entrance. “Back to visit again?” She checks you in while her partner radios your arrival to whichever desk they report to.

//else if ‘Check In’ complete and daytime
Once again you find yourself in the immense, fane-like main foyer of the thollum, {(time 2100-0559)with only a few guards and lingering staff for company. /(else)surrounded by a bustle of gold myr women and vested children who barely look up from their hurried ambulations or oblivious play. Adolescents sit on benches together, reading from books. Some of them even hold hands while doing so. Thinking back, a second set of hands would’ve been nice to have in your school days. }A hallway connecting to some classrooms is open to the east, and a broad door on the north side offers glimpses of a courtyard when it swings to. A wide staircase leads down to a sub-basement, but the myr guards posted at it don’t look prepared to let you descend.

{(if 2100-2159 and Yarasta unlocked)Yarasta is most likely in her chamber at the foot of the stairs, one floor below. If you want to visit, you’ll need to ask a guard to deliver her a message. }
//display button ‘Take the Tour’, if hour 2100 and she is unlocked also display ‘Yarasta’

736 THOLLUM\nYARD
//Mushroom Tracker outputs added, tracks cum spilled in sex scenes that occur while Yarasta is in the yard and grows mushrooms; seeing prev descrip is required to unlock next (i.e. slow growth)
The thollum’s yard isn’t much of a yard; grass doesn’t really grow this deep underground. Nonetheless, a faint breeze blows through, likely piped down from the surface. Along the fringes there are several plots of tall fungi and even a few plants in various states of health, with gardening tools and supplies nearby. These must be practice gardens for agriculture students. A carpet of soft-capped mushrooms has grown over the rest of the area{(Mushroom Tracker < 10000mL). /(Mushroom Tracker >= 10000mL); the stalks in one section near the door are even several inches higher than the rest for some reason. /(Tracker >= 20000mL and has seen 10000 milestone); one familiar section near the door has stalks almost a foot higher than the rest, suggesting it gets much more nutrition somehow. /(Tracker >= 40000mL and has seen 20000 milestone); one overgrown, familiar section near the door is practically rank with two- and three-foot variants, and you think you know what ‘fertilizer’ they’ve been getting. /(Tracker >= 80000mL and has seen 40000 milestone); the ridiculously jungly section where Yarasta usually sits is practically a thicket of mushroom caps thanks to your spilled cum. /(Tracker >= 160000mL and has seen 80000 milestone); the mushrooms at the cum-flooded rendezvous shared by you and Yarasta have grown into an umbrageously dense, fungus-redwood forest whose caps bend against the cavern ceiling - the staff have even started hanging lights on the foot-wide trunks to keep girls from getting lost in them. }The garden mushrooms don’t glow, but they are spongy and tough enough to endure {(time 1900-2059)the hundred or so uniformed myr children currently playing. Some of them are engaged in a game involving a spherical rock and white, wood-like shields. It’s very physical and reminiscent of a more medieval form of rugby. /(time 0700-1159 or 1300-1759)the plodding feet of students moving to and fro, working on their gardens under the supervision of a few adult myr. /(else)children’s feet. The courtyard is deserted right now, except for a few myr tidying. }

{(hour 1200 or 1800 and Yarasta unlocked)Yarasta is here, enjoying the ‘fresh’ air and working in some books as she takes her meal. }{(time 2200-0559)A myr spots and approaches you. “Excuse me, but visitors aren’t allowed in the thollum after lights out. Please come with me.” }
//if hour 1200 or 1800 and she is unlocked, present ‘Yarasta’ button, else if 2200-0559, return PC to Thollum Foyer
//mark most recently-seen Mushroom Tracker milestone
737 THOLLUM\nCLASSROOMHALLWAY
This long, wide hallway connects to several rooms that are unmistakably classrooms, even without any desks. Instead, the myr have arranged a multitude of cushions on the floor of each one around a thin sand pit. A long-handled cane lies next to it alongside a rake. They must use that instead of a holo-board. Educational posters on the wall show warnings about everything from “chitin itch” to how to identify Scarlet Federation landmines. A few guards stand watch in the hallway, looking quite relaxed at their comparatively dull posts.

{(time 2100-0559)The rooms are currently empty. All the myr are elsewhere. {(time 2200-0559)A guard approaches you politely. “Excuse me, but the school is restricted after lights out. I’ll need to show you back to the entrance.” }/(time 700-1159 or 1300-1759)Teachers and students are audible through the doors{(unlocked), Yarasta among them}. The children are surprisingly quiet for their lessons, considering there must be upwards of a thousand here. /(else)A few adults are in the rooms, working or taking quick meals, but the children are elsewhere. {(time 0600-0659 or 1900-2059 plus unlocked)Yarasta is among those that remain. }}
//present ‘Yarasta’ button if unlocked and time 600-1159, 1300-1759, or 1900-2059; return PC to Thollum Foyer if time 2200-0559
*/


//Thollum Pass - for Lyralla’s menu
//jam in Lyralla’s text somewhere - you pick if failing ‘Check In’ first and/or hearing about myr child-rearing are required
//tooltip: Ask Lyralla for a pass to visit the thollum.
//tooltip disabled, already did: You already have a thollum visitor’s pass. Just don’t break anything.
public function thollumPassScene():void
{
	clearOutput();
	showLyralla();
	//(bimbro)
	if(pc.isBimbo() || pc.isBro()) 
	{
		output("<i>“I wanted to, um, see the school,”</i> you announce.");
		output("\n\nLyralla pauses, perhaps expecting more explanation. <i>“And... why?”</i>");
		output("\n\n<i>“Cuz it’s interesting? Like, I mean, teaching hundreds of kids at once sounds totally crazy to start with.”</i> You give her the most innocent face you can.");
	}
	//nice
	else if(pc.isNice())
	{
		output("<i>“Could I get a pass to see the thollum?”</i> you ask.");
		output("\n\nLyralla considers this. <i>“Perhaps. Why do you wish to visit?”</i>");
		output("\n\n<i>“I’m curious,”</i> you explain. <i>“It must be pretty strange to handle a hundred or more children at once.”</i>");
	}
	else if(pc.isMischievous())
	{
		output("<i>“Like to visit the thollum, if you don’t mind.”</i>");
		output("\n\nLyralla’s eyebrow raises quizzically. <i>“I probably don’t, but let’s find out: what’s the purpose of your visit?”</i>");
		output("\n\n<i>“I love to watch young hearts at play,”</i> you quip. <i>“So I can only imagine the chaos when hundreds of them are playing at the same time.”</i>");
	}
	else
	{
		output("<i>“I want to enter the school - the thollum,”</i> you say, bluntly.");
		output("\n\nLyralla’s lips tighten to a thin line. <i>“That’s unexpected. Why?”</i>");
		output("\n\n<i>“Why does it matter?”</i> you ask. She doesn’t budge, so you exasperatedly add, <i>“Because I don’t believe that you can possibly handle such large numbers of children the way you claim.”</i>");
	}
	output("\n\n<i>“I suppose it would seem that way, to an outsider,”</i> she concedes. <i>“Very well. You’re to be on your best behavior and follow all instructions given to you by security or staff while on thollum grounds. If you accept those conditions, I can upgrade you to the pass we give to visiting lecturers.”</i>");
	output("\n\nYou toss your Gildenmere city pass on the desk.");
	if(pc.isBro() || pc.isBimbo()) output(" <i>“Cool beans.”</i>");
	else if(pc.isNice()) output(" <i>“Sure.”</i>");
	else output(" <i>“Whatever you say.”</i>");

	output("\n\nLyralla pulls out a small stamp and places one in the bottom left corner of your pass before sliding it back to you. <i>“Be mindful of the rules and do as you’re told, or your city pass will be revoked. Is there anything else you’d like to discuss?”</i>");
	processTime(4);
	//modify city pass item and return to whatever
	//9999
	lyrallaMainMenu();
}

//Check In
//from Thollum Foyer, must be completed to enter other squares
//tooltip: Visit the myr version of a girls’ boarding school. Due to the sheer number of anklebiters, shinpads are recommended.
//tooltip disabled, restricted at night: School visitation at night is by-prior-arrangement only.
public function checkInTheThollum():void
{
	clearOutput();
	//no pass privilege
	if(9999)
	{
		output("An armed and rather hard-bodied gold myr guard and her less-jacked partner stop you just inside the gate. The former says, <i>“Pardon, offworlder. I don’t know your face, which means I probably need to see your pass.”</i>");
		output("\n\nYou hand her the city pass you received, which she scrutinizes while you take the opportunity to look her over. She’s short but very... muscular, with knitted arms and thighs and even the outline of some abs between her small breasts and her chitinous girdle.");
		if(pc.isBro()) output(" Maybe you could trade some lifting tips?");
		output("\n\n<i>“Sorry. You may not enter,”</i> the woman says, handing back your pass. <i>“This is just a standard pass. Feel free to go anywhere else in Irellia’s sector - I recommend seeing The Honey Nozzle at least once, if you haven’t yet.”</i>");
		if(pc.isbimbo()) output("\n\n<i>“But I wanna scope the school,”</i> you whine.");
		else if(pc.isBro()) output("\n\n<i>“Well, ");
		else if(pc.isNice()) output("\n\n<i>“I had my heart set on looking around the thollum,”</i> you reply.");
		else
		{
			output("\n\n<i>“Standard? ");
			if(!pc.isAss()) output("What’s");
			else output("The fuck’s");
			output(" it take to get in there, then?”</i> you ask.");
		}
		output("\n\nThe burly myr tucks her weapon between two arms awkwardly. <i>“Gotta have a thollum visitor’s stamp to see the thollum. See the empty spot in the bottom-left? Nothin’ there,”</i> she returns, and then to head off any further discussion: <i>“If you think your pass was restricted in error, best see the office that issued it.”</i>");
		output("\n\nThat’ll mean Lyralla. You say your goodbyes.");
		output("\n\n<i>“Have a good day,”</i> the guard says.");
		processTime(3);
		//goto fuck yourself
		//9999 punt PC back to the street.
	}
	//has pass privilege, first visit
	else if(flags["BEEN_TO_THOLLUM"] == undefined)
	{
		output("Two guards stop you inside the main entrance. <i>“Pardon, but I don’t know you, which means I need to check your pass,”</i> says the one on the left.");
		output("\n\nYou hand over the card and take the opportunity to look them over while she reads it. The right one is ordinary-looking, while the shorter left one can only be described as <i>fit</i>, with slightly-visible abs and thewy, knitted limbs tucked into chitin sleeves. Her well-defined bicep uncurls as she hands the pass back.");
		output("\n\n<i>“You’re good to go, " + pc.mf("mister","miss") + " [pc.name]. I’ll accompany you.”</i> The muscular myr woman tucks her weapon under her arm before addressing her partner. <i>“I’m going with the visitor. Radio it in.”</i>");
		output("\n\nThe other nods, and you are led into the thollum. The foyer that you enter is very large, with a wide open floor flanked by unexpected columns, capped ovoids in a surprisingly Doric variant of the myr style. Gold myr of many shapes and ages, all female, come and go through these arteries. The cavern is discolored and distressed inside as well, though instead of the natural chips of the exterior stones, the interior has clearly been explored by hundreds of thousands of small, curious hands - the perfect forms and clean lines of proud craftsmen are still evident where the walls and fixtures meet the ceiling, up where children and their colored chalks cannot reach. Despite the eye-level disfigurements, the sheer scale and impressive, temple-like plan fill you with a sense of being somewhere immeasurably sophisticated and important.");
		output("\n\n<i>“Big, isn’t it?”</i> asks your companion. A note of pride sounds in her voice. Well, this is probably her <i>alma mater</i>, after all. <i>“Did you have a particular place you needed to be, or are you just here to see the grounds?”</i>");
		//unlock and display ‘Take the Tour’ button
		processTime(3);
	}
}

//Take the Tour
//available from the Thollum Foyer after ‘Check In’ is completed
//repeat status can be tracked by whether Yarasta is unlocked
//tooltip: Be shown around the thollum by the guard. BYOB.
public function takeTheThollumTour():void
{
	clearOutput();
	//(first time)
	if(flags["THOLLUM_TOURED"] == undefined)
	{
		if(pc.isBro() || pc.isBimbo()) output("<i>“So, like, who do I see about the full tour?”</i> you ask, turning toward the guard.");
		else if(!pc.isAss()) output("<i>“I’d like to be shown around,”</i> you say to the guard.");
		else output("<i>“You had better lead me through this place by the wrist, because I’m an untrustworthy alien,”</i> you sneer at the guard.");
		output("\n\nThe myr guard smiles");
		if(pc.isAss()) output(" mockingly, holding out a hand");
		output(". <i>“I’ll be your guide to the thollum today.”</i>");

		output("\n\n");
		if(pc.isBimbo() || pc.isBro()) output("<i>“Aren’t you a cop? You have to tell me if you’re a cop,”</i> you reply.");
		else if(pc.isNice()) output("<i>“You? I mean, not a staff member?”</i> you ask, surprised.");
		else if(pc.isMischievous()) output("<i>“Oh, are you not just a random bodybuilder? The gym teacher, perhaps?”</i> you gibe gently.");
		else output("<i>“Seriously?”</i> you snort, batting the hand away. <i>“You? You’re not going to pass me off to the damn staff, at least?”</i>");
		output("\n\n<i>“Quite astute,”</i> the woman replies. <i>“I’m an officer of the Gildenmere police, but I will be escorting you. The actual staff are all a bit busy watching thousands of young to babysit a single curious offworlder.”</i> She favors you with a jovial smirk.");
		if(pc.isAss()) output(" <i>“And please don’t use profanity in the thollum.”</i>");
	}
	else
	{
		//(repeat tour)
		if(pc.isBimbo() || pc.isBro()) output("<i>“Uh... could you show me around again? I forgot some stuff.”</i>");
		else output("<i>“I could use a refresher on the grounds,”</i> you say.");
		output("\n\n<i>“Sure,”</i> the myr cop answers.");
	}
	output("\n\nThe buff myr leads you through the foyer, heading toward the large courtyard door. Your eyes are drawn in many directions at once");
	//(not 2100-2159)
	if(hours < 21 || hours >= 22) output(", not least because of the rampant children perpetrating tiny mayhems");
	output(". Murals cover the floor and depict historical topics with a kid-friendly, cartoony style, bright or faded in places according to the nearness of footpaths. Drawings in more childish hands decorate the walls and columns, done with chalk and, judging by incompleteness, often interrupted by an approaching adult. <i>“The thollum is somewhat extensive, so please remain at my side and do not wander off,”</i> says the guard, interrupting your study of the ‘art’.");
	output("\n\n<i>“Right,”</i> you ");
	if(!pc.isAss()) output("agree");
	else output("gripe, sarcastically");
	output(".");

	output("\n\n<i>“This is the main foyer, as I’m sure you’ve guessed. The rooms of the thollum connect here, and visitors are received here as well.”</i> She continues forward, opening the large door. <i>“Through here is the thollum courtyard.”</i>");

	output("\n\nThe cavern beyond is carpeted with short, colorful caps that feel springy and resilient under your [pc.feet] when the guard walks you to the center. The flexible, blunted mushrooms must make this place a natural romper room");
	if(hours >= 19 && time < 21) output(", particularly since hundreds of myr children are taking their leisure here, dirtying their clothes in rough games and lounging about. A few are even eating the mushrooms, though this could be more by eccentricity than design}. Along the walls are fenced-off sections containing much larger fungi and plants, along with tools and bags that are recognizable as gardening supplies even at this distance");
	//(Mushroom Tracker < 10000mL). /(Mushroom Tracker >= 10000mL)
	if(9999) output(", and the stalks in one section near the door are even several inches higher than the rest.");
	///(Tracker >= 20000mL and has seen 10000 milestone)
	else if(9999) output(", and one familiar section near the door has stalks almost a foot higher than the rest, suggesting it’s been getting nutrition from what you do there.");
	//(Tracker >= 40000mL and has seen 20000 milestone)
	else if(9999) output(", and one overgrown, familiar section near the door is dense with two- and three-foot variants and large fallen stalks, the products of your and Yarasta’s tandem ‘gardening’.");
	//(Tracker >= 80000mL and has seen 40000 milestone)
	else if(9999) output(",and the ridiculously jungly section where you and Yarasta meet is woodsy with mushroom caps thanks to your spilled cum.");
	//(Tracker >= 160000mL and has seen 80000 milestone)
	else output(", and the shrooms nourished on your jizz under have grown into a thick, shadowy, fungus jungle whose caps stretch to the ceiling under Yarasta’s ‘care’. Lights hang on the foot-wide trunks to keep girls from wandering in and getting lost.");
	output(" A breath of hot, dry air alleviates the suffocating mugginess you’d expect from a giant fungus farm, suggesting a vent to the surface is hidden somewhere.\n\n<i>“The mushroom carpet creates a suitable play area where the children can burn off their built-up energy before sleeping. The alcoves on the walls are here for lessons in botany and agriculture,”</i> explains the guard, confirming your guesses. She leads you back toward the door.");
	processTime(15);
	//1800 and first time
	if((hours == 12 || hours == 18) && flags["THOLLUM_TOURED"] == undefined)
	{
		output("On your way back, you notice a myr woman that you missed on your walk to the garden center, sitting and taking a meal while working in several books. The woman is clearly a teacher of some kind.");
		output("\n\n<i>“Afternoon, Yarasta,”</i> says your escort as you pass by.");
		output("\n\n<i>“Oh, hello,”</i> she says, hurriedly getting to her feet. <i>“I didn’t see you.”</i> ");
		//BEGIN DESCRIP of Yarasta and intro conversation for first meeting only - copy to other possible first meeting locations where indicated
		clearMenu();
		addButton(0,"Next",yarastaIntroduction,tourPartTwo);
		return;
	}
	clearMenu();
	addButton(0,"Next",tourPartTwo);
}

public function yarastaIntroduction(nextScenes:Function = undefined):void
{
	if(nextScenes != undefined) clearOutput();
	else output("\n\n");
	showYarasta();
	output("The myr woman in front of you is tall for her species - probably 5’8” - and looks decidedly academic. Her brown hair is tucked and pinned into a tidy bun, displaced only by her obligatory antennae. A sky blue long-sleeved button-down blouse in a classic Terran style covers her chest and arms, albeit with notably myrrish highlights like the softly wavy collar reminiscent of poured honey. Her mid-length, sheer black skirt has a gently-slanted hemline, showing just a bit of thigh and knee on her left leg before her chitin boot begins, and a half-slit up the back allows her abdomen to move naturally.\n\nHer eyes are gray, unusual for myr but not unheard of. Most noticeably, a pair of silver half-frame glasses rests on her nose, suggesting, more than anything else, that she would be the person to ask about getting a library card. She’s rather thin and her breasts are quite small for her race, large A-cups at best, but her body plan sports similar curves to the bustier myr you’ve seen. If you had to guess, you’d wager that she grew up normally and then lost a lot of weight.");
	//(pc high myr score)
	if(pc.myrScore() >= 4) output("\n\nShe holds out a hand in a foreign, myrmedion gesture, probably a greeting.");
	else output("\n\nShe holds out a hand in a familiar Terran gesture.");
	output(" <i>“Very pleased to meet you. I’m Yarasta, a prefect at the thollum.”</i>");

	output("\n\n<i>“[pc.name],”</i> you respond, taking the proffered hand.");
	if(pc.isBimbo()) output(" <i>“Um, did you you say ‘perfect’?”</i>");
	else output("<i>“Did you say ‘prefect’?”</i>");

	if(pc.myrScore() >= 4) output("\n\nYarasta looks quite confused as you shake hands. The police at your side elucidates. <i>“[pc.HeShe]’s an offworlder.”</i>");

	output("\n\nThe woman’s huge smile is positively geeky. <i>“");
	if(pc.myrScore() >= 4) output("Oh, you’re not myrmedion. Such an uncanny resemblance!");
	else output("Not actually.");
	output(" What I said was ‘maer stediosa’,”</i> she answers, enunciating each syllable and then pausing to baffle your translators. <i>“Which translates to ‘knowledgeable elder student’. The U.G.C. translator software renders it as ‘prefect’, which I understand has a similar meaning. Wonderfully interesting.”</i>");
	output("\n\n<i>“So");
	if(pc.isBimbo()) output(", like,");
	output(" what’s a ‘prefect’ do?”</i>");

	output("\n\n<i>“We’re the highest-ranking educators in the thollum below the administrative level,”</i> Yarasta explains. <i>“Together with the tasty boobs, we’re responsible for the rearing of the children.”</i>");

	output("\n\n<i>“What?”</i> you interrupt, not sure you heard right.");

	output("\n\n<i>“I said, we’re responsible for the rearing of the children, together with the yummy breasts.”</i>");

	output("\n\n<i>“Yummy breasts?”</i>");

	output("\n\nThe prefect points at another myr adult nearby, a voluptuous woman with a big, honey-swollen bosom. <i>“There’s one.”</i> Well, they’re definitely yummy.");

	output("\n\n<i>“May I?”</i> interjects your muscly escort. <i>“I’ve noticed this before. The word we use means something like ‘breast for eating’ and the U.G.C. software spits out a literal translation.”</i>");

	output("\n\n<i>“Oh my,”</i> replies Yarasta, as you take out your codex and punch in an override for the translators in your brain. <i>“How cool is that? I must write it down.”</i>");

	output("\n\n<i>“Once more,”</i> you request.");

	output("\n\n<i>“Soo-mins,”</i> the prefect says. <i>“Sumins. We work with the sumins to raise the girls.”</i> She waits for you to acknowledge before continuing. <i>“They’re just below us in rank. They do work like serving food, individual tutoring, and helping to grade papers.”</i>");

	output("\n\n<i>“Hey, aren’t you gonna run behind if you stand around talking all day?”</i> asks the guard, politely.");

	output("\n\nYarasta takes a timepiece from her blouse pocket and examines it. <i>“Oh, dear yes. At this rate, my schedule will be in tatters. I enjoyed speaking with you, [pc.name]. Let’s continue our conversation sometime later.”</i>");

	output("\n\nYou bid her farewell and move on with your escort.");
	//END OF DESCRIP and intro conversation
	if(nextScenes != undefined)
	{
		clearMenu();
		addButton(0,"Next",nextScenes);
	}
	flags["MET_YARASTA"] = 1;
}

public function tourPartTwo():void
{
	clearOutput();
	output("The myr guard takes you back through the foyer, enroute to the classrooms. As you enter the connecting hallway, you attention is drawn to the central feature of each room: lacking holo- or chalk-boards, the myr apparently do their demonstrations in a pit of fine sand. Cushions surround it, doubtless places for the girls to sit.");
	if((hours >= 7 && hours < 12) || (hours >= 13 && hours < 18)
	{
		output(" The classes are full right now, packed with girls in color-coded vests and skirts trying to learn.");
	}
	else output(" The girls are absent right now; only a few adults linger in the halls and classrooms.");
	output("”</i>These are the classrooms, as I’m sure is obvious. I’m equally sure you know what a classroom is,”</i> says your escort, dryly. <i>“Girls without other responsibilities, such as the garden alcoves, do their learning here.”</i>");

	//if first encounter and time 0600-0659 or 1900-2059
	if(flags["THOLLUM_TOURED"] == undefined && (hours == 6 || (hours == 19 && hours < 21))) 
	{
		output(" One myr in particular is busily working in her open classroom. Your guard stops by the door and knocks politely, causing her to look up.");
		output("\n\n<i>“");
		if(hours == 6) output("Morning");
		else output("Evening");
		output(", Yarasta,”</i> says your escort.");

		output("\n\nThe myr stands up and stretches, then comes to the door. <i>“Hi there.”</i>");
	}
	//(else if first encounter and time 0700-1159 or 1300-1759)
	else if(flags["THOLLUM_TOURED"] == undefined && ((hours >= 7 && hours < 12) || (hours >= 13 && hours < 18)))
	{
		output(" One room is deathly quiet; passing by the door, you can see that the poor girls within are in the middle of some kind of examination, scratching at papers atop slates laid over their laps. The woman in charge looks to be idle; she happens to glance over, and your escort waves. You can hear her make a short announcement, though you have to guess at its content, and then she steps outside to greet you.");
		output("\n\n<i>“Hi, Yarasta,”</i> says your strapping companion.");
		output("\n\n<i>“Hello,”</i> the new myr replies, before turning to look you over.");

		//if first time, copy Yarasta first meeting descript and intro conversation from above to here
		yarastaIntroduction();
	}

	output("\n\nThe myr guard turns around and leads you back through the foyer again, this time heading for the stairs. She nods to the security officers posted there, who nod back and allow you to descend. Another long hallway stretches out before you, this one twice as long as and half as wide as the one leading to the classrooms. Doorways dot the walls, opening into rooms with tens of bedrolls arrayed barracks-style, and smaller hallways branch from the main one at intervals, leading to yet more doors.");
	output("\n\n<i>“This is the dormitory,”</i> your guide says. <i>“As you saw, it’s usually off-limits to visitors. Staff rooms are at the foot of the stairs and the corners, with girls further down. There’s also a nursery at the end.");
	if(hours == 21) output(" The girls are in bed now, so please be quiet.");
	output("”</i>");

	//time 2100-2159 and Yarasta unmet
	if(hours == 21 && flags["MET_YARASTA"] == undefined)
	{
		output("\n\nUnnoticed by you, a myr woman has come to the doorway of the room by the stairs.");
		output("\n\n<i>“Giving a tour,”</i> she observes. Your attention snaps to her and the bedroom behind, which obviously doubles as an improvised study from the books piled everywhere.");
		output("\n\nThe myr guard acknowledges her. <i>“Hey, Yarasta. Yeah.”</i>");
		output("\n\nThe newcomer turns to you and looks you over.");

		//copy descript and intro chat to here if first meeting and time 2100-2159
		yarastaIntroduction();
	}
	output("\n\nThe guard leads you to one last location in the sub-basement: a large room replete with benches and pillars. More posters are hung around the room on the walls and pillars, jugs are stacked or resting against odd walls, and an open door at the opposite end leads to what looks like a machinery room, full of hoses and apparatus. The entire area smells of stale honey.");
	if(hours == 6 || hours == 12 || hours == 18) output(" Children and adults mill everywhere, taking their meals. Many children have a big cup of honey to go with their food, which they only occasionally spill all over their vests.");
	output(" <i>“This is the cafeteria,”</i> explains the guard. <i>“Food and honey rations are served here at mealtimes. The honey is gathered in-house, of course.”</i> She points to the machinery room, which you now understand must be a milking station.");
	output("\n\n<i>“That’s it; that’s the tour,”</i> your guide announces. <i>“If you’ll come with me, I’ll take you back to the foyer.”</i>");
	//place PC in Thollum Foyer if not there, pass 30 minutes or so, unlock Yarasta if locked
	//mark most recently-seen Mushroom Tracker milestone
	processTime(30+rand(4));
	IncrementFlag("THOLLUM_TOURED");
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

//Yarasta
//hidden (not disabled) until the PC meets Yarasta on the first tour
//button moves according to Yarasta’s schedule:
//0600-1159, 1300-1759, 1900-2059: in Thollum ClassroomHallway
//1200-1259, 1800-1859: in Thollum Yard
//2100-0559: in Thollum Foyer
//tooltip: Check in with Yarasta. She’s {(time 0600-0659)in class alone. /(700-1159 or 1300-1759)with her class. /(1200-1259 or 1800-1859)eating alone in the courtyard. /(1900-2059)working in the classroom with {a friend/Giala}. /(2100-2159)in her quarters below the foyer. }

//intros (and locations)
public function approachYarasta():void
{
	clearOutput();
	showYarasta();
	//0600-0659 (Classroom Hallway)
	if(hours == 6) 
	{
		output("Yarasta is prepping some lessons while her breakfast sits nearby, ignored. She looks up when you tap on the open door, and smiles.");
		output("\n\n<i>“Hello, [pc.name]. Did you come to talk?”</i>");
	}
	//0700-1159 or 1300-1759 (Classroom Hallway)
	else if((hours >= 7 && hours < 12) || (hours >= 13 && hours < 18))
	{
		output("\n\nYarasta is in class, surrounded by hundreds of young-ish myr girls all wearing dusty vests with her symbol. She talks and points constantly, explaining new information and then questioning the girls. Occasionally she draws a visual aid in the sand.");
	}
	//1900-2059 (Classroom Hallway)
	else if(hours >= 19 && hours < 21)
	{
		output("\n\nYarasta is in her classroom sorting out lessons for tomorrow. ");
		if(9999) output("A friend");
		else output("Giala");
		output(" is also with her, and the two occasionally share a laugh as they work. The prefect notices you at the doorway, and waves.");
		output("\n\n<i>“Hi, [pc.name]. Good to see you again.”</i>");
	}
	//1200-1259 or 1800-1859 (Courtyard)
	else if(hours == 12 || hours == 18)
	{
		output("\n\nYarasta picks at a meal while poring over a book. You tap her on the shoulder and she looks up.");
		output("\n\n<i>“Oh, hello. Care to sit with me?”</i>");
	}
	//2100-2159 (Foyer/Basement)
	else if(hours == 21)
	{
		output("\n\nYou ask the guard at the top of the stairwell if she might pass a message to Yarasta, letting her know that you’re here for a visit. The myr nods and descends the stairs. A few minutes later, Yarasta returns with her.");
		output("\n\n<i>“[pc.name], a pleasure at any hour,”</i> the prefect says sheepishly. <i>“Would you... care to come to my room?”</i>");
		output("\n\nShe leads you past the guard, who winks at you knowingly, and to her room at the foot of the stairs. ");
		if(9999) output("Another friend");
		else output("Giala");
		output(" is inside as well, and looks up from a book.");
		output("\n\n<i>“Oh, I didn’t know you were expecting a guest. I’ll leave you two alone,”</i> the latter says, rising.");
	}
	//after any output, display Yarasta options below

}

//Back
//goes in last slot, obv

//Appearance
//tooltip: Review the prefect’s appearance{(1900-2159 and Giala unlocked), as well as her friend’s}.
public function yarastaAppearance():void
{
	clearOutput();
	showYarasta();
	output("Yarasta the thollum prefect stands at 5’8”</i>, slightly tall for her species. She’s thin for a myr, and looks as though she takes frequent exercise and not-so-frequent meals.");
	output("\n\nThe prefect keeps her brown hair pinned in a prim bun, and her two ant-like antennae stick up just in front of it. Her torso and arms are covered by a sky blue, long-sleeved, button-down blouse in an older Terran style, though the collar is decidedly myrrish with its gentle honey-ripple pattern. A medium-length sheer black skirt covers most of her thighs, but a slanted hemline previews just a bit of skin before her insectoid boot begins. The typical abdomen peeks out behind, freed from the skirt by a half-slit up the back.\n\nHer breasts are only large A-cups, though her hips and waist are almost as curvy as an average gold myr you’d see anywhere, minus the usual cushion.");
	//(pc has sexed)
	if(9999 == 9999) output(" Underneath her clothes, you know that her chitin ‘gloves’ extend all the way up over her shoulders and collarbone, joining around the neck in a mantlet pattern. Otherwise, she has comparatively little of the naturally-concealing armor present on her species - perhaps that’s why she chooses to dress up.");

	output("\n\nHer eyes are a rare gray morph of the usual myr compound eye. They peer through silver half-frame glasses which rest on the bridge of her nose with dignity. When asked, she’ll claim that her eyesight is no worse than any myr’s and that she only uses the glasses to watch her students from a greater distance. But the only way to test that assertion would be to steal the specs, and she never lets them out of her sight, so to speak.");

	//(only if 1900-2159 and Giala unlocked)
	if(hours >= 19 && hours < 22) output("\n\nHer friend Giala is also here, a shorter, <i>much</i> more filled-out sumin who regards you with dark-but-friendly eyes. Unlike Yarasta, she wears no clothes, and you can hardly fault her for showing off such perfect, honey-stuffed F-cups. Chitin girdles her waist and pelvis, nicely disguising any chub from all the food she eats to keep her nectar flowing; the black material even reaches partway up her ribcage on each side, pressing against her sideboobs and ensuring her cleavage is always turned to maximum.\n\nCarapace covers her arms from the elbows down but stops at her hands, in a fingerless glove style. Her legs are less armored, allowing her jiggly butt to, well, jiggle quite a lot - her plates do, however, come up to mid-thigh, completing the burlesque look. Of course, she has a big juicy abdomen and the obligate antennae sticking from her sandy blonde hair, which is pulled into a low, rakishly-slung ponytail and tied with a little long-stemmed mushroom.");
	//present Yarasta options

}

//Talk
//disabled at time 0700-1159 or 1300-1759
//tooltip: Chat up the myr prefect.
//tooltip disabled, classtime: Yarasta is teaching right now. You can audit the class until she’s done, or just come back later.
public function talkToYarasta():void
{
	clearOutput();
	showYarasta();
	//first time
	if(flags["YARASTA_TALKED"] == undefined)
	{
		//(bimbro)
		if(pc.isBimbo() || pc.isBro()) output("<i>“What’s up? It’s me from before,”</i> you call out.");
		else if(pc.isNice()) output("You greet her. <i>“I stopped by to talk some more. Hope it’s not a bother.”</i>");
		else output("<i>“I thought we’d to finish our talk,”</i> you announce.");

		//(if 2100-2159)
		if(hours == 21) 
		{
			output("\n\nThe skinny myr laughs. <i>“I feel like I’m a young girl again, sneaking " + pc.mf("a boy","a friend") + " into my room after curfew.”</i>");
			output("\n\nYou stop and consider that. ");
			if(pc.isBimbo()) output("<i>“You used to get people past all those guards? You’re, like, really smart.”</i>");
			else if(pc.isMischievous()) output("<i>“If you could get by so many police, why pick an honest job?”</i>");
			else output("<i>“Must have been hard, with all the guards.”</i>");

			output("\n\n<i>“Not at all,”</i> she says, slipping into teacher mode with a finger poised in the air. <i>“While it’s true that there are a number of Gildenmere police now stationed at the thollums, this is a new change stemming from recent upheavals - before the war and the arrival of visitors from other worlds, the prefects and sumins kept order among the students.”</i>");

			output("\n\n");
			if(pc.isBimbo() || pc.libido() >= 70)
			{
				output("<i>“And");
				if(pc.isBimbo()) output(", like, ");
				else output("... ");
				output("what did you <i>do</i> once you snuck your guest in?”</i> you ask, pruriently interested.");
			}
			output("<i>“Did you sneak in ‘guests’ a lot?”</i> you ask, laying emphasis on the ‘guests’.");

			if(pc.isNude()) output("\n\n<i>“Nothing I could say would surprise you, I’m sure,”</i> Yarasta says, looking pointedly at your nakedness.");
			else output("\n\n<i>“That’s personal,”</i> answers Yarasta, smiling so that you know she’s not offended.");
		}
		//(other times)
		else
		{
			output("\n\nThe myr prefect smiles. <i>“I do like an eager student"):
			if(pc.isBimbo() || pc.isBro() || pc.libido() >= 70) output("... even if [pc.hisHer] interest is only physical,”</i> she replies, beckoning your eyes away from her figure.");
			else output(",”</i> she replies.");
			if(pc.isBimbo() || pc.isBro()) output("\n\n<i>“So, huh. You must like your job?”</i>");
			else if(pc.isNice()) output("\n\n<i>“Do you get many?”</i>");
			else output("\n\n<i>“Do you get them often enough to have a preference?”</i>");
			output(" you ask, remembering some of the little hellraisers you saw on the tour.");
			output("\n\n<i>“Oh, yes.”</i> Yarasta says. She gestures you over. <i>“Did you want to talk about something in particular?”</i>");
			//goto talk options
		}
	}
	//repeat
	else output("The pretty prefect turns to face you with her body. <i>“Certainly. What do you want to talk about?”</i>");
	//goto talk options
	//9999
}


//The Thollum
//tooltip: Talk about the Thollum.
public function talkToYarastaAboutTheThollum():void
{
	clearOutput();
	showYarasta();
	if(flags["YARASTA_THOLLUM_TALKED"] == undefined)
	{
		if(pc.isBimbo() || pc.isBro())
		{
			if(pc.isBimbo()) output("\n\n<i>“I saw some stuff on the tour but, like, I still can’t get over how many kids you have. This school is totally crazy! How does it even work?”</i> you ask.");
			else output("\n\n<i>“I saw some stuff on the tour but, like, I still can’t get over how many kids you have. Would you tell me more about the school?”</i> you ask.");
			output("\n\n<i>“You know I didn’t birth them, of course?”</i> she replies. You nod vigorously, and she continues, <i>“The children are indeed tiring, but rewarding. Most of the girls are very polite and obedient, but there are always some that disrupt the classes or resist authority. Usually I can get them in line with the group, but sometimes I lose whole half-days because the focus is gone. And then there are some that can only think about sex, like you.”</i>");
			output("\n\nYour attention snaps back from her smooth thighs, jarred into the conversation. The prefect laughs merrily.");
		}
		else if(pc.isNice())
		{
			output("<i>“Tell me more about the thollum,”</i> you request. <i>“I haven’t seen child-rearing like it anywhere else.”</i>");
			output("\n\n<i>“Why, because of the numbers?”</i> she asks. <i>“Controlling peer pressure is essential with a group of that size, as is maintaining a dominant position. I’m sure you know of the phenomenon where people in large groups lose the ability to go against the group’s decisions? The children have to know that they are unquestionably accountable to the adults, and the adults that they must be absolutely authoritarian toward the children, or else a child can usurp the leadership and it becomes a madhouse. It can be stressful.”</i>");
			output("\n\n<i>“So you have to be on watch all the time?”</i>");
			output("\n\n<i>“And sometimes lock the doors,”</i> she affirms. <i>“I dread field trips and work study, because it’s easy for a few girls to decide they don’t want to pay attention and wander off to shoplift or go drone-hunting. And do you suppose that when underaged myrmedions are caught ripping off Silken Serenity or sneaking into The Honey Nozzle and returned to us by the police, they’re the only ones in trouble?”</i>");
		}
		else if(pc.isMischievous())
		{
			output("<i>“I’d like to hear your perspective on the thollum. For instance, what’s it like overseeing your own private army?”</i> you ask.");
			output("\n\n<i>“A constant pain,”</i> answers Yarasta, with a tinkly laugh. <i>“How hard it is to keep them marching in step! And of course, just as you get the most restive little girls to finally trust you as a capable adult, they become hormonal teenagers and start rebelling for entirely different reasons.”</i>");
			output("\n\n<i>“Even with no males?”</i>");
			output("\n\nShe ");
			if(pc.isCrotchExposed() && pc.hasCock()) output("glances at your [pc.cocks], then ");
			output("shakes her head. <i>“Challenging the lead female is one of those things that young women do instinctively when they’re trying to find their place - I’ve raised girls so aggressive that I suspected they were queens who got false negatives on the test. Sometimes I wonder if maybe a drone wouldn’t have an easier time keeping them obedient. But then, they’d never learn anything even if they watched him all day.”</i>");
		}
		else
		{
			output("<i>“Tell me about the thollum. How do you stand it?”</i> you ask.");
			output("\n\n<i>“Stand it? You mean, because of the children?”</i> replies Yarasta. <i>“Well, I’ll grant that no child is perfect, but on the whole, they’re quite polite and eager to learn. They rarely have a chance to become too distracted, since we keep them away from stores, outsiders, and especially drones.”</i>");
			output("\n\n<i>“Seeing no men is weird,”</i> you rejoin.");
			output("\n\n<i>“I suppose you’re accustomed to them. It’s widely regarded as a positive since our sex drives get quite high in adolescence. Although,”</i> she says, lost in academic mode, <i>“there was a breakaway school of education theory that proposed adding one drone to each class after puberty as an aide - thinking being, he could be brought in sparingly to derail arguments and used as incentive to lure the girls to perform better.”</i>");
		}
	}
	else
	{
		if(pc.isBimbo())
		{
			output("\n\n<i>“So, like, I know we talked about it before, but could you go over the thollum again?”</i> you ask, feeling like you’re back in school.");
			output("\n\n<i>“Certainly,”</i> Yarasta answers.");
		}
		else
		{
			output("<i>“Refresh me on the thollum,”</i> you say.");
			output("\n\n<i>“Very well,”</i> Yarasta replies.");
		}
	}
	output("\n\nYarasta pauses here to wipe her glasses on her blouse as she plots out the important points of the subject in her head. <i>“The basic principle is that we prefects are assigned a group of girls and escort said girls from shortly after birth to productive adulthood - hence the colored vests and skirts with the easily-seen emblems, each for a specific prefect’s class. By being with them the entire time, we can see deficiencies and talents as they take shape. With help from the sumins, we are able to guide the girls toward careers that make the best of their individual abilities and personalities and give extra attention to any critical skills they lack. Once the girls graduate, we take up a new class fresh out of the nursery and begin again.”</i>");
	output("\n\n");
	if(pc.isBimbo())
	{
		output("You digest the explanation as best you can until you encounter an idea that you can’t get down your craw. <i>“Uh, does that mean you have to know, like... everything?”</i>");
	}
	else
	{
		output("You digest the explanation, your next question forming. <i>“So you yourself have to master the entire curriculum from infancy to adulthood? ");
		if(!pc.isAss()) output("Sounds demanding.");
		else output("Sounds like an absolute bore.");
		output("”</i>");
	}
	output("\n\nShe puts her glasses back on and smiles. <i>“I suppose. The skills required of me certainly change every year. Explaining basic addition to a hundred little cherub faces is more likely to test my skills at analogy and creative writing than my memorization and mathematical mind - and sometimes it feels like what I need most when dealing with teenagers is a red myr with drooling problems.”</i>");
	output("\n\n");
	if(pc.isBimbo()) output("<i>“Do you ever get totally stressed out?”</i>");
	else if(pc.isBro()) output("<i>\"Stressful, I bet.\"</i>");
	else if(pc.isAss()) output("<i>“Do you contemplate suicide often?”</i>");
	else output("<i>“Does the workload get to you?”</i>");
	//(mean no bimbro)
	if(!pc.isBimbo() && !pc.isBro() && pc.isAss()) output("<i>“No!”</i> exclaims ");
	else output("<i>“No,”</i> says ");
	output("Yarasta. <i>“I handle the workload quite well... as well as any of us.”</i>");
	output("\n\nSounds like there’s more there than she’s volunteering. Will you pry?");
	//unlock and present ‘Her Schedule’, ‘No’
	processTime(17);
	flags["YARASTA_THOLLUM_TALKED"] = 1;
	clearMenu();
	addButton(0,"Her Schedule",);
	addButton(1,"No",abortYarastaPrying,undefined,"No","Abandon the current conversation.");
}

//No
//tooltip: Abandon the current conversation.
public function abortYarastaPrying():void
{
	clearOutput();
	showYarasta();
	output("<i>“Did you require anything else?”</i> Yarasta asks, demurely.");
	//to Yarasta menu buttons
	//9999
}

//Her Schedule
//unlocked after ‘The Thollum’
//tooltip: Talk about Yarasta’s daily regimen.
//tooltip disabled, locked: She’s only here to answer your professional inquiries - as far as she knows.
public function pryIntoYarastasSchedule():void
{
	clearOutput();
	showYarasta();
	if(flags["YARASTA_SCHEDULE_TALK"] == undefined)
	{
		if(pc.isBimbo()) 
		{
			output("<i>“Tell me s’more about you. Like, do you have a boyfriend? I mean, uh, a girlfriend?”</i> you ask");
			if(pc.hairLength >= 10) output(", tossing your hair");
			output(".");
			output("\n\n<i>“Neither,”</i> replies Yarasta. <i>“Not formally, anyway.”</i>");
			output("\n\n<i>“So, like, why not? You could go see him whenever you needed to take a break and feel good.”</i> You squeeze your [pc.breasts] between your arms and lean forward, just to make sure she knows that by ‘feel good’, you mean ‘get fucked’.");
		}
		//(first time bro)
		else if(pc.isBro())
		{
			output("You examine the lines of Yarasta’s arms and legs through her clothes. <i>“You look like you make time to hit the gym, at least. What’s your starting deadlift? ‘Bout eighty pounds?”</i>");
			output("\n\nShe looks lost. <i>“‘Dead lift’?”</i>");
			output("\n\n<i>“Yeah, you know. Deadlift. Or bench. You do work out?”</i>");
			output("\n\n<i>“Uh, no, I don’t think so,”</i> the prefect answers, unsure. <i>“Unless you count chasing and picking up children.”</i> She muses for a moment. <i>“I suppose some of them currently weigh around eighty Terran pounds.”</i>");
			output("\n\nYou nod. <i>“Right on.”</i>");
		}
		else if(pc.isNice()) output("<i>“I’m interested in you. What do you do with your time?”</i> you ask, honestly.");
		else output("<i>“So do you ever have any fun?”</i> you tease.");
	}
	else if(pc.isBimbo() || pc.isBro()) output("<i>“Uh... when did you say your breaks were?”</i> you ask.");
	else output("<i>“Tell me about your typical day again,”</i> you request.");

	output("\n\nYarasta smiles - not a prim, instructor’s smile this time, but the happy grin of a girl who’s flattered someone’s taking an interest. <i>“I don’t have much free time,”</i> says the myr, smoothing her silken blouse over her petite breasts. <i>“Ten hours a day are spent with the girls, divided into two five-hour sessions. Three hours are allotted for three meals, breakfast, lunch, and dinner, though I usually grab them to go so I can work. Curfew is at 21:00, and I need to be in my room to catch any girls that try to sneak by. We’re supposed to use from curfew until we sleep for recreation and socializing, but if I can’t get the next day’s lesson ready in the two hours between evening meal and then, or if I had to issue paperwork, I have to take the materials back to my room and keep working.”</i>");
	//(bimbro)
	if(pc.isBimbo()) output("\n\nIt takes you a while to visualize the clock. Yarasta decides to guess your response from your face and continue without you.");
	//(nice)
	else if(pc.isNice()) output("\n\n<i>“Does that happen often?”</i>");
	//(misch)
	else if(pc.isMischievous()) output("\n\n<i>“No fun allowed. Got it.”</i>");
	//(mean)
	else output("\n\n<i>“Holy shit, lady.”</i>");

	output("\n\n<i>“Indeed. I’ve spend most of my recent nights looking at workbooks. Truthfully, there’s too much to do now. The classes are too large and there aren’t enough prefects... the best outcomes result from no more than one hundred fifty girls per class. Studies have been done. But the expedited breeding and the arrival of the refugees mean forcing more in, which hurts us and hurts the children. Though, with the war, there aren’t a lot of best outcomes left for us. Speaking of schedules....”</i> She glances at a timepiece. <i>“I’d love to hit the city and relax, but I have to take opportunities for fun as they come to me. Unfortunately, as much as I’m enjoying indulging your interest, I should probably wrap up. I’d be glad to speak again");
	if(pc.isAss() && !pc.isBimbo()) output(", if you can watch your language");
	output(".”</i>");

	output("\n\nClearly she has no time to chase romance. Just as clearly, she likes your company. You wonder if you might qualify as an ‘opportunity’ - do you try flirting with her?");
	//unlocks ‘Sex’; offer choices ‘Flirt’, ‘No’
	//’Flirt’ should use same tooltips and output as ‘Sex’
	processTime(19);
	flags["YARASTA_SCHEDULE_TALK"] = 1;
	clearMenu();
	addButton(0,"Flirt",);
	addButton(1,"No",);
}

//Current Events
//unlocked after 1 sex
//forks to different topics after intro
//tooltip: Ask her opinions on current events like the war and the U.G.C. landing. Warning: this will cause her to talk. A lot.
//tooltip disabled, locked: You definitely don’t know her well enough to discuss politics. Quickest way to lose a friend, and all that.
public function currentEventsYarastaTalk():void
{
	clearOutput();
	showYarasta();
	if(pc.isBimbo())
	{
		output("<i>“So, like... uh... what do you think about stuff?”</i> you open, gesturing grandly with your hands to indicate ‘everything’.");
		output("\n\n<i>“To what are you referring?”</i> asks Yarasta. <i>“The war? The alien contact? The possibility of thermonuclear annihilation?”</i>");
		output("\n\n<i>“Yeah!”</i> you agree.");
		output("\n\nYarasta sighs and rubs her forehead.");
	}
	else if(pc.isBro())
	{
		output("<i>“So, like, hit me up with some knowledge,”</i> you open.");
		output("\n\n<i>“About?”</i> Yarasta challenges.");
		output("\n\n<i>“I dunno. Pretty crazy times, though, right? What, uh, what do you think?”</i>");
		output("\n\nShe laughs mirthfully with a ladylike hand over her mouth at your attempt to seem cosmopolitan.");
	}
	else if(pc.isNice())
	{
		output("<i>“I’m curious what you think of the recent developments around here.”</i>");
		output("\n\nYarasta’s glasses flash as she pushes them up, transforming her into her inner academic.");
	}
	else
	{
		output("<i>“Surely an armchair diplomat like you has some insights on recent developments,”</i> you goad, hoping for an interesting discussion.");
		output("\n\nYarasta turns toward you and folds her legs. <i>“As a matter of fact...”</i> }");
	}
	//UGC branch - pick branch randomly or sequentially
	if(flags["YARASTA_EVENTS_TALK"] == undefined)
	{
		flags["YARASTA_EVENTS_TALK"] = 1;
		output("\n\nYou shift to sit comfortably for the anticipated lecture.");
		output("\n\n<i>“I’ve been thinking a lot about the U.G.C. and their technology. Myrellion may not be the straight-forward assimilation into the galactic economy that everyone seems to assume.”</i> The pretty myr tucks her left two arms under the others and taps her fine cheekbones - a strange sight, since her two right index fingers tap in alternating rhythm. <i>“Of course, it would be nice if it were absorbed into the U.G.C. without incident and everyone could benefit according to their station. But consider some of the medical breakthroughs you take for granted. For example...”</i>");
		output("\n\nYou nod politely when she looks at you, and she continues, holding her hands palm-up to suggest an offering of knowledge. <i>“... we see already that Queen Irellia’s desire for more power has prompted a risky, untested gene manipulation that allows her to breed and lay simultaneously, an advantage which surely must have the other queens thinking. What if other such procedures are adapted? For instance, suppose next is introduced a treatment to turn any myrmedion into a functional hermaphrodite");
		if(pc.isHerm()) output(" like yourself");
		output("? If we look past the cosmetic and recreational value of such a change, we see immediately that it offers the Scarlet Federation an enormous breeding advantage, as nearly half of their females are fertile by recent scholarly estimates. Within two decades of such an advance, they could outnumber us by a factor of five!”</i>");
		output("\n\nShe answers your ");
		if(!pc.isAss()) output("surprised");
		else output("bemused");
		output(" expression with a knowing glance. <i>“Conversely, suppose that the next advancement is a treatment that bestows fertility upon the infertile. This would help the Scarlet Federation, yes, but it would help the Republic even more.”</i> Yarasta clutches with her hands, as if grappling with metaphorical weights. <i>“Normal citizens like you, sorry, not you, but me, would be able to become queens with an outlay of capital, capable of producing hundreds or thousands of children yearly. In effect, the only remaining barriers to political power under the current system would be the treatment fee and the costs of excavating a territory, allowing any private citizen rich enough to sue the Republic’s ruling council for admission. The political climate would change, of necessity. I think a Terran word suits that scenario of citizen rule best: ‘democracy’.”</i>");

		if(pc.IQ() >= 75) 
		{
			if(pc.isBimbo()) output("\n\n<i>“Um, more like plutocracy? Duh,”</i> ");
			else output("<i>“Plutocracy,”</i> ");
			output("you amend.");
		}
		else output("\n\n<i>“Uh-huh,”</i> you say, keeping the pace going.");

		if(pc.IQ() >= 75) output("\n\nYarasta nods eagerly. ");
		else output("\n\n");
		output("<i>“So, as we can see, either or both advancements could lead to a major imbalance of power among the myr,”</i> she concludes, proud of her little presentation.");

		output("\n\n<i>“But");
		if(pc.isBimbo()) output(", like,");
		output(" what about the cease-fire?”</i> you point out");
		if(!pc.isNice()) output(", mostly to play devil’s advocate");
		output(".");

		output("\n\nYarasta smiles a grim smile. <i>“I thought you might mention that. The cease-fire, even should it hold, is only binding while U.G.C. assets are here to enforce it and the powers are in balance. As soon as the economic situation on Myrellion stabilizes and the U.G.C.’s attention turns to the next discovered planet, there’s little to stop the first power to develop a major advantage from quietly ignoring the agreement and permanently removing the other, as long as the flow of goods and information isn’t interrupted.”</i>");
		if(pc.isBimbo()) output("\n\n<i>“That’s sooo depressing!”</i> you exclaim, pursing your lip in a pout.");
		else if(pc.isBro()) output("\n\n<i>“That’s so harsh,”</i> you reply.");
		else if(pc.isNice()) output("\n\n<i>“You paint a bleak picture,”</i> you grumble.");
		else output("\n\n<i>“Sounds delightful,”</i> you say sarcastically.");

		output("\n\nThe prefect snaps out of her lecturer’s trance and sheepishly folds her hands behind her head. <i>“Well, it might not happen like that. I could just be imagining outcomes that match my mood as of late,”</i> she considers.");
	}
	//war branch
	else
	{
		flags["YARASTA_EVENTS_TALK"] = undefined;
		output("\n\nCued by her somewhat nervous demeanor, you lean in close.");
		output("\n\n<i>“I’ve been grappling with some concerns over the outcome of the war,”</i> she admits. <i>“Particularly the refugees.”</i>");
		output("\n\nYou vamp. <i>“Yeah?”</i>");
		output("\n\n<i>“Well, let me start by saying I strongly believe that we have a duty to help our sisters in their time of need,”</i> she says diplomatically. <i>“But in truth, the Kressian refugees and rescues have presented a problem that the Gilden Republic was not prepared to handle. Take the young girls, for example. Their birth queens in Kressia are lost, but the adopting queens can’t agree on jurisdiction. All the Gildenmere queens would like to foster the refugees since it would provide an instant boost to their numbers - yet until an agreement is reached, the girls aren’t actually protected under the auspices of </i>any<i> queen. Some citizens are hesitant to provide services, even essential services, to them, not knowing whom to bill. Fees that are charged to them don’t get paid, and collect interest... if they reach adulthood without being claimed by a queen’s family, they become personally liable for the debts that accrued while they were minors. Thankfully, the queens have at least agreed to add the girls to the collectively-funded thollums until the issue can be settled, instead of leaving them in limbo.”</i>");
		if(pc.isBimbo() || pc.isBro()) output("\n\n<i>“Um... w?");
		else output("\n\n<i>“W");
		output("hy not just split them up?”</i>");

		output("\n\nYarasta nods eagerly, glad to know you’re following. <i>“Yes, that’s the thinking. But the queens are hung up on the method of division. Some want the girls to be split evenly among the council, giving lesser queens a relative advantage. Others, particularly the most powerful, argue that each queen should take on refugees in proportion to her current holdings. This would maintain the current balance. The votes are, as yet, even.”</i>");
		output("\n\nShe pursues a different tangent. <i>“Trouble follows the adults, too. Because many of them arrived in Gildenmere partially or completely addicted to red myr venom, Kressian refugees are considered at high risk of becoming venom junkies, distributing venom, being sold in myrmedion trafficking, and associating with a degenerate underground pro-Federation movement that operates in these gray and black markets and has lately claimed responsibility for several terrorist attacks. This has caused a public backlash against them that affects even legal immigrants who have been in good standing for decades.”</i>");
		output("\n\nYarasta stops talking, studying you as she decides whether to delve further into the subject. After a moment, she resumes. <i>“Many refugees from Kressia’s now-closed thollums applied to join the staff here when they first arrived. To a myr, they were refused on the grounds of supposed pragamtism. The queens and the thollum administration both consider the risk of addicts and Federation apologists infiltrating the thollum staff to be too great. I can understand their argument. But with the many, many refugee children and the additional breeding, the number of girls in the thollums is now past what the prefects can handle - I can attest to that being the case here, too. Without accepting accredited teachers from Kressia, the only choices are to increase the class sizes or relax hiring standards, either of which will hurt the Republic far more in the long run than pro-red sentiment.”</i>");
		output("\n\nColor rises in her face as she concludes. <i>“It’s already happening, in fact! There are so many girls that we don’t have enough sumins to feed them all, so the teenagers with high honey production are being pulled from classes to spend half-days in the milking room. In effect, they’re trading a current problem for a future one, because these girls are missing the most crucial part of their educations - you can’t go anywhere professionally without good scores in your adult assessments! We can’t keep them here as sumins after graduation unless they score highly, so pulling them all but guarantees that they’re relegated to permanent careers in private sector food service.”</i>");
		output("\n\n<i>“That");
		if(pc.isBimbo()) output("‘s like, soo");
		else output("sounds");
		output(" frustrating,”</i> you rejoin.");
		output("\n\nThe myr calms down and remembers where she is. <i>“Yes, sorry. It is, but that’s no cause to raise my voice.”</i>");
	}
	//’Next’
	processTime(17);
	clearMenu();
	addButton(0,"Next",currentEventsTalkOutro);
}

public function currentEventsTalkOutro():void
{
	clearOutput();
	showYarasta();
	output("<i>“Did you want something else?”</i>");
	//main Yarasta menu
	//9999
}

//Her Friend/Giala
//req time 1900-2159
//unlocked after 1 sex
//displays as ’Her Friend’ until chosen once, then ‘Giala’ thereafter
//tooltip: Get {her friend/Giala} involved in a three-way conversation before she can slip away again. Could lead to the loss of the ‘conversation’ part.
//tooltip disabled, locked and wrong time: Even if her friend were here, she’d just clear out to give you a chance to be alone with Yarasta and get intimate.
//tooltip disabled, locked: Her friend is already edging out the door to let you be alone and intimate with Yarasta. What a good wingman!
//tooltip disabled, wrong time: Giala’s not present. Talking to her would look pretty crazy.

public function yarastasFriendGiala():void
{
	clearOutput();
	showYarasta();
	//first time
	if(flags["MET_GIALA"] == undefined)
	{
		if(pc.isBimbo()) output("<i>“Hey, you can, like, stay. I mean, if you want?”</i> you tell her friend. <i>“And, um, talk with us.”</i>");
		else if(pc.isBro()) output("<i>“Hey, it’s cool if you stay,”</i> you tell her friend. <i>“I mean, you seem cool and stuff.”</i>");
		else if(pc.isNice()) output("<i>“Stay, won’t you?”</i> you ask the curvy woman. <i>“It’d be nice to meet Yarasta’s friend.”</i>");
		else if(pc.isMischievous()) output("<i>“You move fast for a big girl,”</i> you say suddenly, surprising her friend mid-stride. <i>“Why not stay and chat? You scared of aliens?”</i>");
		else output("You step in front of the door abruptly and accost her fleeing friend. <i>“Why don’t you have a seat? Just have a seat right over there.”</i>");

		output("\n\nBoth she and Yarasta look at you curiously, then each other. The unknown woman sits back down demurely.");
		output("\n\n<i>“So, ");
		if(pc.isBimbo()) output("like, ");
		output("you two </i>are<i> friends, right?”</i> you inquire.");

		output("\n\nShe laughs. <i>“Yes, for quite some time now.”</i> The woman holds out a hand in a Terran gesture of greeting, performed slightly wrongly. <i>“I’m Giala Marsail.”</i>");

		output("\n\nYou take the hand as you look her over. She’s shorter than Yarasta, but far more voluptuous. Dark eyes peer from under sandy blonde hair that’s pulled back past her antennae in a low ponytail and slung forward. A little long-stemmed mushroom is the hair-tie, cutely arranged with the cap visible. She’s nude, and displaying such perfectly-formed F-cups that you suppose covering herself has never been a priority. Under her breasts is a girdle of chitin, enforcing an hourglass waist, but the jiggle of her booty is unrestrained and gives her a very fetching seat. Her cleavage is notable, especially as her girdle climbs halfway up her sides to highlight her best features. The shoulders and collar are bare, almost the opposite of Yarasta’s, but carapace covers her forearm from the elbow down and ends at her hands.");
		output("\n\n<i>“[pc.name],”</i> you say. <i>“");
		if(pc.isBimbo()) output("Um, w");
		else output("W");
		output("hat do you do here?”</i>");

		output("\n\n<i>“I’m a sumin,”</i> she says. <i>“I help with watching the children during their leisure times, or grade papers, or tutor, or tidy up. Wherever I’m needed, so long as it doesn’t burn too many calories.”</i> She elaborates further, sparing you the need to ask, and cradles her gorgeous, golden breasts in her four hands. <i>“My main job is to make nutritious honey for the girls so they grow up healthy, but all I need to do for that is snack.”</i>");
		output("\n\n<i>“She’s basically my slave,”</i> says Yarasta. Giala laughs, giving you your first hint that they’re close enough to tease one another without fear.");
		output("\n\n<i>“Right,”</i> the shorter woman says. <i>“I do all the work and she takes the credit.”</i>");
		output("\n\n<i>“Is that so?”</i> you ask idly.");
		output("\n\n<i>“No, of course not,”</i> answers Yarasta, flicking a wrist to dismiss the notion. <i>“She helps me out often, but the lesson plans and examinations are by regulation always drawn up by the prefects. The sumins usually, not always, test lower in assessments. But they’re in the top percentile for honey production. Our positions could easily have been reversed.”</i>");
		output("\n\nGiala simplifies. <i>“The short of it is that I was assigned to the sumins instead of the prefects because my breasts fill up much faster than hers, which go about as quickly as a red’s since she’s always forgetting to eat.”</i>");
		output("\n\n<i>“Yes, well, it’s the burden of being an intellectual elite,”</i> Yarasta huffs. <i>“I’m smarter and therefore most suited to care for the girls, and they require constant attention.”</i>");

output("\n\n<i>“That’s not what your last test score said,”</i> retorts the sumin, playfully. <i>“As I recall, I got two more points than you.”</i>");

output("\n\n<i>“Oh, fuck off!”</i> cries the skinny myr, in a rare mortal moment. <i>“I didn’t have time to study with writing the make-up midterms for the new arrivals!”</i>");

output("\n\n<i>“Sorry, we always argue like this,”</i> Giala apologizes to you. <i>“She has a filthy mouth, but please don’t pay her any mind.”</i>");

output("\n\n{(nice/mean)If you weren’t {as polite/bored and eager to move on}, you’d note that they fight almost like a married couple.");

output("\n\n<i>“</i>You<i> definitely don’t mind my filthy mouth,”</i> mutters Yarasta. The curvy sumin blushes./(misch)<i>“You two fight like a married couple,”</i> you note. Both of the women blush. }");

output("\n\nThe prefect realizes what’s just been said, tries to cover up the elephant in the room, and fails miserably. <i>“Ah, that’s... I mean-”</i>");

output("\n\n{(bimbro)<i>“Are you two, like, lesbians? You lick pussy or whatever?”</i> /(else)Are you two together?”</i> }you interrupt.");

output("\n\n<i>“Nothing like that,”</i> Yarasta says hurriedly. <i>“We just help one another release some tension when necessary.”</i>");

output("\n\nGiala pipes up. <i>“An arrangement that, if I understand correctly, we’re all three keeping now.”</i> The prefect glares at her, and she shrugs.");

output("\n\n<i>“Er,”</i> you amend, <i>“not in{, like,} </i>every<i> respect.”</i> The sumin looks at you uncomprehendingly for a few seconds, and then her eyes widen. Yarasta catches on a moment later.");

output("\n\n<i>“Well,”</i> Giala says, {(nudecock)staring down at your [pc.cocks], }”</i>I’m willing to discuss that further.”</i>");

output("\n\nThere it is. Yarasta doesn’t contradict her - in fact, she swallows hard like she’s thinking about it too. If you gave the word, you could make a new ‘friend’ today.");
output("\n\n//mark Giala as unlocked, give choices ‘Cock ‘Em’, ‘Lesbo 3-Way’, ‘Nah’");

output("\n\n//repeat");
output("\n\n{(bimbro)<i>“Giala,”</i> you say warmly. <i>“You should totally hang out!”</i>/(else)<i>“Stay{, please},”</i> you say to Giala. }");

output("\n\nThe sumin smiles salaciously. <i>“Did you want to continue our ‘discussion’ from last time?”</i> Yarasta quietly closes the door, and you can barely hear her breaths getting heavier.");
output("\n\n//choices ‘Cock ‘Em’, ‘Lesbo 3-Way’, ‘Nah’");


output("\n\nNah");
output("\n\n//last slot obv");
output("\n\n//tooltip: Turn down a three-way with a horny teacher and her equally-horny naked friend. That’s what this button does.");

output("\n\n{(bimbro)<i>“I love to fuck, but, like, um... I can’t right now. Can we still fuck later?”</i> you ask./(else)Maybe later,”</i> you grin. }");

output("\n\nYarasta seems to calm down and master herself. <i>“Then, did you want anything else?”</i>");
output("\n\n//goto main Yarasta choices");


output("\n\nCock ‘Em");
output("\n\n//for PC with myr-sized cocks, tailcocks, nipplecocks (but no dildo-pants, sorry)");
output("\n\n//multiple size-appropriate cocks can be used so be prepared to track more than one; multiple branch also accepts mix and match (one crotch and one tail, etc.)");
output("\n\n//horse-agnostic");
output("\n\n//tooltip: {(single cock/tail/nip)Let the girls fight over your {[pc.cockNounComplex]/[pc.tailCock]/[pc.nippleCock]}. /(multiple fit cocks)Stick a cock in each hole the girls offer. }");
output("\n\n//tooltip disabled, all cocks too large: You’d never fit inside the poor girls!");
output("\n\n//tooltip disabled, no cock: You’re completely lacking in the appropriate equipment.");

output("\n\n{(bimbro)<i>“No, let’s fuck instead,”</i> you answer cheerfully. The sumin laughs, while Yarasta only rolls her eyes. /(nice)<i>“Actions speak louder than words,”</i> you retort, causing both women to smile. /(misch)<i>“I don’t know how far we’ll get in our discussion - I usually get physical when I get agitated,”</i> you grin. /(mean)<i>“Oh, yes. That’s what I want; more talking,”</i> you say sarcastically. }");

output("\n\nYarasta has already finished removing her clothes and is cozying up to you{(clothed and not using tailcock), four hands quietly probing for the fasteners to your own}. She grabs your {[pc.cocks]/[pc.tails]/[pc.breasts]} with movements made clumsy by her huge arousal{ and your {[pc.tailCocks]/[pc.nippleCocks]} slide free, drooling in anticipation}. The prefect pushes you onto a cushion and takes {[pc.oneCock]/[pc.oneTailCock]/[pc.oneNippleCock] into her hands, stroking it with one while smearing lubrication from her own honey-dripping cunt along her other palms. <i>“[pc.name]’s a... remarkable debater. You should be careful.”</i>");

output("\n\nIt’s the sumin’s turn to get close next. While you finish removing your [pc.gear], she stands up and walks over to you. But instead of taking a seat like Yarasta, she leans over. Her heavy, golden tits dangle from her chest as she daintily reaches down and {(only one fit cock)caresses the cock-crown between her fingers sensually. / wraps her fingers around {your other cock/another cock/your writhing, possessed tail-cock/your [pc.milkNoun]-secreting, phallic nipple}. }It’s beyond your power to stop yourself from likewise extending an arm and cupping a honey-packed jug, which seems to please Giala. She blushes and lets out a heavy breath, then says, <i>“Yes, I can see that [pc.heShe] goes right for my weak points.”</i>");

output("\n\n//myr-sized multicocks/tails/nipples outcome - does not rejoin other");
output("\n\nYou continue to thumb Giala’s nipple as your two phalluses swell with blood, not minding in the least the way she dribbles warm honey into your hand. Yarasta jealously turns around, raising her abdomen high enough that you can see its glistening opening, trying to draw your attention. It bobs once, twice, slurping at the tip of your painfully-erect shaft with sweet-scented myr lubrication, and then Yarasta, unable to wait any longer, lowers herself onto it. Your {[pc.cockNounSimple]/first parasitic tail-cock/first alien nipple-cock} is engulfed in heat and softly abraded by her clasping, wet folds as she shudders her way down its length to the base.");

output("\n\nGiala watches with prurient interest as your {[pc.cockNounSimple]/tail-prick/perverted nipple} sinks into the svelte woman’s cunt, horny enough that her strokes become automatic while she blushes and chews on her bottom lip. As Yarasta sighs and shifts to find the best angle, the sumin releases her grip on you and pulls away from your hand, leaving a healthy puddle of honey in your palm. She about-faces and raises her own abdomen, and anticipation boils your blood as you see her wet pussy begin to descend.");

output("\n\nHer insides are even wetter than Yarasta’s; either she hydrates more often, or she has the same backed-up sexual energy running unchecked through her as the prefect did the first time you fucked. The sound of her vagina devouring your cock with a smutty slurp is nothing next to the unholy sensation of hot, cushiony flesh. Even Yarasta, occupied with grinding your first shaft, sighs sharply when the new challenger causes <i>all</i> of your {(using only nips)nipple-cocks/(else)cocks} to twitch and swell even fatter with blood.");

output("\n\n<i>“That feels amazing,”</i> they both say, neither one enough in her right mind to notice the other. The two myr both begin to pump their hips, shifting up and down your shafts so hard that their wet holes slap against {(mix-n-match cocks)your [pc.skinFurScales], splattering honey-lube everywhere. /(using nipples)your [pc.breasts], splattering them with myrrish honey-lube. /(using tails)your thighs, taking your tail-cocks so deeply that up to half of the limb makes it inside. /(crotch and 4+ cocks)your other cocks, smearing them with slippery warmth. /(else)your crotch, dripping so much frothy honey that you could frost cakes with their bug-butts. }");

output("\n\nYou have no chance against the onslaught of myr pussy; you can only lie back and take it as the two tight, wet cunts pound you flat with pleasure. Yarasta’s is the tighter of the two; her slender abdomen clamps down on your tool with a virginal grip, squeezing and caressing every side and brushing aside like a velvet curtain parting around your crown on every thrust. Giala, by comparison, is warmer and wetter. Her soft, slippery cunt takes you in easily, welcomingly, like a lubricated cock-sleeve, and bathes you in the heat of her cushiony flesh. You’re so floored by the two women fucking you relentlessly into the ground that even though you want to reach up and grab a handful of Giala’s breasts or Yarasta’s ass, you can’t even find the energy to move.");

output("\n\nYarasta is the first to stop humping, as well; with a shake and a gasp, she sinks down onto your {[pc.cockNounComplex]/[pc.tailCock]/[pc.nippleCock]}, trembling with an orgasm that soaks you in honey-cum. The squeezing, rippling movement of her cunt pushes you closer to your own climax, but not quite there.");

output("\n\n<i>“You’re such a lightweight,”</i> scolds Giala, still riding your cock so hard that she has to speak carefully or bite her tongue. Wracked with orgasm, Yarasta can only hold up a finger in what you assume is a myr’s rude gesture. The voluptuous sumin, pleased to tease, continues to bounce in such wet, jiggly arches that your {[pc.cockNounComplex]/[pc.tailCock]/[pc.nippleCock]} threatens to blow; not to be outdone, Yarasta shakily begins to pump at your other tool again, lamely at first but with recovering passion as her climax returns control of her muscles. She looks over her shoulder at you, mouth too aroused and exhausted to close but grey eyes shining with competitive spirit. Your ejaculation builds as you stare into her insatiable gaze, and you know you don’t have any time left.");

output("\n\nYou reach out with your mind, trying to will the women to hold still so you can shoot your load deeply inside of them. {(PC has psionic tease equipped)They seem to get the message; both cunts spasm and sink down as the myr are wracked by sudden orgasm that takes them by surprise. Spurts of {[pc.cum]/[pc.milk]} flood the insectile vaginas, which shake and vibrate around you. /(no psi)Your message doesn’t reach; the two are still humping vigorously as your first strokes of {[pc.cum]/[pc.milk]} exit your slits, causing the {[pc.cumVisc]/[pc.milkVisc]} mess to splat and squirt from their holes on each plunge. }{(li’l cum/milk)It’s over shortly with how little you actually produce divided between two women; only a meek squirt in each and you’re done. /(med cum/milk)The myr lean back, fingering and frigging their sloppy cunts as your jizz spills inside them. /(big cum)So much cum lurches from you that the myr abdomens can’t contain it; first Yarasta’s and then Giala’s overflows, gushing with cum that escapes the seal around your cock until you finally abate. }Collectively spent, all three of you fall over onto the floor cushions.");

output("\n\n<i>“I wish Yarasta met friends like you every week,”</i> says Giala at last. <i>“I do so love expanding my circle.”</i> You stare at her, wondering if that last bit translated properly, and she winks.");
output("\n\n//end, time, lust, increment sexed counter");

output("\n\n//single fit cock/tail/nipple outcome");
output("\n\nYarasta jerks your tool back from the sumin, resuming her slick handjob. Giala hums, still sweating from your breast massage, but eventually speaks up. <i>“Now, now; aren’t you always telling the girls to share?”</i> she rebukes, playing with the male lube on her fingers.");

output("\n\n<i>“I don’t remember any such lectures,”</i> answers Yarasta obstinately. She wraps another slick hand around and begins to pump the shaft with it as well, and the strength of the myr almost moves your pelvis with each stroke, even as wet as you are.");

output("\n\n<i>“Shall we let [pc.name] decide, then?”</i> Giala rejoins. She curls her abdomen through her knees and reaches down to it, spreading the lips of her strange, gold-dripping vagina with her pre-covered fingers. {Your {prick/tail-cock/} hardens even more from the vulgar display. }");

output("\n\n{(bimbro)<i>“That’s not fair,”</i> you whine. <i>“I can’t think right now.”</i> /(nice)<i>“I couldn’t possibly,”</i> you protest. /(else)<i>“Nah, that’s fine. Go ahead and fight over me,”</i> you snort. }");

output("\n\n<i>“I had a feeling,”</i> says the curvy sumin, straddling you. <i>“Well then, me first.”</i> She sinks down suddenly, taking you with such abruptness that both you and Yarasta gasp. The prefect pulls her hands away, soaked with Giala’s pussy-juice, and grabs the shorter woman’s breasts from behind.");

output("\n\n<i>“Why, you brazen hussy!”</i> she scolds, manhandling the fat, golden orbs. Giala’s head rolls back, flinging her ponytail wildly, and her vagina squeezes down on you. It’s clear from the clenching, convulsing flesh around your cock that the skinny prefect knows just where to touch her friend for the best result. The sumin’s pussy feels like a soup of silk as she begins to hump you, with honey-slick folds just slightly caressing your tip before the plunge forces them apart. You get into the action, thrusting your hips up to meet Giala’s quivering ass with as much force as you can muster from the floor.");

output("\n\nGiala leans forward, escaping the prefect’s slick grip and pressing her wet, hot breast-flesh into your {(horse and not using nips)chest. /(else)face, a valley of glistening gold that fills your vision. }Unbeknownst to her but known to you, a grasping hand wraps around your {[pc.sheath]/[pc.tail]/nipple’s base} - the next time the sumin rises up for a particularly deep stroke, a flick of the wrist jerks you out of alignment and causes her pussy to splat uselessly on your {[pc.stomach]/[pc.breast]}.");

output("\n\n<i>“Hey!”</i> she protests. You might protest too, but for that your tool is already sinking into a different hot, velvety myr cunt. Yarasta, straddling her friend and pressing her downward so that her tits smush against you, grins and bites her lip as she takes your cock as far up her pussy as the curvy myr between you leaves room for. {(using tail or flexi-cock)You flex your ass muscles to give your shaft the extra few inches needed to bury it right up to her cervix, and she gasps appreciatively. }");

output("\n\n<i>“Write it in your diary,”</i> cracks the skinny prefect, pumping her tight pussy. Her ass jiggles behind her as her bug-butt slaps at you{r balls}, and so does the sumin’s, trapped between you and the voracious woman. Giala sighs resignedly and begins to frig her cunt with her fingers, splattering honey-cum. Even with her affectation of disappointment, you can see in her blushing, smiling face that she’s having a very good time as the filling to your sex sandwich. As are you, it must be said; your orgasm threatens to spill from you with each slurp of Yarasta’s pussy.");

output("\n\n<i>“Coming,”</i> you announce, unable and unwilling to hold it back. Yarasta sinks down one last time, giving you a hole to spill your seed in, while Giala looks a bit disappointed that her own cunt will remain empty. Your ejaculation spurts {[pc.cum]/[pc.milk]} from your slit to soak the prefect’s insides. {(li’l cum)She quickly dismounts when she feels the first stroke, trying to share the hot load, but embarrassingly you’re already spent. /(med cum)She dismounts when she feels the first hot loads hit her insides, pulling your still twitching cock out and aiming it for Giala’s hole. You try to hold in the last half of orgasm until you’re inside, and then let go, painting your second cunt of the half-hour with seed. /(big cum)Your load is so massive that Yarasta is almost pushed from your cock after a few strokes; she dismounts messily, {[pc.cumNoun]/[pc.milkNoun]} gushing from her stretched cunt, and tries to push your prick into Giala. The spasming shaft seems to have a mind of its own, spilling {[pc.cumNoun]/[pc.milkNoun]} all over the poor woman’s back and abdomen before Yarasta can get it inside to dump the last of its hot jizz in the second cunt. }");

output("\n\nGiala pushes off of your chest with an affectionate sigh, rolling over onto the next cushion. <i>“Yarasta never lets me play with her things the way I want,”</i> she teases. <i>“Perhaps another time.”</i>");

output("\n\nYou think that would be quite agreeable as you lie there, watching her breasts heave. After a rest, you collect your things and bid the ladies goodbye.");
output("\n\n//end, lust, time, increment sexed counter");


output("\n\nLesbo 3-Way");
output("\n\n//for PCs with vag (primary) or tailvag (if no vag) or asshole (if no vag or tail)");
output("\n\n//horses ok");
output("\n\n//tooltip: Partake in some gold myr-style relaxation - the kind with {cunnil/anal}ingus.");
output("\n\n//tooltip disabled, no vag: You don’t have a vagina!");

output("\n\n{(bimbro)<i>“I don’t wanna talk,”</i> you answer. <i>“Let’s touch our {pussies/holes}.”</i> /(nice)<i>“Can I parlay the parley into a pair lay?”</i> you retort. /(misch)<i>“Sure, talk as much as you want. After you put your mouth on my {pussy/asshole],”</i> you laugh. /(mean)<i>“Yes, my favorite thing to do with naked women is talk. Number one answer,”</i> you grunt sarcastically. }{(using tailgina)[pc.OneTail] lashes and writhes as the parasitic cunt inside responds and blooms, somewhat unwillingly, to your mental urging. }");

output("\n\nYarasta starts to pull her blouse free of her skirt, exposing her saffron skin; Giala, already nude, decides to {(clothed)help you with your own [pc.gear]{(pants and not using tail) - mostly focused on stripping your [pc.lowerGarments] to expose your [pc.ass]}. /(PC nude)get a jump start on your stimulation. }She slides her hand {into your lap to finger [pc.oneVagina]. /along your tail and up to the tip to trace the labia of your insatiable, alien cunt. /along your ass until she finds your [pc.asshole]. }");

output("\n\n<i>“Hey, don’t start without me,”</i> cries Yarasta, flinging her blue blouse aside haphazardly and shimmying out of her skirt. Giala winks at you, and grins as she works {your [pc.clit] from its hood. /her fingers into your smutty anal ring. }");

output("\n\n<i>“She does hate to be excluded,”</i> the sumin laughs, as Yarasta practically crashes onto a cushion next to you. The skinny myr spreads her legs and her abdomen bobs up between them, cunt slightly wet and beckoning to be touched. She slides her fingers into it, and you watch it bloom with arousal.");

output("\n\n<i>“Give me your hand,”</i> Yarasta demands, grabbing at your arm until you acquiesce. She raises your fingers to her lips and waits for you to look up, then slides them into her mouth, working her tongue between your digits and coating them with her hot saliva. You relax as her tongue tickles your fingerpads, lulled into passivity by the efforts of the two horny myr. Without complaint, you allow Yarasta to lower your hand to her vagina; you can literally feel the heat coming from it on your palm moments before she slides your fingers into the drooling, slick hole. Giala is also watching, and relinquishes her grip on your own {[pc.vagOrAss]/[pc.tailVagina]} as the prefect’s fingers, slimy with her sweet-smelling lube, glide over {(horse or unsex)your rump/your lap} and finger-walk to your entrance.");

output("\n\nYou grunt with satisfaction as the hot, slippery chitin digits invade your body, teasing and stroking with the skill you might have expected from a primarily-female race. Giala, oddly non-participatory, seems as entranced by your open mouth as any of the schlicking going on. She caresses her breasts gingerly with her hands for a moment and then appears to decide, rising to her knees {(no horse)and straddling your [pc.stomach] }to bring her gorgeous, dribbling rack up to eye-level.");

output("\n\n<i>“Do you think you could suck these?”</i> she asks, uncharacteristically shyly. Without hesitation, you dive forward and grab a nipple with your mouth, tweaking and rolling it between lip-padded teeth and causing the surprised myr’s back to arch in delight. Yarasta’s face is a little envious as she watches you make love to Giala’s breast, and her three free hands all wrap around your arm, making sure you stay equally focused on teasing her pussy. The sumin, equally greedy, grabs the other arm and presses your hand to her second breast, rolling the palm against her sticky, honey-dribbling nipple.");

output("\n\nThe experience of being buffeted by titties while warm, wet fingers slide into and out of you is incredibly arousing. More, the lewd clenching and sucking of Yarasta’s pussy and spasming of Giala’s back suggest that the two aliens are enjoying your visit just as much. Your mouth and both your hands overflow with fluid; one hand from the prefect’s gushing pussy and the other two from Giala’s breasts, which are leaking honey like a beehive with screen doors.");

output("\n\nA question briefly flits through your mind: whether Giala sought her job as a sumin because she heard her titties would be stimulated so much or she has such sensitive, ready titties because of long hours spent being milked in the sumins’ room. Whatever the answer, and it’s probably a mixture of both, the stacked myr is creaming your mouth and hand with such wanton passion that you worry a few girls will come up short at lunch tomorrow.");

output("\n\nYour blood races as Yarasta’s fingers dive deeper. Her eyes are unfocused with arousal from your own pussy-strokes, and her mind-numbing pleasure manifests as indelicacy; she’s literally hand-fucking your {cunt/anus} with utter disregard, letting muscle memory of many nights spent masturbating guide her as she abandons her wits. The skinny woman’s vagina sucks greedily at your fingers, so wet that it’s difficult to pull your hand up from the suction. Your own hole is beginning to feel the same way as hers must, and Giala’s head rocks wildly as she shoves her chest into your face and hand.");

output("\n\nFirst Giala, then Yarasta, then you, climaxes. The sumin’s breasts squirt so vigorously that the honey hits the back of your throat, and her untouched cunt dribbles and drools on the cushion below as her abdomen twitches and shakes. She slumps into you, bearing you backwards as her torso spasms, mashing tit into your mouth.");

output("\n\nYarasta’s cunt seizes your hand on a particularly deep stroke, and you can’t recover it. The folds and ripples of her interior caress and ring around your wrist, working downward to the fingertips, a perfect semen-milking system operating on a semen-less intruder, refusing to let go until her orgasm is exhausted. Your own {vagina/tail-cunt/asshole} does its best impression of her, squeezing and shaking you with climax, though Yarasta has little trouble continuing to frig you with her crazy myr strength. She strokes to escalate your orgasm right to the border between pleasure and pain. Without crossing it, your mind begins to zonk out from the overwhelming orgy’s stimulation.");

output("\n\nIt’s a full two minutes of three bodies quivering and breathing hard before you’re relaxed enough to pull your hands and mouths from each other’s sensitive parts. Giala wraps her arms around your neck and speaks first: <i>“I do love getting the personal touch on a milking, once in a while.”</i>");

output("\n\n<i>“Don’t spoil yourself, or you won’t be able to come from the machines,”</i> Yarasta taunts. The sumin looks embarrassed at being reminded of her indecent sluttiness, and releases you. You wait a few minutes more for the smiles and giggles to fade, then collect your things and say goodbye.");
output("\n\n//end, lust, time, increment sexed counter");


output("\n\nHer Secrets");
output("\n\n//unlocked after 3 sex");
output("\n\n//tooltip: You’ve noticed that Yarasta doesn’t talk about her own past much....");
output("\n\n//tooltip disabled, locked: Yarasta always heads off conversations before they get to her past. You could ask directly, but you’d need to be quite intimate with her.");

output("\n\n{(first time bimbro)<i>“So, um, how come you never talk about yourself?”</i> you ask.");

output("\n\n<i>“I talk about myself all the time,”</i> replies the prefect. <i>“I was talking about myself thirty seconds after we met.”</i>");

output("\n\n<i>“No, I mean, like... your childhood and stuff,”</i> you persist.");
output("\n\n/");
output("\n\n(first time misch)<i>“So, do you think we’re close enough that you can tell me your real name, yet?”</i> you tease.");
output("\n\n/");
output("\n\n(first time other)<i>“”</i>I notice you don’t talk about your own time in the thollum much. That’s a bit odd,”</i> you say, somewhat tactlessly.");
output("\n\n/");
output("\n\n(else)<i>“What was your big secret again?”</i> you ask. }");

output("\n\nYarasta fidgets uncomfortably. <i>“It’s not a secret or anything... I just don’t like talking about it.”</i> She looks away for a long time, as if deciding whether to answer you.");

output("\n\n{(nice)<i>“You can trust me,”</i> you assure. /”</i>Tell me,”</i> you cajole. }”</i>We’re close.”</i>");

output("\n\n<i>“Alright,”</i> she says. The myr scoots closer to you - nice on its own, but you suspect she just wants to keep anyone from overhearing. <i>“My full name’s Yarasta Johnce. I don’t use it because it’s Kressian, and there’s a lot of anger against Kressians right now. I grew up and started work at my mother’s thollum, but moved here before the war.”</i>");

output("\n\n<i>“So, {like, }when you say it’s ‘not a secret’, you mean....”</i>");

output("\n\n<i>“It’s not a secret!”</i> she insists. <i>“My transfer records are available for anyone who requests them. I just don’t see any reason to encourage people to do so.”</i> She gets a bit prickly; a bit defensive. <i>“I do my job well and I’m loyal to Queen Irellia - should I be harassed because a few idiots hear a Kressian name and immediately assume it must belong to an addict and a traitor?”</i>");

output("\n\n<i>“What’s your mom like?”</i> you ask, changing tack.");

output("\n\n<i>“I don’t know anymore,”</i> she says, pulling her knees to her chest. <i>“I haven’t heard news of her or my sisters since Kressia fell to the Federation. If I had to guess, I’d say: stoned out of her mind on venom.”</i>");

output("\n\n<i>“{(mean)Hah! }That’s pretty depressing.”</i>");
output("\n\n//’Next’");

output("\n\nThe prefect lets go of her knees and nods. <i>“Yeah. Can we talk about something else?”</i>");
output("\n\n//go to main Yarasta choices");


output("\n\nAudit Class");
output("\n\n//if NPC is in class, pass time until the next break");
output("\n\n//boost int if it’s below 15? boost IQ if below 20?(adjust higher/add slow grow if you want an int trainer)");
output("\n\n//tooltip: Sit in on Yarasta’s class until her next free period comes up. You might even learn something.");
output("\n\n//tooltip disabled, no class: Yarasta’s class is in recess right now. It’d be creepy if you just sat in the back alone and stared.");

output("\n\n{(nude/underwear only and crotch cock)<i>“Hey-”</i>");

output("\n\nYou don’t even finish opening the door before Yarasta’s head snaps toward you and your {barely concealed/free-flying} [pc.cocksLight]. <i>“</i>No.<i> Sit in the hallway.”</i>");
output("\n\n/");
output("\n\n(bro)Every head in the room swivels toward your frame as you pass through the doorway. <i>“Yo!”</i> you offer. <i>“You care if I wait?”</i>");

output("\n\nHundreds of pubescent myr gazes devour you like oatmeal cookies. While you wait for permission to stay, you flex a bit, having some harmless fun with the girls. Several partway-developed early bloomers look like they’re about to bite their vests apart with their teeth.");

output("\n\n<i>“In the hall,”</i> Yarasta says, condescendingly. A low groan rolls through the crowd of girls as you sheepishly step back and out of their sight.");
output("\n\n/");
output("\n\n(bim)<i>“Hi!”</i> you greet her energetically. <i>“Is it okay if I, like, wait?”</i>");

output("\n\n<i>“Yes, that’s fine,”</i> says Yarasta, exasperated. <i>“Have a seat in the back.”</i>");
output("\n\n/");
output("\n\n(nice)<i>“I’m going to wait,”</i> you mouth silently. The prefect notices and nods almost imperceptibly, and you slip in to take a seat in the back, behind the hundreds of curious myr girls.");
output("\n\n/");
output("\n\n(misch)You don’t even offer a greeting as you hustle into the room. <i>“Sorry I’m tardy for class,”</i> you apologize, sitting down. Yarasta only half-smiles and goes right on teaching as the girls nearest you giggle.");

output("\n\n<i>“Shh,”</i> you shush them. <i>“I’m trying to learn.”</i> This only makes them giggle louder, of course.");
output("\n\n/");
output("\n\n(mean)<i>“I’m going to sit in on the class,”</i> you declare.");

output("\n\n<i>“Fine. But no talking,”</i> Yarasta answers. }");

output("\n\n{(int >= 15)The concepts she’s covering are really the most basic stuff. Well, it’s not surprising, given the early adolescents in her current class. /(int < 15)The concepts she’s covering seem pretty advanced for such young girls. You try to follow along as best you can, even taking some notes with your codex’s memo function. }As the class nears its end, she gestures for you to leave quickly before the girls can mob around, then joins you.");

output("\n\n<i>“Come, let’s go to the garden,”</i> she says, and leads you by the hand to the small mushroom patch.");
output("\n\n//put a ‘Next’ here, boost int if dumb");

output("\n\n<i>“So, what did you want to see me about?”</i> Yarasta asks, seating herself among the shroomy stalks.");
output("\n\n//return to Yarasta main menu");


output("\n\nSex");
output("\n\n//also ‘Flirt’");
output("\n\n//unlocked by ‘Her Schedule’");
output("\n\n//tooltip: Ask Yarasta if she’d like to have some adult fun.");
output("\n\n//tooltip disabled, not unlocked: You barely know the prefect. While it’s possible she’s a ho beneath that prim exterior, you’re far more likely to catch some hands for asking.");
output("\n\n//tooltip disabled, 700-1159 or 1300-1759: Yarasta is with her class right now - while the children would definitely learn something, you’re not the appointed sex ed teacher.");

output("\n\n//first time");
output("\n\n<i>“Wait,”</i> you cut in.");

output("\n\nThe myr woman stops what she’s doing and looks at you patiently. <i>“Yes?”</i>");

output("\n\n{(bim)<i>“Like, I don’t think you’re as relaxed as you say. You could totally be relaxed-er. You should really blow off some steam,”</i> you argue, earnestly.");

output("\n\n<i>“Well, I don’t disagree,”</i> Yarasta says. <i>“But that only begs the question: how?”</i>");

output("\n\nYou tap your [pc.lip]. <i>“Um, no, what I mean is... do you wanna fuck?”</i>");
output("\n\n/");
output("\n\n(bro)<i>“I could help you get in a workout, if you know what I mean,”</i> you say, flexing surreptitiously. <i>“On my dick.”</i>");
output("\n\n/");
output("\n\n(nice)<i>“Any chance that I could be one of those ‘opportunities’ for fun you mentioned?”</i> you ask.");
output("\n\n/");
output("\n\n(misch)<i>“I should ask, do you think you’d be ready if one of those ‘opportunities’ for fun came knocking? Say, now?”</i> you ask, playfully.");
output("\n\n/");
output("\n\n(mean)<i>“I’ll fuck you,”</i> you say, dropping the words into the room like a primed grenade. }");

output("\n\nYarasta looks at you for less than a second and then her hands move to her waist. <i>“{(clothed)Take off your {clothes/underpants},/(nude)Help me with this,”</i> she orders, beginning to unfasten her skirt and untuck her blouse.");

output("\n\n<i>“What, just like that?”</i> you ask, mildly surprised at how fast she jumped on the idea.");

output("\n\nShe stops unbuttoning and looks at you with distaste. <i>“Was your offer not genuine? I don’t have time to pussyfoot around, and I don’t appreciate being teased. If you’re playing, please do it somewhere else.”</i>");
output("\n\n//present ‘Continue’, ‘Nevermind’ (output is below)");
output("\n\n//’Continue’ loads a sex scene according to NPC preference:");
output("\n\n//if PC has tailcock or cocks that fit: 75% chance ‘Do Her Doggy-style’ and 25% ‘Get a Blowie’");
output("\n\n//if PC has no cock but dildo panties: 50% chance ‘Do Her Doggy-style’ and 50% ‘Female 69’");
output("\n\n//if PC has too-big cock and no puss or dildo: 100% ‘Get a Blowie’");
output("\n\n//if PC has too-big cock and yes puss: 50% ‘Get a Blowie’ and 50% ‘Female 69’");
output("\n\n//if PC has no cock, dildo, or tailcock: 100% ‘Female 69’");
output("\n\n//’Continue’ tooltip: Follow through and fuck the myr woman. She looks like she’s going to want to take charge, though.");

output("\n\n//repeat");
output("\n\n{(bimbro)<i>“Let’s fuck!”</i> you exclaim.");

output("\n\n<i>“Love your directness,”</i> replies Yarasta. She checks to make sure no kids are near, and then starts to undress.");

output("\n\n<i>“So, like... can I pick how we do it this time?”</i> you ask, watching her pulled-up blouse expose creamy skin as she untucks it.");

output("\n\nShe looks up. <i>“I don’t know - </i>can<i> you?”</i>");
output("\n\n/");
output("\n\n(nice)<i>“If you have time, I’d like to have sex,”</i> you say politely.");

output("\n\nYarasta looks at her timepiece. <i>“I think I do, actually.”</i>");

output("\n\n<i>“Do you mind if I pick how, this time?”</i>");

output("\n\n<i>“Just don’t get artsy,”</i> she says, starting to unbutton.");
output("\n\n/");
output("\n\n(misch)<i>“I’d be up for some sex before your girls return - or after, for that matter,”</i> you say with a grin.");

output("\n\n<i>“I don’t believe that curriculum would be approved by the administrator,”</i> Yarasta teases back.");

output("\n\n<i>“Well, why don’t I show you what I have planned, and you can suggest any changes as they come to you?”</i>");

output("\n\nThe prefect unbuttons her top button with the flick of a finger, eyes smoldery. <i>“That’s fair,”</i> she says.");
output("\n\n/");
output("\n\n(mean)<i>“I think I’d rather fuck the shit out of you than talk,”</i> you say domineeringly.");

output("\n\nYarasta looks over her glasses at you. <i>“As long as your {penis/vagina/butthole} isn’t as dirty as your mouth.”</i>");

output("\n\n<i>“Just leave it all to me. I’ll tell you if you need to clean it.”</i> }");
output("\n\n//present sex menu options below");


output("\n\nNevermind");
output("\n\n//button goes in last slot");
output("\n\n//tooltip: Totally flake out and leave Yarasta hanging.");

output("\n\n<i>“Nevermind,”</i> you say.");

output("\n\nYarasta looks highly annoyed, but recovers. <i>“Whatever. Did you need something else?”</i>");
output("\n\n//present main Yarasta menu buttons");


output("\n\nYarasta Picks");
output("\n\n//let NPC pick as she did the first time; preferences ordered the same");
output("\n\n//tooltip: Let Yarasta pick the kind of sex she’d like to have. A {gentleman/lady} always asks.");

output("\n\n{(bimbro)<i>“Uh... actually, why don’t you pick?”</i> /(nice)<i>“Actually, nevermind. You pick.”</i> /(else)<i>“I changed my mind. You do all the work.”</i> }");

output("\n\nThe prefect looks absolutely ravenous. <i>“Don’t mind if I do...”</i>");
output("\n\n//same NPC scene selection as first sex’s ‘Continue’ button");
output("\n\n//reference:");
output("\n\n//if PC has tailcock or cocks that fit: 75% chance ‘Do Her Doggy-style’ and 25% ‘Get a Blowie’");
output("\n\n//if PC has no cock but dildo panties: 50% chance ‘Do Her Doggy-style’ and 50% ‘Female 69’");
output("\n\n//if PC has too-big cock and no puss or dildo: 100% ‘Get a Blowie’");
output("\n\n//if PC has too-big cock and yes puss: 50% ‘Get a Blowie’ and 50% ‘Female 69’");
output("\n\n//if PC has no cock, dildo, or tailcock: 100% ‘Female 69’");


output("\n\nDo Her Doggy-style");
output("\n\n//selectable by PCs with appropriate-sized cock, tailcock, or panty-dildo");
output("\n\n//normal gold myr vag. capacity");
output("\n\n//horses ok, obv");
output("\n\n//tooltip: Fuck her doggy-style with your {cock/tail-cock/strap-on} like she likes. Or buggy-style. Whatever.");
output("\n\n//tooltip disabled, cocks too big & no tailcock/strap: Your monster [pc.cocksLight] will never fit!");
output("\n\n//tooltip disabled, no suitable parts: You don’t have anything to fuck with!");

output("\n\nYou eagerly {strip down and }{stroke your [pc.cocksLight] to erectness. /secrete your parasitic tail-cock, erect and ready to impregnate. /fiddle with the gizmo between your legs - the one that produces your panties’ hidden sex toy. }Yarasta watches your {pseudo-}male organ{s} fill, transfixed and fumbling the fasteners on her clothes.");

output("\n\n<i>“I’m definitely getting a piece of that,”</i> says the myr confidently. She finishes with the last button and throws open her blouse, revealing cute, small breasts that are just barely darker than her skin. Oddly, she has very little chitin - though her jointed ‘gloves’ do go all the way up to cover her shoulders and collarbone, connecting in a shape like a mantlet. Yarasta follows your eyes and closes her shirt playfully. <i>“Don’t stare; it’s rude,”</i> she admonishes with a smile, then finishes undressing, dropping her blouse and sliding the skirt over her head.");

output("\n\n<i>“So{, like,} how do you want it?”</i> you ask.");

output("\n\nThe myr reaches out a hand to touch the tip of your {dick/toy}, then quickly draws back with a shiver. She turns around and kneels down, then moves onto all fours. <i>“Like this,”</i> she says, two lower hands reaching back to spread her vagina and voice dripping with lust.");

output("\n\nYou slide your {technological }tool into the perverted, honey-coated hole, imploringly held open by Yarasta’s fingers. The myr shivers and rolls her eyes as you enter, and her hands fall away, planting on the floor beside the other two to stabilize the giddy girl. Her slippery, deep abdomen beckons you further and further in until at last you have no more prick to give. <i>“That’s good,”</i> she buzzes.");

output("\n\nWith gusto, you start to drive into the bookish myr, who shifts and wiggles right back to ensure that {your sensitive cock-flesh/the dildo} is always wrapped deep in her folds. <i>“More,”</i> she mumbles, then louder: <i>“More!”</i>");

output("\n\nYou stick it to her, rocking her with the momentum of your plunges. Yarasta grunts and sweats like an animal as the pace picks up, occasionally looking back over her shoulder with a mixture of worry and adoration. Her vagina drools sticky honey-like lube on your {shaft, down to the [pc.knot]. /alien cock, down to the sensitive slit that conceals it. /false phallus, soaking your panties{ and mingling with your own [pc.girlCumNoun]}. }The myr’s arms become increasingly wobbly as your pounding gets to her, lowering her posture until she looks more like a beast in heat than an educated woman.");

output("\n\nThe alien organ in her abdomen ripples and convulses around {your [pc.cockNounComplex]/your [pc.tailCock]/the toy, sending haptic feedback right to your [pc.vagOrAss]}. Yarasta’s head bows between her shoulders and her arms lock - she’s having an orgasm. You stop ramming the ant-girl to enjoy the peristaltic motion of her cum-hungry cunt. {The perception of her pussy trying to drag your cock into its depths is illegally good. /The way her wet pussy pulls at your toy, it causes your honey-{(vag, no honeycum)and-[pc.girlCumNoun]-}slicked panties to suck and smack lightly at your [pc.vagOrAss] with a ticklish wave that makes you so fucking horny. }The myr says nothing while her orgasm masters her, but as the shakes wind down, she looks back at you peevishly.");

output("\n\n<i>“Don’t stop!”</i> Yarasta barks. She raises her ass and lowers it again, slamming her big bug booty onto your {shaft/dildo} with enough force that it recoils. Her gray eyes widen, giving her a slightly insane appearance, and she starts to grind against you again. You resume your own thrusts, and the wanton bitch sighs with happiness when she feels you move inside her again.");

output("\n\n<i>“Harder!”</i> she demands again, pushing against the ground, trying to stay upright as you jackhammer her. {(nice or horse)Obediently, you draw further back and slam in harder, fucking with ever more force, pounding Yarasta with such violence that her lean frame shudders and her neat hair bun goes lopsided. The fierce blows get the better of her and her arms buckle, leaving her planted on the floor with her quivering ass in the air. /(else)A sadistic twinkle enters your [pc.eye], unbeknownst to the prefect. Reaching down, you sweep her four arms from under her, sending her into a faceplant. Far from being upset, she simply turns her face to the side and continues gasping air, stirring stray hairs while you pound her slutty hole. }");

output("\n\nThe skinny myr grunts as your thrusts batter her into the {(hour 1200 or 1800)mushroom-fringed dirt path/(else)dirty paving-stone floor}, stuck on autopilot by lust. Drool spills from her half-closed mouth, dislodged by your frenzied {[pc.cockNounSimple]-/[pc.tailCockLight]-/pelvic }strokes, and her vagina convulses with a second orgasm. Her stress and responsibilities have been completely obliterated in her mind, leaving nothing but sex, sex, sex. Your own brain is so red-hued and feral with the act that you almost don’t hear her over your approaching climax.");

output("\n\n<i>“Come for me,”</i> Yarasta grunts, still commanding as ever but without an ounce of tact. <i>“{Squirt your alien sperm in my pussy... I want it!/(strap)I want to feel your hips shake against my cunt!}”</i> Not that you needed any such invitation. {(cock/tail)With an urgency born of biological need, your [pc.cum] spills from your {[pc.cockNounSimple]/parasitic shaft} and into the myr woman’s strange, insectoid abdomen. It twitches and curls with a jerk as the hot, [pc.cumVisc] fluid touches her insides, and Yarasta produces a low humming groan, like ‘hnnnnnn’ slurred into the dirt. {(li’l cum)With your sad {(balls)sack/production}, your ejaculation is over almost before it begins. /(med)Her alien anatomy swallows stroke after stroke of semen without a hint of a qualm. /(big)Even with her womb unobstructed by vital organs, the ridiculous amount of semen you produce fills her absolutely, causing flesh to bulge between the chitin plates. A ‘splat’, and then another, sounds as cum plops from her packed hole. }/(strapon)With delight, you abandon yourself to the orgasm that has been lapping at the edges of your {pussy/ass}. Your body curls and shakes as your muscles escape conscious control{, and your [pc.girlCum] {drools/squirts} from your [pc.vaginas], staining your [pc.lowerUndergarment]{(much girlcum) and dribbling onto the ground}}. }All the while, Yarasta is grinning and humming with open mouth.");

output("\n\nSmiling stupidly with post-coital fuzz, you pull free of the myr. She teeters and tips over onto her side, abdominal opening glistening with sexual fluid and still grasping. {(bim)<i>“That was fun!”</i> you cheer. <i>“Do you feel better now?”</i> /(bro)<i>“Any time you want to ride the stallion, babe, let me know,”</i> you say smugly. /(nice)<i>“Feeling relaxed now?”</i> you inquire. /(else)<i>“That should have resolved some tension...”</i> you jeer, <i>“judging by the way you just flopped over like a puppet.”</i> }");

output("\n\n<i>“Would that I were so lucky,”</i> Yarasta muses{ sarcastically, dragging her fingers through the puddle of {[pc.cum]/[pc.girlCum]} on the floor that now demands cleanup}. Still lying on her side, she beckons you down with a gesture of her hand, and kisses you on the lips. <i>“Hope you visit again soon...”</i>");
output("\n\n//if hour 1200 or 1800, add 25% of pre-reduction cum (not girlCum) volume to Mushroom Tracker if less than 4000mL, or 75% if more than 4000mL");
output("\n\n//lust, time, increment Yarasta sex counter");


output("\n\nGet a Blowie");
output("\n\n//for any size cock, tailcock, or dicknipple if selected by PC; cock/tail only if NPC chooses");
output("\n\n//a horse is fine, too");
output("\n\n//tooltip: Give the myr educator your own oral exam with your {dick/parasitic tail/slippery dicknipple}.");
output("\n\n//tooltip disabled, no cocks at all: You don’t have a cock!");

output("\n\nYou strip off your [pc.gear], waggling your crotch alluringly. Your [pc.cocks] {is/are} understandably the focus of the myr’s attention, given the few males allowed to enter the thollum. She unbuttons her blouse absently, paying so little attention that she checks buttons two or three times, all the while watching your crotch intensely. The prefect feeds [pc.eachCock] the promise of sexual attention it needs to grow erect and thereby ensures that it will draw her attention even harder... involuntarily, she licks her lips before speaking.");

output("\n\n{<i>“I do love your gorgeous... perfect... cock. But, I don’t think I’ll let you put it inside today,”</i> she says, slipping the last button free. /(too big)”</i>That’s a gorgeous penis, fit to service a queen,”</i> she says, unfastening her last button. <i>“Unfortunately, I’m not a queen. It won’t fit to service me.”</i> }Her blouse falls open to expose her small breasts, perky and faintly darker than her skin. The chitin on her arms goes all the way over her shoulders and collarbone like a mantlet, giving her a half-cloaked air even when exposed. However, she has hardly any elsewhere except for her calves and abdomen, displaying an unadorned, naked female form. Her mostly-nudity is lost on you, though, because you’re still annoyed that you won’t be fucking her. What she says next quickly addresses that.");

output("\n\n<i>“I think I’ll use my mouth,”</i> Yarasta announces, brightening your mood. <i>“Would you like that?”</i> You and your {[pc.cockNounComplex]/[pc.tailCock]/[pc.nippleCock]} give the same answer, rising proudly to put yourself at eye level. The myr woman scoots forward on her knees, looking hungrily at your blood-engorged organ.");

output("\n\nShe purses her lips just long enough for you to see them glisten with the same light as her eyes and then begins to dot your penis with kisses, affectionately. Yarasta raises a hand to elevate the shaft and the kisses move along the side, {over your medial ring and }toward the crown. A drop of pre that escapes your slit doesn’t escape her finger, which rubs it right back in, tickling the nerves packed into the very end of your cock.");

output("\n\nYou feel a pleasing, warm touch as the myr woman’s hand next comes to rest on your {[pc.balls]/[pc.vaginaLight]/[pc.sheath]/[pc.breast]}. She squeezes, massaging the sensitive {organs/flesh} with steady fingers that make your neck muscles weak. You arousal spikes again as she stops kissing your cock, parts her lips, and passes your crown through them. Your eyes even close in bliss as your cockhead throbs with the attention, and when you reopen them, her visible lip has colored with the blood that rushed to her face. You feel your pelvic muscles twitch and a new drop of precum slides out of your slit; she quickly finds it with the tip of her tongue and spreads it around your {[pc.cockHead]/[pc.tailCockHead]/[pc.nippleCockHead]}, then moves it down to heat and torment your frenulum.");

output("\n\nYour {[pc.cockNounSimple]/[pc.tailCockSimple]/[pc.nippleCockSimple]} slides past her wisdom teeth, smearing {[pc.cumFlavor]/[pc.milkFlavor]} slime on the back of her tongue that makes her {(edible cum/milk)hum with happiness/(inedible)shudder with disgust}. {(no horse)She raises her eyebrows and looks over her glasses at you, and though it’s probably unintentional, the perspective makes her look condescending enough that you begin to fuck her mouth, instinctively trying to punish her{ just a bit} for her bitch face. /(horse)Frustrated at being without even a hit of what comes next, your hips automatically begin to thrust lightly, fucking the myr’s mouth. }");

output("\n\nYarasta seems to like this; her hand slides up to grasp your shaft and give you more wet flesh to thrust through. Two of the others pull at the chitin on her abdomen, spreading herself wide so the last can dance in and out of her vagina. She jills herself vigorously as your {[pc.cockHead]/[pc.tailCockHead]/[pc.nippleCockHead]} drags over her tongue, probing deeper into her throat with each pump. Her tongue works as fast as her fingers, curling over and highlighting every ridge of your crown with a wet, hot mark.");

output("\n\nYou can hear her hum as her masturbation begins to physically arouse her as well, The vibration on the end your cock is incredibly pleasant, and the soft ‘schlick’ of her pussy being touched is a perfect soundtrack to the picture of the wanton woman {(horse)in your head/below you}. Labia fully bloomed and penetrated by busy fingers, she brings two more hands up to you, {(multi or nipcock)wrapping them around {your/a} second dick and beginning to masturbate it, smearing the built-up precum from its tip into her pussy with slutty abandon. /(else balls)cupping {(uniball or one ball)your tight little sack in her /a testicle in each }pussy-lubed hand and caressing heat into your nuts to promote a healthy load in her throat. /(else vag)spreading and fingering [pc.oneVagina], mixing her own female lubrication with yours. /(else)wetting them in pre and saliva and wrapping them around your cock until it feels like you’re fucking an onahole with a tongue at the end. }Your climax draws closer, and eager to achieve it, you thrust so far in that {(cock > 5in)you can see her adam’s apple bulge just before }she convulses around you.");

output("\n\n//dog knot and cock short enough (16-18in cock length max) to knot outcome");
output("\n\nThe myr tries to pull away after a moment of discomfort, but your knot has already swollen wider than she can open her jaw, oblivious to the fact that it’s nowhere near a pussy. {(mean)It would be a mistake to suggest you feel bad about being stuck in her hot, spasming throat. }Yarasta’s eyes widen in panic as her early attempts to pull it free fail, and she stops jilling herself to try and extricate you with all hands. Your knotty cock refuses to give way, even with four myr-strength hands pushing your crotch away - the action only makes it feel as though she were jerking off your knot, while her throat continues to swell and close around your [pc.cockHead], trying to get it down her neck like stuck food. {(mean)The sight of the poor girl gagging on your cock helplessly stirs a dark part of you, and you feel a bigger-than-usual ejaculation welling up to meet the fear in her eyes. }");

output("\n\n{(li’l/med cum)Your orgasm is quick and violent under the circumstances; [pc.cum] {dribbles/bursts} from you, practically helped along by the squeezing waves of her throat muscles. You can and do imagine your [pc.cumVisc] jizz squirting straight into her throat, leaving her no chance to spit it out, inspiring you to new heights of ejaculation. {(li’l)Unfortunately, your body doesn’t quite rise to the challenge, mustering only a few sad squirts. }Once you’ve spent your load in her belly, your knot finally deflates enough to pop free. /(big cum)Your orgasm is drawn-out and quite ferocious; [pc.cum] floods from your hyper-productive [pc.balls] up your shaft, widening the knot and her jaw at the same time, racing through you to fly from your cum-slit in stroke after stroke. After ten squirts, Yarasta begins to look worried, and after twenty, she begins to understand how fucked she truly is. [pc.Cum] spurts and spurts from your snug fit with nowhere to go but down; the myr’s stomach bulges and swells with liquid, prisoner to your lusts, and her eyes water and bulge. Only when you’ve dumped so much that she looks like a {slightly/hugely} pregnant Terran woman does your knot deflate enough for you to pop free. }");

output("\n\n{(li’l med)Yarasta looks slightly disgruntled. <i>“Well... imagine that,”</i> she remarks, staring at your dwindling, spit-and-[pc.cumNoun]-covered knot. You consider {sarcastically }asking if she needs help, but she waves you off before you can. <i>“Go away and give me a chance to rub my jaw. I have to talk for a living.”</i> /(big cum)She sucks in one huge breath of long-awaited air before doubling over and retching, spewing a flood of your semen from her mouth. Twice more she heaves, bringing up pools of [pc.cumVisc] [pc.cumColor] until her mouth and nose are both dripping with bubbly, frothy [pc.cumNoun], and then she slumps over. You {(mean)bemusedly }ask her if she needs help, but Yarasta only glares at you. <i>“Just go!”</i> barks the ruined myr. }");

output("\n\nIt’s pretty obvious that she’s not going to want a post-coital chat, so you collect your stuff and leave.");
output("\n\n//if hour 1200 or 1800 and pre-scene cum volume >= 2000mL, add 75% of cum volume to Mushroom Tracker, else add zero");
output("\n\n//end, lust, time, increment sexed counter");

output("\n\n//no dog knot or cock too long to knot outcome");
output("\n\nThe myr pulls away, gagging. <i>“My goodness,”</i> she says, with tears in her eyes. Her fourth hand moves to the tip of your shaft, working the crown while she herself moves to {your [pc.scrotum]/your [pc.sheath]/your [pc.breast]} to recover, kissing and gently sucking. Yarasta moves from there to your shaft, nibbling at the underside with her lips and looking up at you, cock covering one-half of her face like perverted bangs. Soon she’s once again just below the summit, and so are you.");

output("\n\n{(li’l or med cum/milk)As she nips playfully at your cock, the pleasure passes your ability to restrain it, and {a stroke/several strokes} of {[pc.cum]/[pc.milk]} lance{s} from your {[pc.cockHead]/[pc.tailCockHead]/[pc.nippleCockHead]} onto Yarasta’s face. Though she closes her eyes, the {[pc.cumVisc]/[pc.milkVisc]} liquid draws lines onto her glasses down to her lips, vandalizing her tidy frontage with hasty scribbles of {[pc.cumGem]/[pc.milkGem]} that drip and dangle from her chin, {[pc.cumColor]/[pc.milkColor]} against the black background of her chitin mantlet. }{(big cum/milk)Her nibbles drive you beyond your ability to stall orgasm, and midway through a kiss her eyes widen as the first huge glob of {[pc.cum]/[pc.milk]} swells up your urethra, stretching her mouth. Without any other choice, she gives herself to the hot, {[pc.cumVisc]/[pc.milkVisc]} liquid about to shower her. First her face and soon every part of her is painted with a thick layer of {[pc.cumColor]/[pc.milkColor]} that runs down her skin in clumps. }");

output("\n\nYarasta waits for you to finish, still touching herself. When your {[pc.cock]/[pc.tailCock]/[pc.nippleCock]} finally stops ejaculating, she releases it. Carefully, she removes her jizz-covered glasses and opens her eyes. {(li’l/med cum/milk)The broken lines on her face and chest make you smile, and she too smiles in return when she sees yours. <i>“That was fun,”</i> Yarasta says, sweetly. <i>“But I don’t care for a [pc.boyGirl] who gets my glasses dirty.”</i> /(big cum/milk, gray color)You can barely tell with her gray eyes, until she blinks at you. /(big cum/milk no gray)The sight of two little gray ovals peeking out from the {[pc.cumColor]/[pc.milkColor] mess makes you smile - you think she smiles back, too. }”</i>What a mess,”</i> Yarasta spits, flapping her arms uselessly. <i>“I’m not sure I should see you again if there’s this much cleanup.”</i> }");

output("\n\nYou pretend to be contrite, and she laughs. <i>“Just kidding,”</i> she says, puckering her {[pc.cumNoun]/[pc.milkNoun]}-coated lips at you for a kiss which you {politely }decline.");
output("\n\n//if hour 1200 or 1800 and pre-release cum volume >= 1000mL, add 75% of volume to Mushroom Tracker, else add zero");
output("\n\n//end, time, lust, increment sexed counter");


output("\n\nFemale 69");
output("\n\n//re-titled ‘Anal 69’ if no vag present (unsexed pity option)");
output("\n\n//don’t think about feces");
output("\n\n//miraculously works with f’ing horses");
output("\n\n//i hate girl-girl");
output("\n\n//tooltip: Sixty-nine with Yarasta and get your {pussy/asshole} licked. Actually, with the ant-abdomen, it’s more like an eighth notey-nine....");

output("\n\nYou set aside your [pc.gear] to expose your {[pc.vaginas]/crotch} in all {its glory/their glories}. Yarasta looks hard at what you offer{(too-big cocks), but eventually shakes her head. <i>“I’d love to take that, but you’re just too big for me. /(dildo pants), lingering a long time on your discarded and obviously made-to-be-played panties with their technological tool, but eventually decides against it. /(puss only)smiling as she recognizes the resemblance of your [pc.vaginas] to hers. /(dr. flatcrotch), trying to discern just where the ‘offer’ lies. Your unadorned crotch is surprising enough to make her forget that she’d supposed to be having sex, instead reverting her to full professor mode. <i>“What an unusual anatomy. How do you reproduce?”</i> }");

output("\n\n{(unsexed){(either carrying butt eggs or high lib and no buttvirgin)<i>“What?”</i> You turn around, {flexing/wagging/jiggling} your [pc.butt] at her. <i>“In the butt,”</i> you indicate. /(misch or mean)<i>“How do </i>you<i> reproduce?”</i> you ask, pointedly. /(else)You coyly turn around, showing her your [pc.asshole]. }Yarasta blushes. }");

output("\n\nShe slowly unfastens her clothes with all the lack of urgency that defines romance - every button on her blouse is freed from its noose deliberately, like a tongue pulling back from a lover’s mouth. You might even suggest that her languid pace were inappropriate, but for her look of consideration. She’s clearly deciding how to have you. Her blouse finally falls away, exposing her small breasts and their excited nipples, each just a hair more golden than the skin around them. Somehow, she still looks half-dressed by the way her sparing-but-concentrated chitin covers her arms, shoulders, and collarbone in a dark mantlet.");

output("\n\n<i>“Lie on your side,”</i> the instructor instructs, slipping her skirt over her head next so she’s completely nude. You do as told, laying yourself down{(legs) and lifting one leg so {[pc.eachVagina]/your [pc.asshole]} is still visible}. Yarasta sits beside you, legs splayed to one side and a hand on your [pc.stomach], just above your crotch, feeling your deep breaths. Then she lies down as well, orienting herself the opposite way, face right in your crotch. She {(taur)stretches her body to match your length/curls up her body until she matches your size} and the vaginal opening on her myr abdomen waits right in front of your eyes. With just a bit of bend to your neck, you can sink your mouth into her folds. The sweet, heavy scent of a gold myr wreaths your head.");

output("\n\n<i>“I hope you won’t require tutoring, because my mouth will be full,”</i> says the myr in a rare joke. Without waiting for a response, she presses her mouth to {[pc.oneVagina]/your rim}, intruding in your body with a hot, wet kiss. You complete the circle, immersing yourself in this strange sex that smacks of sugar. {Her large, fleshy folds baffle your tongue, and despite your unskilled oral, she shudders and sighs. /Your long tongue slurps and slides past the silky folds that would mean heaven for an intruding cock, sending the myr into shudders of ecstasy despite your inexpert movements. /Your astounding tongue spirals deep into her, shuttling through fleshy valleys on a tear to find her sensitive spots like a perverted connect-the-dots with your oral organ as the line. }");

output("\n\nHer body writhes against yours, and yours hers, as you ply your cunny cartography on the alien innerscape. Even the few times you find a small nub and bite lightly on it, she seems to enjoy; breasts press into you and golden, muscular thighs convulse in your periphery. For her part, she dives into your [pc.vagOrAss] with gusto, puzzling out the kept secrets of your {female anatomy/[pc.asshole]} with your own body as a thrashing, moaning dowser.");

output("\n\nYarasta’s mouth feels so good that you suspect she’s had practice her schedule couldn’t possibly allow; her tongue darts {from [pc.oneVagina] to another/into your [pc.vagOrAss] repeatedly}, dragging the rim every time. As she becomes more aroused, her tongue becomes wilder and faster, thrusting in at different angles, probing and pushing into your soft tunnel, driving you insane in turn. {Your short tongue laps at the gold myr’s fairer sex, shallowly diving the pool of unknown alien pussy for any sensual pearls that send a shiver through your partner. /Your long tongue stretches deeply inside the alien abdomen, touching strange, sweet bumps and nodules whose function is hidden beyond making the myr woman squirm and trib her pussy against your face. /Your enormous tongue coils and curls in the myr’s strange abdomen, bumping up against folds and organs and cervix with undisciplined writhing and tasting sugar everywhere. }");

output("\n\nYou hear a voice from your own [pc.ass] that sounds, no, <i>feels</i> like <i>“I’m coming!”</i> Yarasta shakes and moans with climax, so violently that you can feel her erect nipples {(scale-belly)sliding in the channels between your {scales/chitin}/digging furrows in the [pc.skin] of your stomach}. A faintly honey-flavored liquid flows into your mouth, and you feel hot breath and a struggling mouth on your {vagina/asshole}. Her tongue quivers inside you, trying to scream out a song of orgasm but restrained by your own slippery folds. Your [pc.vagOrAss] trembles under her faltering touch and {grasps/erupts at} the summit of your pleasure{, soaking the surprised face of your myr lover with [pc.girlCumNoun]. She {(edible)drinks greedily of your [pc.girlCumFlavor] fluids/(inedible)spits repeatedly as the [pc.girlCumFlavor] liquid enters her mouth}}.");

output("\n\n{(edible girlcum)Slowly/(else inedible or unsexed)Quickly}, her lips pull away, leaving you empty once again. {You withdraw your tongue also, smearing the lingering coating of near-honey on your lips accidentally. /Your long tongue whips from her suddenly, dragging along her ridges to create an aftershock of both friction and pleasure in the myr. }She pushes herself away from you and sits up, looking around for her clothes{ with a [pc.girlCumColor] stain still coloring her lips and chin}.");

output("\n\n<i>“I needed that,”</i> she says, locating her shirt and beginning to dress. <i>“Do come visit again.”</i> She pauses for a moment to wink at you, then resumes buttoning, leaving you to gather up your things as well.");
output("\n\n//end, lust, time, increment sexed counter");


output("\n\nTittyfuck the A-cup - ABANDONED, DO NOT CODE");
output("\n\n//NPC never chooses this scene of her own volition");
output("\n\n//accommodates any size cock or tailcock");
output("\n\n//tooltip: Rub your cock between her breasts until you cum. There’s plenty of room.");
output("\n\n//tooltip disabled, no cocks: You don’t have any cocks! Unlike her lack, yours is an obstacle.");

output("\n\nYou watch her undress, eyes on you as she pulls open button after button, exposing her petit bust and smooth skin. {(nice no bimbro)<i>“I’d like to, ah, use your breasts, if I might,”</i> you stammer. /(else)<i>“I wanna stick my dick between your titties,”</i> you blurt. }");

output("\n\nYarasta freezes as if stunned. <i>“You’re joking.”</i>");

output("\n\nA shake of your head assures her otherwise. {(bim)<i>“They’re totally cute!”</i> /(bro)<i>“All titties are beautiful to me,”</i> /(nice)<i>“They have a very attractive shape,”</i> /(else)<i>“Sorry, I thought I was allowed to pick?”</i> }you say, defensively.");

output("\n\nThe prefect sighs in exasperation. <i>“Yes, fine, whatever.”</i> She finishes unbuttoning and throws her blouse open unceremoniously, waiting for you to {(horse)become erect. /stroke yourself to erectness. }The little half-globes make the barest jiggle when she thrusts her chest forward.");


output("\n\n[tbd titlicking foreplay]");

output("\n\nShe pushes her wet breasts together with her hands, creating a very shallow valley while she looks away, embarrassed. You slide forward, guiding your cock between the petite tits, and {(horse)you can only imagine that }a blush comes to her cheeks as you start to fuck.");

output("\n\n<i>“This is so dumb,”</i> she mumbles, chest heaving with your strokes. <i>“You could literally pick any other myr off the street for this.”</i>");


output("\n\n[tbd: cock-requiring sternum-fucking action as you play with her sensitive tits, make <i>“overweening ambition”</i> pun for big dicks (no that’s dumb)]");

output("\n\nThe myr’s skin is hot with pre, and friction. Her nipples {(wide cock)rub deep lines into /(else)just barely touch }the sides of your [pc.cockNounSimple], pressed as close as she can get them; once in a while she’ll sigh or shiver as your tool drags along them, but for the most part you don’t notice, busy thrusting downward so the sensitive underside of your shaft slides along her chest.");

output("\n\n{(li’l cum)Yarasta looks mildly concerned when you grunt and your cock throbs against her chest with orgasm, but when your unproductive [pc.balls] produce the merest dribble of [pc.cum], she giggles. The little beads of [pc.cumNoun] drop onto her neck, giving the myr a dainty [pc.cumGem]pendant. /(med cum) Yarasta guesses what’s coming as your cock throbs{ and your sack tightens}, and she leans her head back so the shot of [pc.cum] hits her on the chin and falls to her neck, decorating the myr with a [pc.cumVisc] [pc.cumgem] choker. /(big cum)Yarasta’s eyes widen like an animal’s in headlights as your urethra dilates with the first wave of [pc.cum], and catches it in the face. She quickly lies flat, trying to let the load pass mostly over her; you spray like a firehose, and the [pc.cumColor] waves roll over her chest to break on her chin, washing past her pointed ears and pooling in the corners of the myr’s tightly-pressed lips until you finally spend your built-up seed. }");

output("\n\n<i>“Did you get it all out of your system?”</i> she sneers, disdainfully lifting your drooling [pc.cockNounSimple] by a flap of skin like one might a dead cat and scooting from underneath. <i>“Maybe next time we can do something I’d enjoy.”</i>");

output("\n\n{(misch/mean no bimbro)You reach over and massage a {goopy }breast. <i>“Depends on whether these grow out,”</i> you taunt back. She slaps your hand away. }");
output("\n\n//end, lust, time, don’t implement sexed counter");
