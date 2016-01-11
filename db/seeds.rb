# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

games = [
	{
		name: "Tron",
		link: "http://www.8bit.com/everything/do-not-hotlink/trongame.swf"
	},
	{
		name: "Donkey Kong", 
		link: "http://www.8bit.com/everything/do-not-hotlink/donkeykong.swf"
	},
	{
		name: "Frogger",
		link: "http://www.8bit.com/everything/do-not-hotlink/frogger.swf"
	},
	{
		name: "PacManIsh", 
		link: "http://www.8bit.com/everything/do-not-hotlink/pacxon.swf"
	},
	{
		name: "Super Mario World", 
		link: "http://www.8bit.com/everything/do-not-hotlink/supermarioworld.swf"
	},
	{
		name: "Space Invaders", 
		link: "http://www.8bit.com/everything/do-not-hotlink/spaceinvaders.swf"
	},
	{
		name: "Duck Hunt", 
		link: "http://www.8bit.com/everything/do-not-hotlink/duckhunt.swf"
	}
]

games.each{ |game| Game.create(game) }

