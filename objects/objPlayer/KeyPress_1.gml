/// @description Insert description here
// You can write your code in this editor
AttackType = "";
ButtonCombo = ""

//Button inputs for each attack
if(keyboard_check(vk_numpad4) || keyboard_check(ord("J")) || keyboard_check(vk_left))
{
	ButtonCombo += "+LAtk"
}

if(keyboard_check(vk_numpad8) || keyboard_check(ord("I")) || keyboard_check(vk_up))
{
	ButtonCombo += "+SAtk"
}

if(keyboard_check(ord("D")) || keyboard_check(ord("A")))
{
	ButtonCombo += "+Side"
}

if(keyboard_check(ord("W")))
{
	ButtonCombo += "+Up"
}

if(keyboard_check(ord("S")))
{
	ButtonCombo += "+Down"
}

ds_list_add(CommandList, string_delete(ButtonCombo,1,1))

alarm[0] = 10

while(ds_list_size(CommandList) > 7)
{
	ds_list_delete(CommandList, 0)
}

if (ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk"){
	AttackType = "Basic Punch"
} else if (ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk"){
	AttackType = "Strong Punch"
} else if (ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk+Side"){
	AttackType = "Side Strong"
} else if (ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk+Side"){
	AttackType = "Side Light"
} else if (ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk+Down"){
	AttackType = "Down Strong"
} else if (ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk+Down"){
	AttackType = "Down Light"
}/*if (ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk+Up"){
	AttackType = "Up Strong"
} else if (ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk+Up"){
	AttackType = "Up Light"
} else*/ 

if(OnGround == true)
{	
	event_user(2);
}





