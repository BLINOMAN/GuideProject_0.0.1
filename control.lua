script.on_init(function()
    global.players = {}
end)

is_gui_opened = false

script.on_event("my-custom-input", function(event)
    if is_gui_opened == false then
        local player = game.get_player(event.player_index)
        global.players[player.index] = { controls_active = true }

        local screen_element = player.gui.screen
        local main_frame = screen_element.add { type = "frame", name = "main_frame", caption = { "titles.title" } }
        main_frame.style.size = { 385, 385 }
        main_frame.auto_center = true

        local content_frame = main_frame.add { type = "frame", name = "content_frame", direction = "vertical", style = "content_frame" }

        local controls_flow = content_frame.add { type = "flow", name = "controls_flow", direction = "vertical", style = "controls_flow" }
        controls_flow.add { type = "button", name = "guide_button", caption = { "conditions.deactivated" } }
        is_gui_opened = true
    else
        local player = game.get_player(event.player_index)
        player.gui.screen.main_frame.destroy()
        is_gui_opened = false
    end

end)

script.on_event(defines.events.on_gui_click, function(event)
    if event.element.name == "guide_button" then
        local player_global = global.players[event.player_index]
        player_global.controls_active = not player_global.controls_active
        local control_toggle = event.element
        control_toggle.caption = (player_global.controls_active) and { "conditions.deactivated" } or { "conditions.activated" }
    end
end)
