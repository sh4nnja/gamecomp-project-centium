# ******************************************************************************
# centennium_collection.gd
# ******************************************************************************
#                             This file is part of
#                                   Centrix
# ******************************************************************************
# Copyright (c) 2024-present University of Cabuyao
# 
# Developers
# Shannja Ashley Malelang
# Miccael Jasper Tayas
# Jhovic Cortel
#
# Adviser
# Paulo Edrozo
# ******************************************************************************

extends CharacterBody2D

# NODES ************************************************************************
@onready var _texture: AnimatedSprite2D = get_node("texture")

# ITEMS ************************************************************************
var item_number: int = 0
var item_name: String = ""

var _item_name_collection: Array = [
	"Oxygen Generator Module",
	"Water Purification System",
	"Soil Enrichment Formula",
	"Sunlight Amplification Panels",
	"Shelter Construction Blueprints",
	"Medicinal Plant Samples",
	"Waste Recycling System",
	"Portable Power Generators",
	"Flora Seeds Bank",
	"Anti-pollution Filters",
	"Emergency Food Rations",
	"Seismic Activity Monitoring Tools",
	"Hydroponic Farming Equipment",
	"Emergency Wildfire Prevention Measures",
	"Erosion Prevention Measures",
	"Desertification Prevention Measures",
	"Avalanche Prevention Measures",
	"Climate Control Device",
	"Geothermal Energy Converter",
	"Communication Relay Stations",
	"Atmospheric Stabilizer",
	"Remote Sensing Satellites",
	"Emergency Seed Bank Vaults",
	"Invasive Species Control Measures",
	"Algal Bloom Countermeasures",
	"Glacier Preservation Measures",
	"Deforestation Countermeasures",
	"Coastal Erosion Control Measures",
	"Energy-efficient Lighting System",
	"Weather Prediction Software",
	"Emergency Medical Supplies",
	"Sustainable Medical Facilities",
	"Renewable Energy Transmission Lines",
	"Microbial Soil Enhancers",
	"Emergency Beacon Transmitters",
	"Atmospheric Moisture Collectors",
	"Water Reservoir Construction Materials",
	"Adaptive Plant Genetic Modifications",
	"Ecosystem Simulation Software",
	"Wildlife Habitat Restoration Tools",
	"Shelter and Transportation Kits",
	"Fire Suppression Systems",
	"Crop Storage Facilities",
	"Tsunami Early Warning Systems",
	"Earthquake Resistant Buildings",
	"Biodiversity Conservation Plans",
	"Tornado Shelter Construction Kits",
	"Seed Germination Accelerators",
	"Land Reclamation Machinery",
	"Coral Reef Restoration Kits",
	"Renewable Energy Storage Batteries",
	"Plant Adaptation Research Data",
	"Energy Infrastructure Blueprints",
	"Emergency Fish Hatcheries",
	"Emergency Volcanic Eruption Monitoring",
	"Emergency Hydroponic Cultivation Chambers",
	"Emergency Fungal Infection Treatments",
	"Soil pH Stabilizers",
	"Sustainable Fishing Equipment",
	"Emergency Water Extraction Pumps",
	"Nuclear Contamination Remediation",
	"Emergency Oil Spill Cleanup Equipment",
	"Radiation Shielding Materials",
	"Emergency Air Filtration Masks",
	"Solar Reflective Shields",
	"Fauna DNA Database",
	"Nutrient-rich Fertilizer",
	"Portable Weather Monitoring Stations",
	"Aquatic Species Reintroduction Methods",
	"Emergency Salinity Control Systems",
	"Emergency Airlock Systems",
	"Climate Change Mitigation Strategies",
	"Seawall Construction Materials",
	"Emergency Oxygen Supply Tanks",
	"Pest-Resistant Crop Strains",
	"Medicinal Herb Cultivation Kits",
	"Renewable Energy Conversion Devices",
	"Irrigation Network Components",
	"Emergency Evacuation Vehicles",
	"Geological Survey Equipment",
	"Plant Growth Accelerant",
	"Wildlife Tracking Devices",
	"Soil Analysis Kits",
	"Air Filtration Units",
	"Emergency Power Grid Components",
	"Emergency Waste Disposal Units",
	"Wildlife Migration Corridor Maps",
	"Remote Environmental Stations",
	"Habitat Expansion Modules",
	"Aquatic Ecosystem Restoration Kits",
	"Wildlife Preservation Enclosures",
	"Biodiversity Preservation Plans",
	"Advanced Crop Cultivation Guides",
	"Soil Erosion Control Mesh",
	"Pest Control Solutions",
	"Freshwater Fish Repopulation Items",
	"Underground Shelter Construction Plans",
	"Freshwater Reservoir Expansion Plans",
	"Marine Debris Cleanup Equipment",
	"Mangrove Reforestation Initiatives",
	"Unknown Item(?)... Vital Signs Detected?."
]

# CUSTOM ***********************************************************************
func set_item(_item_num: int) -> void:
	_texture.set_frame(_item_num)
	item_number = _item_num
	item_name = _item_name_collection[_item_num]
 
func recover() -> int:
	queue_free()
	return item_number
