
/turf/open/floor/plating/airless
	icon_state = "plating"
	initial_gas_mix = "TEMP=2.7"

/turf/open/floor/plating/abductor
	name = "alien floor"
	icon_state = "alienpod1"

/turf/open/floor/plating/abductor/New()
	..()
	icon_state = "alienpod[rand(1,9)]"


/turf/open/floor/plating/abductor2
	name = "alien plating"
	icon_state = "alienplating"

/turf/open/floor/plating/abductor2/break_tile()
	return //unbreakable

/turf/open/floor/plating/abductor2/burn_tile()
	return //unburnable


/turf/open/floor/plating/astplate
	icon_state = "asteroidplating"

/turf/open/floor/plating/airless/astplate
	icon_state = "asteroidplating"


/turf/open/floor/plating/ashplanet
	icon = 'icons/turf/mining.dmi'
	name = "ash"
	icon_state = "ash"
	smooth = SMOOTH_MORE|SMOOTH_BORDER
	var/smooth_icon = 'icons/turf/floors/ash.dmi'
	desc = "The ground is covered in volcanic ash."
	baseturf = /turf/open/floor/plating/ashplanet/wateryrock //I assume this will be a chasm eventually, once this becomes an actual surface
	initial_gas_mix = "o2=14;n2=23;TEMP=300"
	planetary_atmos = TRUE

/turf/open/floor/plating/ashplanet/New()
	if(smooth)
		pixel_y = -4
		pixel_x = -4
		icon = smooth_icon
	..()

/turf/open/floor/plating/ashplanet/break_tile()
	return

/turf/open/floor/plating/ashplanet/burn_tile()
	return

/turf/open/floor/plating/ashplanet/ash
	canSmoothWith = list(/turf/open/floor/plating/ashplanet/ash, /turf/closed)
	layer = HIGH_TURF_LAYER
	slowdown = 1

/turf/open/floor/plating/ashplanet/rocky
	name = "rocky ground"
	icon_state = "rockyash"
	smooth_icon = 'icons/turf/floors/rocky_ash.dmi'
	layer = MID_TURF_LAYER
	canSmoothWith = list(/turf/open/floor/plating/ashplanet/rocky, /turf/closed)

/turf/open/floor/plating/ashplanet/wateryrock
	name = "wet rocky ground"
	smooth = null
	icon_state = "wateryrock"
	slowdown = 2

/turf/open/floor/plating/ashplanet/wateryrock/New()
	icon_state = "[icon_state][rand(1, 9)]"
	..()


/turf/open/floor/plating/beach
	name = "beach"
	icon = 'icons/misc/beach.dmi'
	flags = NONE

/turf/open/floor/plating/beach/ex_act(severity, target)
	contents_explosion(severity, target)

/turf/open/floor/plating/beach/sand
	name = "sand"
	desc = "Surf's up."
	icon_state = "sand"
	baseturf = /turf/open/floor/plating/beach/sand

/turf/open/floor/plating/beach/coastline_t
	name = "coastline"
	desc = "Tide's high tonight. Charge your batons."
	icon_state = "sandwater_t"
	baseturf = /turf/open/floor/plating/beach/coastline_t

/turf/open/floor/plating/beach/coastline_b
	name = "coastline"
	icon_state = "sandwater_b"
	baseturf = /turf/open/floor/plating/beach/coastline_b

/turf/open/floor/plating/beach/water
	name = "water"
	desc = "You get the feeling that nobody's bothered to actually make this water functional..."
	icon_state = "water"
	baseturf = /turf/open/floor/plating/beach/water


/turf/open/floor/plating/ironsand
	name = "iron sand"
	desc = "Like sand, but more <i>metal</i>."

/turf/open/floor/plating/ironsand/New()
	..()
	icon_state = "ironsand[rand(1,15)]"

/turf/open/floor/plating/ironsand/burn_tile()
	return


/turf/open/floor/plating/ice
	name = "ice sheet"
	desc = "A sheet of solid ice. Looks slippery."
	icon = 'icons/turf/snow.dmi'
	icon_state = "ice"
	temperature = 180
	baseturf = /turf/open/floor/plating/ice
	slowdown = 1
	wet = TURF_WET_PERMAFROST

/turf/open/floor/plating/ice/colder
	temperature = 140

/turf/open/floor/plating/ice/temperate
	temperature = 255.37

/turf/open/floor/plating/ice/break_tile()
	return

/turf/open/floor/plating/ice/burn_tile()
	return


/turf/open/floor/plating/snowed
	name = "snowed-over plating"
	desc = "A section of plating covered in a light layer of snow."
	icon = 'icons/turf/snow.dmi'
	icon_state = "snowplating"
	temperature = 180

/turf/open/floor/plating/snowed/colder
	temperature = 140

/turf/open/floor/plating/snowed/temperatre
	temperature = 255.37


