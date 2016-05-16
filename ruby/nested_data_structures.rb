bond_movies = {
	dr_no: {
		actor: "Sean Connery",
		bond_girl: "Honey Rider",
		villan: "Dr. No",
		production: {
			director: "Terence Young",
			producer: "Albert R. Broccoli",
			},
		locations: [
			"Jamaica"],
		},

	goldfinger: {
		actor: "Sean Connery",
		bond_girl: "Pussy Galore",
		villan: "Goldfinger",
		production: {
			director: "Guy Hamilton",
			producer: "Harry Saltzman",
		},
		locations: [
			"Latin America",
			"London",
			"Miami",
			"Airplane",
			"Fort Knox"],
	},

	moonraker: {
		actor: "Roger Moore",
		bond_girl: "Holly Goodhead",
		villan: "Hugo Drax",
		production: {
			director: "Lewis Gilbert",
			producer: "Albert R. Broccoli",
		},
		locations: [
			"England",
			"California",
			"Venice",
			"Rio de Janiero",
			"Space Station",
			],
	},

	living_daylights: {
		actor: "Timothy Dalton",
		bond_girl: "Kara Milovy",
		villan: "General Georgi Koskov",
		production: {
			director: "John Glen",
			producer: "Michael G. Wilson",
		},
		locations: [
			"Bratislava",
			"Tangier",
			"Vienna",
			"Afghanistan",
			"London"],
	} ,

	goldeneye: {
		actor: "Pierce Brosnan",
		bond_girl: "Natalya Simonova",
		villan: "Alec Trevelyan (006)",
		production: {
			director: "Martin Campbell",
			producer: "Barbara Broccoli",
		},
		locations: [
			"Arkhangelsk",
			"Monte Carlo",
			"Severnaya",
			"London",
			"St. Petersburg",
			"Cuba"],
	},

	skyfall: {
		actor: "Daniel Craig",
		bond_girl: "Eve Moneypeny",
		villan: "Raoul Silva",
		production: {
			director: "Sam Mendes",
			producer: "Michael G. Wilson",
		},
		locations: [
			"Istanbul",
			"London",
			"Shanghai",
			"Macau",
			"Scotland"],
	}
}

p bond_movies[:goldeneye][:actor]
p bond_movies[:moonraker][:villan]
p bond_movies[:goldfinger][:production][:director]
p bond_movies[:skyfall][:locations][3]
bond_movies[:goldfinger][:locations].delete("Airplane")
bond_movies[:goldfinger][:locations].push("Private Jet")
p bond_movies[:goldfinger][:locations]
p bond_movies[:living_daylights][:locations].reverse!
p bond_movies[:dr_no][:production][:producer].upcase
