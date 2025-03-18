local UPGRADES = {}

-- оставить округление только для вывода в интерфейс, внутри более точные числа

UPGRADES.global_score = 1000
UPGRADES.score_to_add = 0
UPGRADES.delay_to_global_timer = 1
UPGRADES.global_score_timer = nil
-- UPGRADES.message_for_update_score = hash('udate_score')

UPGRADES.upgrades = {
	['forest'] = {
		['upgrade_1'] = {name = 'click', level = 1, base_cost = 15, base_income = 0.1, current_points_to_add = 0, current_cost = 0},
		['upgrade_2'] = {name = 'apprentice', level = 0, base_cost = 100, base_income = 0.5, current_points_to_add = 0, current_cost = 0},
		['upgrade_3'] = {name = 'student', level = 0, base_cost = 500, base_income = 4, current_points_to_add = 0, current_cost = 0},
		['upgrade_4'] = {name = 'master', level = 0, base_cost = 3000, base_income = 10, current_points_to_add = 0, current_cost = 0},
		['upgrade_5'] = {name = 'artel', level = 0, base_cost = 10000, base_income = 40, current_points_to_add = 0, current_cost = 0},
		['upgrade_6'] = {name = 'manufactory', level = 0, base_cost = 40000, base_income = 100, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_7'] = {name = 'factory', level = 0, base_cost = 200000, base_income = 400, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_8'] = {name = 'crit', level = 0, base_cost = 1666666, base_income = 6,666, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_9'] = {name = 'crit_chance', level = 0, base_cost = 123456789, base_income = 98765, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_counter'] = 9
	}, 
	['forge'] = {
		['upgrade_1'] = {name = 'click', level = 2, base_cost = 15, base_income = 0.1, current_points_to_add = 0, current_cost = 0},
		['upgrade_2'] = {name = 'apprentice', level = 0, base_cost = 100, base_income = 0.5, current_points_to_add = 0, current_cost = 0},
		['upgrade_3'] = {name = 'student', level = 0, base_cost = 500, base_income = 4, current_points_to_add = 0, current_cost = 0},
		['upgrade_4'] = {name = 'master', level = 0, base_cost = 3000, base_income = 10, current_points_to_add = 0, current_cost = 0},
		['upgrade_5'] = {name = 'artel', level = 0, base_cost = 10000, base_income = 40, current_points_to_add = 0, current_cost = 0},
		['upgrade_6'] = {name = 'manufactory', level = 0, base_cost = 40000, base_income = 100, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_7'] = {name = 'factory', level = 0, base_cost = 200000, base_income = 400, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_8'] = {name = 'crit', level = 0, base_cost = 1666666, base_income = 6,666, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_9'] = {name = 'crit_chance', level = 0, base_cost = 123456789, base_income = 98765, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_counter'] = 9
	}, 
	['magical_shop'] = {
		['upgrade_1'] = {name = 'click', level = 3, base_cost = 15, base_income = 0.1, current_points_to_add = 0, current_cost = 0},
		['upgrade_2'] = {name = 'apprentice', level = 0, base_cost = 100, base_income = 0.5, current_points_to_add = 0, current_cost = 0},
		['upgrade_3'] = {name = 'student', level = 0, base_cost = 500, base_income = 4, current_points_to_add = 0, current_cost = 0},
		['upgrade_4'] = {name = 'master', level = 0, base_cost = 3000, base_income = 10, current_points_to_add = 0, current_cost = 0},
		['upgrade_5'] = {name = 'artel', level = 0, base_cost = 10000, base_income = 40, current_points_to_add = 0, current_cost = 0},
		['upgrade_6'] = {name = 'manufactory', level = 0, base_cost = 40000, base_income = 100, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_7'] = {name = 'factory', level = 0, base_cost = 200000, base_income = 400, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_8'] = {name = 'crit', level = 0, base_cost = 1666666, base_income = 6,666, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_9'] = {name = 'crit_chance', level = 0, base_cost = 123456789, base_income = 98765, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_counter'] = 9
	}, 
	['ascension'] = {
		['upgrade_1'] = {name = 'click', level = 0, base_cost = 15, base_income = 0.1, current_points_to_add = 0, current_cost = 0},
		['upgrade_2'] = {name = 'apprentice', level = 0, base_cost = 100, base_income = 0.5, current_points_to_add = 0, current_cost = 0},
		['upgrade_3'] = {name = 'student', level = 0, base_cost = 500, base_income = 4, current_points_to_add = 0, current_cost = 0},
		['upgrade_4'] = {name = 'master', level = 0, base_cost = 3000, base_income = 10, current_points_to_add = 0, current_cost = 0},
		['upgrade_5'] = {name = 'artel', level = 0, base_cost = 10000, base_income = 40, current_points_to_add = 0, current_cost = 0},
		['upgrade_6'] = {name = 'manufactory', level = 0, base_cost = 40000, base_income = 100, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_7'] = {name = 'factory', level = 0, base_cost = 200000, base_income = 400, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_8'] = {name = 'crit', level = 0, base_cost = 1666666, base_income = 6,666, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_9'] = {name = 'crit_chance', level = 0, base_cost = 123456789, base_income = 98765, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_counter'] = 9
	}, 
	['max_levels'] = {buildings = 25, ascension = 5}
}

