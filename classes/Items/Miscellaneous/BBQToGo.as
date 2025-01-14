﻿package classes.Items.Miscellaneous
{
	import classes.ItemSlotClass;
	import classes.GLOBAL;
	import classes.Creature;
	import classes.kGAMECLASS;	
	import classes.Characters.PlayerCharacter;
	import classes.GameData.TooltipManager;
	import classes.StringUtil;
	import classes.Engine.Combat.inCombat;
	
	public class BBQToGo extends ItemSlotClass
	{
		
		//constructor
		public function BBQToGo()
		{
			this._latestVersion = 1;
			
			this.quantity = 1;
			this.stackSize = 10;
			this.type = GLOBAL.FOOD;
			
			//Used on inventory buttons
			this.shortName = "BBQ To-Go";
			
			//Regular name
			this.longName = "box of barbeque to-go";
			
			TooltipManager.addFullName(this.shortName, StringUtil.toTitleCase(this.longName));
			
			//Longass shit, not sure what used for yet.
			this.description = "a box of barbeque to-go";
			
			//Displayed on tooltips during mouseovers
			this.tooltip = "A tasty packaged meal from the Barbeque Pit on New Texas, this ever-fresh BBQ meal comes with fries and soda. Probably not great for your figure, but it’s guaranteed to give you a boost of energy in the middle of a long day at the office... or of galactic adventuring.";
			
			TooltipManager.addTooltip(this.shortName, this.tooltip);
			
			this.attackVerb = "";
			
			//Information
			this.basePrice = 15;
			this.attack = 0;
			this.defense = 0;
			this.shieldDefense = 0;
			this.shields = 0;
			this.sexiness = 0;
			this.critBonus = 0;
			this.evasion = 0;
			this.fortification = 0;
			
			this.combatUsable = true;
			this.targetsSelf = true;
			
			this.version = _latestVersion;
		}
		
		//METHOD ACTING!
		override public function useFunction(target:Creature, usingCreature:Creature = null):Boolean
		{
			var healing:int = 25;
			var nThick:Number = target.thickness;
			if(target is PlayerCharacter)
			{
				if(target.energy() + healing > target.energyMax())
				{
					healing = target.energyMax() - target.energy();
				}
				kGAMECLASS.clearOutput();
				//Consume:
				//Effect: %Chance +thickness, +25 Energy
				kGAMECLASS.output("You pop open the packaged BBQ To-Go meal and quickly munch down a nice, hot, fresh-tasting roast beef sandwich and fries, washing it down with a swig of sweet bottled orange soda. Delicious!");
				if(healing > 0) kGAMECLASS.output(" (<b>+" + healing + " Energy</b>)");
				target.modThickness(2);
				target.energy(healing);
				kGAMECLASS.output("\n");
			}
			else
			{
				healing = 35;
				if(target.energy() + healing > target.energyMax())
				{
					healing = target.energyMax() - target.energy();
				}
				if(inCombat()) kGAMECLASS.output("\n");
				else kGAMECLASS.clearOutput();
				kGAMECLASS.output(target.capitalA + target.short + " opens a BBQ To-Go box and wolfs down the contents, getting a");
				if(healing > 0) kGAMECLASS.output(" quick energy boost. (<b>+" + healing + " Energy</b>)");
				else kGAMECLASS.output(" full stomach in the process.");
				target.energy(healing);
				kGAMECLASS.output("\n");
			}
			return false;
		}
	}
}
