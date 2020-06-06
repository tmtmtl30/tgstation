/* BEGIN DOM DEBUG TAG */
/datum/antagonist/rev/domination // i'll be the first to admit it's more than a little silly that neither inherits a domination rev type, but-
	name = "Dominator" // lewd moment
	roundend_category = "dominators" // if by some miracle revolutionaries without revolution happen
	antagpanel_category = "Domination"
	rev_head_path = /datum/antagonist/rev/head/domination
	rev_normal_path = /datum/antagonist/rev/domination
	rev_team_path = /datum/team/revolution/domination

/datum/antagonist/rev/head/domination
	name = "Head Dominator"
	roundend_category = "dominators" // if by some miracle revolutionaries without revolution happen
	antagpanel_category = "Domination"
	rev_head_path = /datum/antagonist/rev/head/domination
	rev_normal_path = /datum/antagonist/rev/domination
	rev_team_path = /datum/team/revolution/domination
	var/give_dom = TRUE

/datum/antagonist/rev/head/domination/get_admin_commands()


/datum/antagonist/rev/head/domination/on_removal()
	var/mob/living/carbon/C = owner.current
	for(var/obj/item/implant/beacondrop/dominator/D in C.implants)
		D.removed(C)
	return ..()

/datum/antagonist/rev/head/domination/equip_rev()
	var/mob/living/carbon/C = owner.current
	if(!ishuman(C) && !ismonkey(C)) // a shame that we have to duplicate this check
		return
	. = ..()

	if(give_dom)
		var/obj/item/implant/beacondrop/dominator/D
		D = new(C)
		D.implant(C,FALSE, silent = TRUE, force = TRUE)
		to_chat(C, "You have been implanted with a beacon that will send a Dominator to your position, enabling station takeover. Be careful: <b>you only get one shot</b>.")

/datum/team/revolution/domination
	name = "Domination"

/datum/team/revolution/domination/update_objectives()
	if(!objectives.len)
		var/datum/objective/dominator/new_target = new()
		objectives |= new_target
	for(var/datum/mind/M in members)
		var/datum/antagonist/rev/R = M.has_antag_datum(/datum/antagonist/rev)
		R.objectives |= objectives
	addtimer(CALLBACK(src,.proc/update_objectives),HEAD_UPDATE_PERIOD,TIMER_UNIQUE)

/datum/team/revolution/is_gamemode_hero()

/* END DOM DEBUG TAG */
