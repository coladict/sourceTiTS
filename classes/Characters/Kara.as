﻿package classes.Characters
{
	import classes.Creature;
	import classes.GLOBAL;
	import classes.Items.Protection.ReaperArmamentsMarkIIShield;
	import classes.Items.Guns.FlareGun;
	import classes.Items.Apparel.GenericCatsuit;
	import classes.kGAMECLASS;
	import classes.Engine.Combat.DamageTypes.DamageFlag;
	import classes.GameData.CombatAttacks;
	import classes.GameData.CombatManager;
	import classes.Engine.Combat.DamageTypes.*;
	import classes.Engine.Combat.*; 
	import classes.Engine.Interfaces.output;
	
	public class Kara extends Creature
	{
		
		//constructor
		public function Kara()
		{
			this._latestVersion = 1;
			this.version = this._latestVersion;
			this._neverSerialize = false;
			
			this.short = "Kara";
			this.originalRace = "kaithrit";
			this.a = "";
			this.capitalA = "";
			this.long = "";
			this.customDodge = "Kara nimbly ducks aside!";
			this.customBlock = "";
			this.isPlural = false;
			
			meleeWeapon.baseDamage.kinetic.damageValue = 6;
			meleeWeapon.baseDamage.addFlag(DamageFlag.PENETRATING);
			this.meleeWeapon.attack = 2;
			this.meleeWeapon.longName = "cutlass";
			this.meleeWeapon.attackVerb = "slash";
			this.meleeWeapon.attackNoun = "blade";
			this.meleeWeapon.hasRandomProperties = true;
			
			this.armor new GenericCatsuit();
			
			this.rangedWeapon = new FlareGun();
			rangedWeapon.baseDamage.kinetic.damageValue = 12;
			this.rangedWeapon.longName = "plasma pistol";
			this.rangedWeapon.attackVerb = "plasma";
			this.rangedWeapon.attackNoun = "plasma";
			this.rangedWeapon.hasRandomProperties = true;

			this.shield = new ReaperArmamentsMarkIIShield();
			
			this.physiqueRaw = 31;
			this.reflexesRaw = 21;
			this.aimRaw = 34;
			this.intelligenceRaw = 25;
			this.willpowerRaw = 15;
			this.libidoRaw = 70;
			this.HPMod = 125;
			this.shieldsRaw = this.shieldsMax();
			this.energyRaw = 100;
			this.lustRaw = 15;
			
			this.XPRaw = 400;
			this.level = 7;
			this.credits = 0;
			this.HPRaw = this.HPMax();
			
			this.femininity = 85;
			this.eyeType = GLOBAL.TYPE_SYNTHETIC;
			this.eyeColor = "green";
			this.tallness = 78;
			this.thickness = 45;
			this.tone = 30;
			this.hairColor = "blue";
			this.scaleColor = "blue";
			this.furColor = "blue";
			this.hairLength = 5;
			this.hairType = 0;
			this.beardLength = 0;
			this.beardStyle = 0;
			this.skinType = GLOBAL.SKIN_TYPE_SKIN;
			this.skinTone = "pale";
			this.skinFlags = [];
			this.faceType = 0;
			this.faceFlags = new Array();
			this.tongueType = GLOBAL.TYPE_FELINE;
			this.lipMod = 0;
			this.earType = GLOBAL.TYPE_FELINE;
			this.antennae = 0;
			this.antennaeType = 0;
			this.horns = 0;
			this.hornType = 0;
			this.armType = 0;
			this.gills = false;
			this.wingType = 0;
			this.legType = 0;
			this.legCount = 2;
			this.legFlags = [GLOBAL.FLAG_PLANTIGRADE];
			//0 - Waist
			//1 - Middle of a long tail. Defaults to waist on bipeds.
			//2 - Between last legs or at end of long tail.
			//3 - On underside of a tail, used for driders and the like, maybe?
			this.genitalSpot = 0;
			this.tailType = GLOBAL.TYPE_FELINE;
			this.tailCount = 2;
			this.tailFlags = [GLOBAL.FLAG_FLUFFY,GLOBAL.FLAG_LONG];
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
			this.hipRatingRaw = 10;
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
			this.buttRatingRaw = 10;
			//No dicks here!
			this.cocks = new Array();
			this.createCock();
			this.cocks[0].cLengthRaw = 10;
			this.cocks[0].cType = GLOBAL.TYPE_FELINE;
			this.createStatusEffect("Uniball");
			//Vag!
			this.vaginas = new Array();
			this.createVagina();
			this.vaginas[0].loosenessRaw = 4;
			this.vaginas[0].wetnessRaw = 5;
			this.vaginas[0].bonusCapacity = 300;
			//balls
			this.balls = 2;
			this.cumMultiplierRaw = 5;
			//Multiplicative value used for impregnation odds. 0 is infertile. Higher is better.
			this.cumQualityRaw = 2;
			this.cumType = GLOBAL.FLUID_TYPE_CUM;
			this.girlCumType = GLOBAL.FLUID_TYPE_GIRLCUM;
			this.ballSizeRaw = 2;
			this.ballFullness = 100;
			//How many "normal" orgams worth of jizz your balls can hold.
			this.ballEfficiency = 15;
			//Scales from 0 (never produce more) to infinity.
			this.refractoryRate = 8;
			this.minutesSinceCum = 900;
			this.timesCum = 1957;
			this.cockVirgin = false;
			this.vaginalVirgin = false;
			this.analVirgin = false;
			//Goo is hyper friendly!
			this.elasticity = 2;
			//Fertility is a % out of 100. 
			this.fertilityRaw = 5;
			this.clitLength = .5;
			this.pregnancyMultiplierRaw = 1;
			
			this.breastRows[0].breastRatingRaw = 9;
			this.nippleColor = "pink";
			this.milkMultiplier = 0;
			this.milkType = GLOBAL.FLUID_TYPE_MILK;
			//The rate at which you produce milk. Scales from 0 to INFINITY.
			this.milkRate = 0;
			this.ass.wetnessRaw = 0;
			this.ass.loosenessRaw = 1;
			this.ass.bonusCapacity = 100;
			
			//LIKES
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_BIG_MALEBITS,		GLOBAL.KINDA_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_BIG_BREASTS,		GLOBAL.KINDA_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_VAGINAL_WETNESS, 	GLOBAL.KINDA_LIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_LACTATION,		GLOBAL.KINDA_LIKES_SEXPREF);

			//Dislikes
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_SMALL_MALEBITS,	GLOBAL.KINDA_DISLIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_SMALL_BREASTS,	GLOBAL.KINDA_DISLIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_VAGINAL_DRYNESS, 	GLOBAL.KINDA_DISLIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_MASCULINE, 		GLOBAL.REALLY_DISLIKES_SEXPREF);
			this.sexualPreferences.setPref(GLOBAL.SEXPREF_EXOTIC_BODYSHAPE, GLOBAL.REALLY_DISLIKES_SEXPREF);
			
			this._isLoading = false;
		}
		
		override public function get bustDisplay():String
		{
			return "Kara";
		}
		
		override public function CombatAI(alliedCreatures:Array, hostileCreatures:Array):void
		{
			if (hasStatusEffect("Force Edge CD") && rand(2) == 0)
			{
				removeStatusEffect("Force Edge CD");
			}
			
			var stimTarget:Creature = null;
			// figure out if stimboost should be used
			for (var i:int = 0; i < alliedCreatures.length; i++)
			{
				var c:Creature = alliedCreatures[i] as Creature;
				if ((c.HP() < 50 && rand(2) == 0) || c.HP() < 25)
				{
					if (stimTarget == null) stimTarget = c;
					else if (!(stimTarget is PlayerCharacter)) stimTarget = c;
				}
			}
			
			if (stimTarget != null)
			{
				stimboost(stimTarget);
			}
			else if (hasStatusEffect("Disarmed"))
			{
				output("Kara dives after her disarmed weapon, forfeiting her chance to attack in order to re-arm herself!");
				removeStatusEffect("Disarmed");
			}
			else
			{
				var target:Creature = selectTarget(hostileCreatures);
				if (target == null) return;
				
				if (!hasStatusEffect("Force Edge CD") && rand(3) == 0)
				{
					forceEdge(target);
				}
				else if (rand(2) == 0)
				{
					plasmashot(target);
				}
				else
				{
					chargeshot(target);
				}
			}
			
			updateDesc();
		}
		
		private function updateDesc():void
		{
			var hostiles:Array = CombatManager.getHostileCharacters();
			
			if (hostiles.indexOf(this) == -1)
			{
				long = "Beside you stands Kara";
			}
			else
			{
				long = "You’re fighting Kara";
			}
			long += ", a mysterious kaithrit with cobalt locks and eerie eyes. Her cloak hangs loosely from her shoulders, revealing a skin-tight black shirt that hugs and accentuates her hefty E-cups. Her legs are mostly naked, barely covered by a lopsided half-skirt over one leg. In one hand, she’s carrying a compact plasma pistol, humming with energy and glowing with green light. Her off-hand grips the hilt of a hardlight blade back-handed, holding a flashing blade of purple force behind her.";
		}
		
		private function stimboost(target:Creature):void
		{
			if (target is PlayerCharacter)
			{
				output("Kara flips a button on the holoband on her wrist, causing a small device hidden on her hip to beep. She flicks her wrist your way, and a tiny dart plinks into you, releasing a stream of restorative stims into you.");
			}
			else
			{
				output("Kara flips a button on the holoband on her wrist, causing a small device hidden on her hip to beep. She winces as a stream of stimulants pump into her.");
			}
			
			target.HP(Math.round(target.HPMax() / 4));
		}
		
		private function chargeshot(target:Creature):void
		{
			output("Kara holds down the trigger on her plasma pistol, just for a second, letting a charge build up before she lets the bolt of green go screaming towards ");
			if(target is PlayerCharacter) output("you!");
			else output(target.a + target.short + ".");
			if(rangedCombatMiss(this, target))
			{
				output(" Her shot blasts into a wall, sizzling harmlessly.");
			}
			else
			{
				var damage:TypeCollection = rangedDamage();
				damage.multiply(1.5);
				damageRand(damage, 15);
				applyDamage(damage, this, target);

				//{It hits for X damage! // } {If burn: ");
				if(!target.hasStatusEffect("Burn") && rand(2) == 0)
				{
					if(target is PlayerCharacter) output("\nThe bolt explodes across you, slathering you in burning hot green plasma. <b>You are burning!</b>");
					else output("\nThe bolt explodes across " + target.a + target.short + ", slathering " + target.mfn("him","her","it") + " in burning hot green plasma. <b>" + target.mfn("He","She","It") + " is burning!</b>");
					target.createStatusEffect("Burn",2,0,0,0,false,"Icon_Smelly","Burning for thermal damage over time.",true,0);
				}
			}
		}
		
		private function forceEdge(target:Creature):void
		{
			output("Kara flicks on the blade of her hardlight sword and charges, hacking a deadly arc toward ");
			if(target is PlayerCharacter) output("you");
			else output("Shade");
			output(".");
			if(combatMiss(this, target))
			{
				if(!(target is PlayerCharacter)) output(" Her strike is parried!");
				else output(" You parry her strike!");
			}
			else
			{
				var damage:TypeCollection = meleeDamage();
				damageRand(damage, 15);
				applyDamage(damage, this, target);
			}
		}
		
		private function plasmashot(target:Creature):void
		{
			output("Kara fires a bolt of superheated plasma at ");
			if(target is PlayerCharacter) output("you!");
			else output("Shade!");
			if(rangedCombatMiss(this, target))
			{
				output(" Her shot goes wide, burning into the ground!");
			}
			else
			{
				var damage:TypeCollection = rangedDamage();
				damageRand(damage, 15);
				applyDamage(damage, this, target);
			}
		}
	}

}