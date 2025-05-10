return {
	out_write = function(str)
		if vim.fn.has("nvim-0.11") == 1 then
			vim.api.nvim_echo({ { str } }, true, {})
		else
			---@diagnostic disable-next-line: deprecated
			vim.api.nvim_out_write(str)
		end
	end,

	flatten_table = function(table)
		if vim.fn.has("nvim-0.11") == 1 then
			return vim.iter(table):flatten():totable()
		else
			---@diagnostic disable-next-line: deprecated
			return vim.tbl_flatten(table)
		end
	end,

	get_option = function(option)
		if vim.fn.has("nvim-0.10") == 1 then
			return vim.api.nvim_get_option_value(option, {})
		else
			---@diagnostic disable-next-line: deprecated
			return vim.api.nvim_get_option(option)
		end
	end,

	set_option = function(option, value)
		if vim.fn.has("nvim-0.10") == 1 then
			return vim.api.nvim_set_option_value(option, value, {})
		else
			---@diagnostic disable-next-line: deprecated
			return vim.api.nvim_set_option(option, value)
		end
	end,

	buf_get_option = function(buf_nr, option)
		if vim.fn.has("nvim-0.10") == 1 then
			return vim.api.nvim_get_option_value(option, { buf = buf_nr })
		else
			---@diagnostic disable-next-line: deprecated
			return vim.api.nvim_buf_get_option(buf_nr, option)
		end
	end,

	buf_set_option = function(buf_nr, option, value)
		if vim.fn.has("nvim-0.10") == 1 then
			return vim.api.nvim_set_option_value(option, value, { buf = buf_nr })
		else
			---@diagnostic disable-next-line: deprecated
			return vim.api.nvim_buf_set_option(buf_nr, option, value)
		end
	end,

	win_get_option = function(win_nr, option)
		if vim.fn.has("nvim-0.10") == 1 then
			return vim.api.nvim_get_option_value(option, { win = win_nr })
		else
			---@diagnostic disable-next-line: deprecated
			return vim.api.nvim_win_get_option(win_nr, option)
		end
	end,

	win_set_option = function(win_nr, option, value)
		if vim.fn.has("nvim-0.10") == 1 then
			return vim.api.nvim_set_option_value(option, value, { win = win_nr })
		else
			---@diagnostic disable-next-line: deprecated
			return vim.api.nvim_win_set_option(win_nr, option, value)
		end
	end,
}
