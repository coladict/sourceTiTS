package classes.Characters 
{
	import classes.Creature;
	import classes.Engine.Combat.DamageTypes.TypeCollection;
	import classes.GameData.Pregnancy.PregnancyStageProgression;
	import classes.GLOBAL;
	import classes.Items.Apparel.GooeyCoverings;
	import classes.Items.Melee.Fists;
	import classes.Items.Guns.HammerPistol;
	import classes.Items.Melee.GooeyPsuedopod;
	import classes.Items.Miscellaneous.EmptySlot;
	import classes.Items.Protection.JoyCoPremiumShield;
	import classes.kGAMECLASS;
	import classes.Engine.Utility.rand;
	import classes.GameData.CodexManager;
	import classes.Engine.Combat.*;
	import classes.Engine.Combat.DamageTypes.*;
	import classes.Engine.Interfaces.output;
	import classes.GameData.CombatAttacks;
	import classes.GameData.CombatManager;
	
	/**
	 * ...
	 * @author Gedan
	 */
	public class GigaGoo extends Creature
	{
		
		public function GigaGoo() 
		{
			this._latestVersion = 1;
			this.version = _latestVersion;
			this._neverSerialize = true;
			
			// Originally a clone of the zilpack
			// Needs a few things checked.
			this.short = "giga goo";
			this.originalRace = "gray goo";
			this.a = "the ";
			this.capitalA = "The ";
			this.long = "The gray goo gestalt calling itself Nova has taken on an entire vat of additional goo, expanding itself to monstrous proportions. She's having to lean over just to fit in the reactor compartment now, and each of her fists are easily bigger than you are. Her sword is the size of a truck, the blade resizing itself to slide through the open front of the elevator with ease. Her eyes burn with hate and anger as she swings and lunges at you, all too happy to take advantage of your confinement and trying to plunge you into the billowing cloud of poison gas below.";
			this.customDodge = "The goos liquid flexibility allows it to handily avoid your attack.";
			this.customBlock = "The goos liquidity absorbs a great deal of punishment - without taking damage.";
			this.isPlural = true;
			
			baseHPResistances.drug.resistanceValue = 20.0;
			baseHPResistances.pheromone.resistanceValue = 20.0;
			baseHPResistances.psionic.resistanceValue = 20.0;
			baseHPResistances.tease.resistanceValue = 20.0;
			
			meleeWeapon = new GooeyPsuedopod();
			meleeWeapon.attack = 3;
			meleeWeapon.baseDamage.kinetic.damageValue = 12;
			meleeWeapon.hasRandomProperties = true;
			
			armor = new GooeyCoverings();
			armor.defense = 3;
			armor.hasRandomProperties = true;
			
			this.rangedWeapon = new EmptySlot();
			
			this.physiqueRaw = 16;
			this.reflexesRaw = 19;
			this.aimRaw = 12;
			this.intelligenceRaw = 1;
			this.willpowerRaw = 14;
			this.libidoRaw = 50;
			this.shieldsRaw = 0;
			this.energyRaw = 100;
			this.lustRaw = 15;
			
			baseHPResistances = new TypeCollection();
			baseHPResistances.kinetic.damageValue = 20.0;
			baseHPResistances.electric.damageValue = 20.0;
			baseHPResistances.burning.damageValue = 20.0;
			baseHPResistances.freezing.damageValue = 20.0;
			baseHPResistances.corrosive.damageValue = 20.0;
			baseHPResistances.poison.damageValue = 20.0;
			
			this.XPRaw = 250;
			this.level = 5;
			this.credits = 0;
			this.HPMod = 60;
			this.shieldsRaw = this.shieldsMax();
			this.HPRaw = this.HPMax();
			
			
			this.femininity = 50;
			this.eyeType = GLOBAL.TYPE_HUMAN;
			this.eyeColor = "black";
			this.tallness = 24;
			this.thickness = 70;
			this.tone = 80;
			this.hairColor = "none";
			this.scaleColor = "none";
			this.furColor = "none";
			this.hairLength = 0;
			this.hairType = GLOBAL.TYPE_HUMAN;
			this.beardLength = 0;
			this.beardStyle = 0;
			this.skinType = GLOBAL.TYPE_HUMAN;
			this.skinTone = "steel gray";
			this.skinFlags = new Array();
			this.faceType = GLOBAL.TYPE_HUMAN;
			this.faceFlags = new Array();
			this.tongueType = GLOBAL.TYPE_HUMAN;
			this.lipMod = 0;
			this.earType = 0;
			this.antennae = 1;
			this.antennaeType = GLOBAL.TYPE_HUMAN;
			this.horns = 0;
			this.hornType = 0;
			this.armType = GLOBAL.TYPE_HUMAN;
			this.gills = false;
			this.wingType = GLOBAL.TYPE_HUMAN;
			this.legType = GLOBAL.TYPE_HUMAN;
			this.legCount = 3;
			this.legFlags = [GLOBAL.FLAG_PLANTIGRADE];
			//0 - Waist
			//1 - Middle of a long tail. Defaults to waist on bipeds.
			//2 - Between last legs or at end of long tail.
			//3 - On underside of a tail, used for driders and the like, maybe?
			this.genitalSpot = 0;
			this.tailType = GLOBAL.TYPE_HUMAN;
			this.tailCount = 1;
			this.tailFlags = new Array();
			//Used to set cunt or dick type for cunt/dick tails!
			this.tailGenitalArg = 0;
			//tailGenital:
			//0 - none.
			//1 - cock
			//2 - vagina
			this.tailGenital = 0;
			//Tail venom is a 0-100 slider used for tail attacks. Recharges per hour.
			this.tailVenom = 0;
			//Tail recharge determines how fast venom/webs comes back per hour.
			this.tailRecharge = 5;
			//hipRating
			//0 - boyish
			//2 - slender
			//4 - average
			//6 - noticable/ample
			//10 - curvy//flaring
			//15 - child-bearing/fertile
			//20 - inhumanly wide
			this.hipRatingRaw = 2;
			//buttRating
			//0 - buttless
			//2 - tight
			//4 - average
			//6 - noticable
			//8 - large
			//10 - jiggly
			//13 - expansive
			//16 - huge
			//20 - inconceivably large/big/huge etc
			this.buttRatingRaw = 2;
			//No dicks here!
			this.cocks = new Array();
			
			this.createStatusEffect("Disarm Immune");
			this.createStatusEffect("Stun Immune");
			this.createStatusEffect("Flee Disabled",0,0,0,0,true,"","",false,0);
			
			isUniqueInFight = true;
			btnTargetText = "Gigagoo";
			
			this._isLoading = false;
		}
		
		override public function get bustDisplay():String
		{
			return "GRAY_GOO_GIGA";
		}
				
		override public function CombatAI(alliedCreatures:Array, hostileCreatures:Array):void
		{
			var target:Creature = selectTarget(hostileCreatures);
			if (target == null) return;
			
			if (rand(3) == 0)
			{
				CombatAttacks.MeleeAttack(this, target);
			}
			else
			{
				if (CombatManager.getRoundCount() % 3 == 0) cageRattle(hostileCreatures);
				else if (rand(4) == 0) swordThrust(hostileCreatures);
				else gooPunch(hostileCreatures);
			}
		}
		
		private function cageRattle(hostiles:Array):void
		{
			var pc:Creature;
			var anno:Creature;
			
			for (var i:int = 0; i < hostiles.length; i++)
			{
				if (hostiles[i] is PlayerCharacter) pc = hostiles[i];
				if (hostiles[i] is Anno) anno = hostiles[i];
			}
			
			//Several light physical attacks, chance of knockdown in failed Reflex save. 
			output("\nNova reaches up and grabs the top of the elevator to hold it in place and push downward, trying to drive you into the rising cloud of gas below. The car shakes and shudders as she fights against the motor to hold you down.");

			var totalDamage:int = 0;

			for (i = 0; i < 7; i++)
			{
				var damage:TypeCollection = new TypeCollection( { kinetic: 5 } );
				damageRand(damage, 15);
				
				if (!combatMiss(this, pc, -1, 2))
				{
					var damageResult:DamageResult = applyDamage(damage, this, pc);
					totalDamage += damageResult.totalDamage;
				}
				
				if (!combatMiss(this, anno, -1, 2))
				{
					applyDamage(damage, this, anno);
				}
			}

			if (rand(50) <= totalDamage)
			{
				output("\n<b>The rocking of the cage knocks you flat on your ass! You’re prone!</b>");
				pc.createStatusEffect("Tripped", 0, 0, 0, 0, false, "DefenseDown", "You've been tripped, reducing your effective physique and reflexes by 4. You'll have to spend an action standing up.", true, 0);
			}
		}
		
		private function gooPunch(hostiles:Array):void
		{
			var pc:Creature;
			var anno:Creature;
			
			for (var i:int = 0; i < hostiles.length; i++)
			{
				if (hostiles[i] is PlayerCharacter) pc = hostiles[i];
				if (hostiles[i] is Anno) anno = hostiles[i];
			}
			
			output("\nNova rears her massive fist back and swings, a straight punch right into the face of the cart. Bits of her gooey fingers are shorn off as she slams herself through the slim bars around the elevator, smashing into you! You and Anno are slammed back against the wall by the force of the blow, drowning in a sea of gray bots as her fingers drip away, though they reform a moment later.");
	
			if (rand(4) == 0)
			{
				pc.createStatusEffect("Stunned", 3, 0, 0, 0, false, "Stun", "You are stunned and cannot act until you recover!", true, 0);
				output(" <b>You’re stunned by the overwhelming force of the blow!</b>");
			}
			
			applyDamage(damageRand(meleeDamage(), 15), this, pc);
			applyDamage(damageRand(meleeDamage(), 15), this, anno);
		}
		
		private function swordThrust(hostiles:Array):void
		{
			output("\nNova’s sword swings back, her whole body leaning into the blow as she lunges forward to drive the sword straight through the open face of the lift!");

			var pc:Creature = null;
			for (var i:int = 0; i < hostiles.length; i++)
			{
				if (hostiles[i] is PlayerCharacter) pc = hostiles[i] as Creature;
			}
			
			if (combatMiss(this, pc, -1, 2))
			{
				output(" You and Anno duck apart, letting the sword plunge into the wall between the two of you. The rising elevator cart quickly cuts it off of the mass and lets it pour off the sides... only to reform a moment later.")
			}
			else
			{
				output(" You cry out in pain as the immense goo-sword strikes you, tearing through the ancient steel of the elevator cart with ease.");
				
				for (i = 0; i < hostiles.length; i++)
				{
					var d:TypeCollection = meleeDamage();
					d.add(reflexes() + 5);
					applyDamage(damageRand(d, 25), this, hostiles[i]);
				}
			}
		}
	}

}