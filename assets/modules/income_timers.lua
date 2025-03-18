local INCOMES = {}

-- оставить округление только для вывода в интерфейс, внутри более точные числа

INCOMES.global_score = 0
INCOMES.score_to_add = 0
INCOMES.delay_to_global_timer = 1
INCOMES.global_score_timer = nil
-- INCOMES.message_for_update_score = hash('udate_score')

-- INCOMES.upgrades = {
-- 	['upgrade_1'] = {name = 'Донат', level = 0, base_cost = 15, base_income = 0.1, current_points_to_add = 0, current_cost = 15}, 
-- 	['upgrade_2'] = {name = 'Фолловер', level = 0, base_cost = 100, base_income = 0.5, current_points_to_add = 0, current_cost = 100}, 
-- 	['upgrade_3'] = {name = 'Подордынец', level = 0, base_cost = 500, base_income = 4, current_points_to_add = 0, current_cost = 500}, 
-- 	['upgrade_4'] = {name = 'Ордынник', level = 0, base_cost = 3000, base_income = 10, current_points_to_add = 0, current_cost = 3000}, 
-- 	['upgrade_5'] = {name = 'Нукер', level = 0, base_cost = 10000, base_income = 40, current_points_to_add = 0, current_cost = 10000}, 
-- 	['upgrade_6'] = {name = 'Багатур', level = 0, base_cost = 40000, base_income = 100, current_points_to_add = 0, current_cost = 40000}, 
-- 	['upgrade_7'] = {name = 'Нойон', level = 0, base_cost = 200000, base_income = 400, current_points_to_add = 0, current_cost = 200000}, 
-- 	['upgrade_counter'] = 7
-- }

