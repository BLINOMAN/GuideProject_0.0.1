script.on_init(function()
    global.players = {}
end)
script.on_event(defines.events.on_player_created, function(event)
    local player = game.get_player(event.player_index)
    global.players[player.index] = { controls_active = true }
    
    local screen_element = player.gui.screen
    local main_frame = screen_element.add { type = "frame", name = "main_frame", caption = { "titles.title" } }
    main_frame.style.size = { 385, 385 }
    main_frame.auto_center = true

    local content_frame = main_frame.add { type = "frame", name = "content_frame", direction = "vertical", style = "content_frame" }

    local controls_flow = content_frame.add { type = "flow", name = "controls_flow", direction = "horizontal", style = "controls_flow"}
    controls_flow.add { type = "button", name = "guide_button", caption = { "conditions.deactivated" } }
end)

script.on_event(defines.events.on_gui_click, function(event)
    if event.element.name == "my-custom-input" then
        local player_global = global.players[event.player_index]
        player_global.controls_active = not player_global.controls_active
        local control_toggle = event.element
        control_toggle.caption = (player_global.controls_active) and {"conditios.deactivated"} or {"coditios.activated"}
end)

