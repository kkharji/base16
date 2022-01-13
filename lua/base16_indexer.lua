-- local cterm = {
--   ["00"] = "00",
--   ["03"] = "08",
--   ["05"] = "07",
--   ["07"] = "15",
--   ["08"] = "01",
--   ["0A"] = "03",
--   ["0B"] = "02",
--   ["0C"] = "06",
--   ["0D"] = "04",
--   ["0E"] = "05",
-- }

-- -- Terminal color definitions
-- if vim.g.base16_no_256_colorspace == nil then
--   cterm["01"] = "18"
--   cterm["02"] = "19"
--   cterm["04"] = "20"
--   cterm["06"] = "21"
--   cterm["09"] = "16"
--   cterm["0F"] = "17"
-- else
--   cterm["01"] = "10"
--   cterm["02"] = "11"
--   cterm["04"] = "12"
--   cterm["06"] = "13"
--   cterm["09"] = "09"
--   cterm["0F"] = "14"
-- end
local cache
local current_theme

return function(theme)
  if current_theme == theme then
    return cache
  end
  current_theme = theme

  cache = setmetatable({
    LINK = setmetatable({}, {
      __newindex = function(_, from, to)
        vim.cmd(("highlight default link %s %s"):format(from, to))
      end,
    }),
  }, {
    __newindex = function(_, group, v)
      local command = ""

      if v.fg then
        if not v.cterm then
          command = command .. " guifg=#" .. (theme[v.fg] or "NONE")
        end
        -- if not v.gui then
        --   command = command .. " ctermbg=" .. (cterm[v.fg] or "NONE")
        -- end
      end

      if v.bg then
        if not v.cterm then
          command = command .. " guibg=#" .. (theme[v.bg] or "NONE")
        end
        -- if not v.gui then
        --   command = command .. " ctermbg=" .. (cterm[v.bg] or "NONE")
        -- end
      end

      command = v.attr and (command .. " gui=" .. v.attr .. " cterm=" .. v.attr) or command
      command = v.sp and (command .. " guisp=#" .. v.sp) or command

      if command ~= "" then
        vim.cmd("highlight " .. group .. command)
      end
    end,
  })
  return cache
end