-- 
UPGRADES.opened_menu = {['forest'] = false, ['forge'] = false, ['magical_shop'] = false, ['ascension'] = false}

UPGRADES.multipliers = {cost = 1.15, income = 1.07}

-- done
function UPGRADES.round_score(number_to_round, number_after_dot)
	local mul = math.pow(10, number_after_dot)
	local temp_score = math.floor(number_to_round * mul + 0.5) / mul
	return temp_score
end

--done
function UPGRADES.add_score(score)
	local temp_score = UPGRADES.global_score + UPGRADES.score_to_add
	UPGRADES.global_score = UPGRADES.round_score(temp_score, 2)
end

-- done
function UPGRADES.GetScore(numbers_after_dot)
	return UPGRADES.round_score(UPGRADES.global_score, numbers_after_dot)
end

function UPGRADES.GetCurrentIncome(numbers_after_dot)
	return UPGRADES.round_score(UPGRADES.score_to_add, numbers_after_dot)
end

-- done
function UPGRADES.start_global_score_timer()
	UPGRADES.global_score_timer = timer.delay(UPGRADES.delay_to_global_timer, true, UPGRADES.add_score)
end

-- done
function UPGRADES.update_score_to_add()
	local temp_score = 0
	for k, _ in pairs(UPGRADES.upgrades) do
		if k ~= 'max_levels' then
			for i = 1, 9 do
				temp_score = temp_score + UPGRADES.upgrades[k]['upgrade_' .. i].current_points_to_add
			end
		end
	end
	UPGRADES.score_to_add = UPGRADES.round_score(temp_score, 2)
end

function UPGRADES.calculate_start_data()
	for k, _ in pairs(UPGRADES.upgrades) do
		if k ~= 'max_levels' then
			for i = 1, UPGRADES.upgrades[k]['upgrade_counter'] do
				local upgrade_name = 'upgrade_' .. i
				if UPGRADES.upgrades[k][upgrade_name].level > 0 then
					UPGRADES.upgrades[k][upgrade_name].current_points_to_add = UPGRADES.upgrades[k][upgrade_name].base_income * UPGRADES.upgrades[k][upgrade_name].level
					UPGRADES.score_to_add = UPGRADES.score_to_add + UPGRADES.upgrades[k][upgrade_name].current_points_to_add
				end
				if UPGRADES.upgrades[k][upgrade_name].level == 0 then
					UPGRADES.upgrades[k][upgrade_name].current_cost = UPGRADES.upgrades[k][upgrade_name].base_cost
				elseif UPGRADES.upgrades[k][upgrade_name].level >= 1 then
					UPGRADES.upgrades[k][upgrade_name].current_cost = UPGRADES.upgrades[k][upgrade_name].base_cost * (UPGRADES.multipliers.cost ^ (UPGRADES.upgrades[k][upgrade_name].level + 1))
				end
			end
		end
	end
	UPGRADES.start_global_score_timer()
end

function UPGRADES.calculate_score_to_add(bulding_name, upgrade_name)
	UPGRADES.upgrades[bulding_name][upgrade_name].level = UPGRADES.upgrades[bulding_name][upgrade_name].level + 1
	UPGRADES.upgrades[bulding_name][upgrade_name].current_points_to_add = UPGRADES.upgrades[bulding_name][upgrade_name].base_income * UPGRADES.upgrades[bulding_name][upgrade_name].level
	local temp_price = UPGRADES.upgrades[bulding_name][upgrade_name].base_cost * (UPGRADES.multipliers.cost ^ (UPGRADES.upgrades[bulding_name][upgrade_name].level + 1))
	UPGRADES.upgrades[bulding_name][upgrade_name].current_cost = UPGRADES.round_score(temp_price, 2)
	UPGRADES.update_score_to_add()
end

function UPGRADES.get_upgrades_button_data(shop_name)
	return UPGRADES.upgrades[shop_name]
end

return UPGRADES