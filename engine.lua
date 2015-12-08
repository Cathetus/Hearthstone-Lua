#!/bin/lua

--Set randomseed.
math.randomseed(os.time())

--Load the cards.
require('cardlist')

--Clear the board.
player1_class = nil
player1_hp = 30
player1_heropower = nil
player1_weapon = nil
player1_deck = {}
player1_hand = {}
player1_field = {}
player1_discard = {}

player2_class = nil
player2_hp = 30
player2_heropower = nil
player2_weapon = nil
player2_deck = {}
player2_hand = {}
player2_field = {}
player2_discard = {}

game_over = false
mana_state = 1

--Create a minion.
function create_minion(name, mana, attack, health, field)
	local minion = {}
	minion["name"] = name
	minion["mana"] = mana
	minion["attack"] = attack
	minion["health"] = health
	table.insert(field, minion)
end

--Gamestart

--Toss coin

--Keep or replace

--Check if game is over.
function gameover()
	if player1_hp <= 0 or player2_hp <= 0 then
		game_over = true
	end
end
