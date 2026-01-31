-- Author: TJ

vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Exit terminal mode" })

local state = {
  floating = {
    buf = -1,
    win = -1,
  }
}

local function create_floating_window(opts)
  opts = opts or {}
  local width = opts.width or math.floor(vim.o.columns * 0.8)
  local height = opts.height or math.floor(vim.o.lines * 0.8)

  -- Calculate the position to center the window
  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines - height) / 2)

  -- Create a buffer
  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true) -- No file, scratch buffer
  end

  -- Define window configuration
  local win_config = {
    relative = "editor",
    width = width,
    height = height,
    col = col,
    row = row,
    style = "minimal", -- No borders or extra UI elements
    border = "rounded",
  }

  -- Create the floating window
  local win = vim.api.nvim_open_win(buf, true, win_config)

  return { buf = buf, win = win }
end

local toggle_terminal = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window { buf = state.floating.buf }
    if vim.bo[state.floating.buf].buftype ~= "terminal" then
      vim.cmd.terminal()
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

local send_to_floaterm = function(text)
  local term_buf = state.floating.buf
  if not term_buf or not vim.api.nvim_buf_is_valid(term_buf) then
    return
  end

  local job_id = vim.b[term_buf].terminal_job_id
  if not job_id then
    return
  end

  vim.api.nvim_chan_send(job_id, text .. "\n")
end

local send_visual_to_floaterm = function()
  local _, ls, cs = unpack(vim.fn.getpos("'<"))
  local _, le, ce = unpack(vim.fn.getpos("'>"))
  local lines = vim.api.nvim_buf_get_lines(0, ls - 1, le, false)
  if #lines == 0 then
    return
  end
  lines[#lines] = lines[#lines]:sub(1, ce)
  lines[1] = lines[1]:sub(cs)
  send_to_floaterm(table.concat(lines, "\n"))
end

-- Example usage:
-- Create a floating window with default dimensions
vim.api.nvim_create_user_command("Floaterminal", toggle_terminal, {})

vim.keymap.set("v", "<leader>ts", send_visual_to_floaterm, { desc = "Send selection to floaterm" })
vim.keymap.set("n", "<leader>tl", function()
  send_to_floaterm(vim.api.nvim_get_current_line())
end, { desc = "Send line to floaterm" })
