#define N7_OVERRIDE 'code/modules/pinnacle_station/clothing/systems_alliance_N7.dmi'


/obj/item/clothing/head/systems_alliance/n7
	name = "ONYX-N N-Series Heavy Battle Helmet"
	icon = N7_OVERRIDE
	icon_override = N7_OVERRIDE
	icon_state = "n7_helmet"
	item_state = "n7_helmet_w"
	desc = "A special helmet designed for use with the ONYX-N Armor"
	item_flags = 0
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_pressure_protection = 0
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES
	permeability_coefficient = 0.01
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)


/obj/item/clothing/suit/armor/systems_alliance/n7
	name = "ONYX-N N-Series Heavy Battle Armor"
	desc = "Standard issue combat hardsuit for N-series special forces. Built to protect soldiers in long-running engagements where reinforcements may be sparse."
	icon = N7_OVERRIDE
	icon_override = N7_OVERRIDE
	icon_state = "n7_armor"
	item_state = "n7_armor_w"
	w_class = ITEM_SIZE_HUGE
	gas_transfer_coefficient = 0
	permeability_coefficient = 0
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_pressure_protection = 0
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	allowed = list(
		/obj/item/tank/oxygen_emergency,
		/obj/item/tank/oxygen_emergency_extended,
		/obj/item/tank/nitrogen_emergency,
		/obj/item/device/flashlight,
		/obj/item/gun/energy,
		/obj/item/gun/projectile,
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing,
		/obj/item/melee/baton,
		/obj/item/handcuffs
	)
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = 55,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAIL
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.7

/obj/item/clothing/suit/armor/systems_alliance/n7
	item_state_slots = list(
		slot_l_hand_str = "space_suit_syndicate",
		slot_r_hand_str = "space_suit_syndicate",
	)
/obj/item/clothing/suit/armor/captain/Initialize()
	. = ..()
	slowdown_per_slot[slot_wear_suit] = 1.1

#undef N7_OVERRIDE