INCOMES.upgrades = {
	['forest'] = {
		['upgrade_1'] = {name = 'click', level = 1, base_cost = 15, base_income = 0.1, current_points_to_add = 0, current_cost = 0},
		['upgrade_2'] = {name = 'apprentice', level = 0, base_cost = 100, base_income = 0.5, current_points_to_add = 0, current_cost = 0},
		['upgrade_3'] = {name = 'student', level = 0, base_cost = 500, base_income = 4, current_points_to_add = 0, current_cost = 0},
		['upgrade_4'] = {name = 'master', level = 0, base_cost = 3000, base_income = 10, current_points_to_add = 0, current_cost = 0},
		['upgrade_5'] = {name = 'artel', level = 0, base_cost = 10000, base_income = 40, current_points_to_add = 0, current_cost = 0},
		['upgrade_6'] = {name = 'manufactory', level = 0, base_cost = 40000, base_income = 100, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_counter'] = 6
	}, 
	['forge'] = {
		['upgrade_1'] = {name = 'click', level = 1, base_cost = 15, base_income = 0.1, current_points_to_add = 0, current_cost = 0},
		['upgrade_2'] = {name = 'apprentice', level = 0, base_cost = 100, base_income = 0.5, current_points_to_add = 0, current_cost = 0},
		['upgrade_3'] = {name = 'student', level = 0, base_cost = 500, base_income = 4, current_points_to_add = 0, current_cost = 0},
		['upgrade_4'] = {name = 'master', level = 0, base_cost = 3000, base_income = 10, current_points_to_add = 0, current_cost = 0},
		['upgrade_5'] = {name = 'artel', level = 0, base_cost = 10000, base_income = 40, current_points_to_add = 0, current_cost = 0},
		['upgrade_6'] = {name = 'manufactory', level = 0, base_cost = 40000, base_income = 100, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_counter'] = 6
	}, 
	['magical_shop'] = {
		['upgrade_1'] = {name = 'click', level = 1, base_cost = 15, base_income = 0.1, current_points_to_add = 0, current_cost = 0},
		['upgrade_2'] = {name = 'apprentice', level = 0, base_cost = 100, base_income = 0.5, current_points_to_add = 0, current_cost = 0},
		['upgrade_3'] = {name = 'student', level = 0, base_cost = 500, base_income = 4, current_points_to_add = 0, current_cost = 0},
		['upgrade_4'] = {name = 'master', level = 0, base_cost = 3000, base_income = 10, current_points_to_add = 0, current_cost = 0},
		['upgrade_5'] = {name = 'artel', level = 0, base_cost = 10000, base_income = 40, current_points_to_add = 0, current_cost = 0},
		['upgrade_6'] = {name = 'manufactory', level = 0, base_cost = 40000, base_income = 100, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_counter'] = 6
	}, 
	['ascension'] = {
		['upgrade_1'] = {name = 'click', level = 1, base_cost = 15, base_income = 0.1, current_points_to_add = 0, current_cost = 0},
		['upgrade_2'] = {name = 'apprentice', level = 0, base_cost = 100, base_income = 0.5, current_points_to_add = 0, current_cost = 0},
		['upgrade_3'] = {name = 'student', level = 0, base_cost = 500, base_income = 4, current_points_to_add = 0, current_cost = 0},
		['upgrade_4'] = {name = 'master', level = 0, base_cost = 3000, base_income = 10, current_points_to_add = 0, current_cost = 0},
		['upgrade_5'] = {name = 'artel', level = 0, base_cost = 10000, base_income = 40, current_points_to_add = 0, current_cost = 0},
		['upgrade_6'] = {name = 'manufactory', level = 0, base_cost = 40000, base_income = 100, current_points_to_add = 0, current_cost = 0}, 
		['upgrade_counter'] = 6
	}, 
	['max_levels'] = {buildings = 25, ascencion = 5}
}

INCOMES.multipliers = {cost = 1.15, income = 1.07}

function INCOMES.round_score(number_to_round, number_after_dot)
	-- done
	local mul = math.pow(10, number_after_dot)
	local temp_score = math.floor(number_to_round * mul + 0.5) / mul
	return temp_score
end

function INCOMES.add_score(score)
	--done
	local temp_score = INCOMES.global_score + INCOMES.score_to_add
	INCOMES.global_score = INCOMES.round_score(temp_score, 4)
end

function INCOMES.GetScore(numbers_after_dot)
	-- done
	return INCOMES.round_score(INCOMES.global_score, numbers_after_dot)
end

function INCOMES.start_global_score_timer()
	-- done
	INCOMES.global_score_timer = timer.delay(INCOMES.delay_to_global_timer, true, INCOMES.add_score)
end

function INCOMES.update_score_to_add()
	-- done
	local temp_score = 0
	for i = 1, #INCOMES.upgrades do
		for j = 1 , #INCOMES.upgrades[i] do
			temp_score = temp_score + INCOMES.upgrades[i][j].current_points_to_add
		end
	end
	INCOMES.score_to_add = INCOMES.round_score(temp_score, 2)
end

function INCOMES.calculate_start_data()
	for i = 1, INCOMES.upgrades['upgrade_counter'] do
		local upgrade_name = 'upgrade_' .. i
		if INCOMES.upgrades[upgrade_name].level > 0 then
			INCOMES.upgrades[upgrade_name].current_points_to_add = INCOMES.upgrades[upgrade_name].base_income * INCOMES.upgrades[upgrade_name].level
			INCOMES.update_score_to_add()
		end
	end
	INCOMES.start_global_score_timer()
end

function INCOMES.calculate_score_to_add(upgrade_name)
	INCOMES.upgrades[upgrade_name].level = INCOMES.upgrades[upgrade_name].level + 1
	INCOMES.upgrades[upgrade_name].current_points_to_add = INCOMES.upgrades[upgrade_name].base_income * INCOMES.upgrades[upgrade_name].level
	local temp_price = INCOMES.upgrades[upgrade_name].base_cost * INCOMES.multipliers.cost ^ (INCOMES.upgrades[upgrade_name].level + 1)
	INCOMES.upgrades[upgrade_name].current_cost = INCOMES.round_score(temp_price, 0)
	INCOMES.update_score_to_add()


	-- INCOMES.upgrades[bulding_name][upgrade_number].level = 
end

return INCOMES