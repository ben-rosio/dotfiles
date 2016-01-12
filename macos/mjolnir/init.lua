local grid = require "mjolnir.sd.grid"
local window = require "mjolnir.window"
local hotkey = require "mjolnir.hotkey"

grid.MARGINX = 0
grid.MARGINY = 0
grid.GRIDWIDTH = 2
grid.GRIDHEIGHT = 2

-- a helper function that returns another function that resizes the current window
-- to a certain grid size.
local gridset = function(x, y, w, h)
    return function()
        cur_window = window.focusedwindow()
        grid.set(
            cur_window,
            {x=x, y=y, w=w, h=h},
            cur_window:screen()
        )
    end
end

local mash = {"cmd", "alt"}
hotkey.bind(mash, 'n', grid.pushwindow_nextscreen)
hotkey.bind(mash, 'left', gridset(0, 0, 1, 2)) -- left half
hotkey.bind(mash, 'up', grid.maximize_window)
hotkey.bind(mash, 'right', gridset(1, 0, 1, 2)) -- right half
