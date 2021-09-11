local cterm = {
  ["00"] = "00",
  ["03"] = "08",
  ["05"] = "07",
  ["07"] = "15",
  ["08"] = "01",
  ["0A"] = "03",
  ["0B"] = "02",
  ["0C"] = "06",
  ["0D"] = "04",
  ["0E"] = "05",
}

-- Terminal color definitions
if vim.g.base16_no_256_colorspace == nil then
  cterm["01"] = "18"
  cterm["02"] = "19"
  cterm["04"] = "20"
  cterm["06"] = "21"
  cterm["09"] = "16"
  cterm["0F"] = "17"
else
  cterm["01"] = "10"
  cterm["02"] = "11"
  cterm["04"] = "12"
  cterm["06"] = "13"
  cterm["09"] = "09"
  cterm["0F"] = "14"
end

-- local script_path = function()
--   local str = debug.getinfo(2, "S").source:sub(2)
--   return str:match "(.*/)"
-- end
-- ins(debug.getinfo(1))

return function(slug, theme)
  local hi = {}
  hi.lines = { "highlight clear", "syntax reset" }
  hi.slug = slug

  hi.LINK = setmetatable({}, {
    __newindex = function(_, higroup, link_to)
      -- vim.cmd(("highlight default link %s %s"):format(higroup, link_to))
    end,
  })

  local insert_hl = function(self, group, v)
    local command = ""

    if v.fg then
      if not v.cterm then
        command = command .. " guifg=#" .. theme[v.fg]
      end
      if not v.gui then
        command = command .. " ctermbg=" .. cterm[v.fg]
      end
    end

    if v.bg then
      if not v.cterm then
        command = command .. " guibg=#" .. theme[v.bg]
      end
      if not v.gui then
        command = command .. " ctermbg=" .. cterm[v.bg]
      end
    end

    command = v.attr and (command .. " gui=" .. v.attr .. " cterm=" .. v.attr) or command
    command = v.sp and (command .. " guisp=#" .. v.sp) or command

    if command ~= "" then
      vim.cmd("highlight " .. group .. command)
    end
  end

  hi.apply = function()
    -- vim.cmd(table.concat(hi.lines, "\n"))
  end

  -- Neovim terminal colours
  vim.g.terminal_color_0 = "#" .. theme["00"]
  vim.g.terminal_color_1 = "#" .. theme["08"]
  vim.g.terminal_color_2 = "#" .. theme["0B"]
  vim.g.terminal_color_3 = "#" .. theme["0A"]
  vim.g.terminal_color_4 = "#" .. theme["0D"]
  vim.g.terminal_color_5 = "#" .. theme["0E"]
  vim.g.terminal_color_6 = "#" .. theme["0C"]
  vim.g.terminal_color_7 = "#" .. theme["05"]
  vim.g.terminal_color_8 = "#" .. theme["03"]
  vim.g.terminal_color_9 = "#" .. theme["08"]
  vim.g.terminal_color_10 = "#" .. theme["0B"]
  vim.g.terminal_color_11 = "#" .. theme["0A"]
  vim.g.terminal_color_12 = "#" .. theme["0D"]
  vim.g.terminal_color_13 = "#" .. theme["0E"]
  vim.g.terminal_color_14 = "#" .. theme["0C"]
  vim.g.terminal_color_15 = "#" .. theme["07"]

  if vim.o.background == "light" then
    vim.g.terminal_color_background = "#" .. theme["05"]
    vim.g.terminal_color_foreground = "#" .. theme["0B"]
  else
    vim.g.terminal_color_background = "#" .. theme["00"]
    vim.g.terminal_color_foreground = "#" .. theme["0E"]
  end

  return setmetatable(hi, { __newindex = insert_hl })
end
