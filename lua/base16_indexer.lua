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
