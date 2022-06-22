script.on_init(function()
    global.players = {}
end)

is_gui_opened = false

script.on_event("my-custom-input", function(event)
    if is_gui_opened == false then
        local player = game.get_player(event.player_index)
        global.players[player.index] = { controls_active = true }
--#region
        local screen_element = player.gui.screen
        local main_frame = screen_element.add {
            type = "frame",
            name = "main_frame",
            caption = { "titles.title" }
        }

        main_frame.style.size = { 780, 600 }
        main_frame.auto_center = true

        local content_frame = main_frame.add {
            type = "frame",
            name = "content_frame",
            direction = "vertical",
            style = "content_frame"
        }
        content_frame.style.width = 226

        local content_frame1 = main_frame.add {
            type = "frame",
            name = "content_frame1",
            direction = "vertical",
            style = "content_frame"
        }
        content_frame1.style.width = 524

        local controls_flow = content_frame.add {
            type = "flow",
            name = "controls_flow",
            direction = "vertical",
            style = "controls_flow"
        }

        controls_flow1 = content_frame1.add {
            type = "flow",
            name = "controls_flow1",
            direction = "vertical",
            style = "controls_flow"
        }

        controls_flow1.add {
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.greetings"}
        }.style.single_line = false
--#endregion
        controls_flow.add {
            type = "button",
            name = "resources_button",
            caption = { "titles.resourses" },
        }.style.width = 206

        controls_flow.add {
            type = "button",
            name = "caves_furnaces_button",
            caption = { "titles.caves_furnaces" }
        }.style.width = 206

        controls_flow.add {
            type = "button",
            name = "fuel_button",
            caption = { "titles.fuel" }
        }.style.width = 206

        controls_flow.add {
            type = "button",
            name = "more_products_button",
            caption = { "titles.more_products" }
        }.style.width = 206
        
        controls_flow.add {
            type = "button",
            name = "next_automation_button",
            caption = { "titles.next_automation" }
        }.style.width = 206
        
        controls_flow.add {
            type = "button",
            name = "electricity_button",
            caption = { "titles.electricity" }
        }.style.width = 206
        
        controls_flow.add {
            type = "button",
            name = "resourses_treatment_button",
            caption = { "titles.resourses_treatment" }
        }.style.width = 206
        
        controls_flow.add {
            type = "button",
            name = "science_auto_button",
            caption = { "titles.science_auto" }
        }.style.width = 206

        controls_flow.add {
            type = "button",
            name = "research_button",
            caption = { "titles.research" }
        }.style.width = 206

        controls_flow.add {
            type = "button",
            name = "main_bus_button",
            caption = { "titles.main_bus" }
        }.style.width = 206
        
        controls_flow.add {
            type = "button",
            name = "bus_containment_button",
            caption = { "titles.bus_containment" }
        }.style.width = 206
        
        controls_flow.add {
            type = "button",
            name = "tips_button",
            caption = { "titles.tips" }
        }.style.width = 206
        is_gui_opened = true
    else
        local player = game.get_player(event.player_index)
        player.gui.screen.main_frame.destroy()
        is_gui_opened = false
    end
end)

script.on_event(defines.events.on_gui_click, function(event)
    if event.element.name == "resources_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.resourses"}
        }.style.single_line = false
    end
    if event.element.name == "caves_furnaces_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.caves_furnaces"}
        }.style.single_line = false
    end
    if event.element.name == "fuel_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.fuel"}
        }.style.single_line = false
    end
    if event.element.name == "more_products_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.more_products"}
        }.style.single_line = false
    end
    if event.element.name == "next_automation_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.next_automation"}
        }.style.single_line = false
    end
    if event.element.name == "electricity_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.electricity"}
        }.style.single_line = false
    end
    if event.element.name == "resourses_treatment_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.resourses_treatment"}
        }.style.single_line = false
    end
    if event.element.name == "research_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.research"}
        }.style.single_line = false
    end
    if event.element.name == "science_auto_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.science_auto"}
        }.style.single_line = false
    end
    if event.element.name == "main_bus_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.main_bus"}
        }.style.single_line = false
    end
    if event.element.name == "bus_containment_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.bus_containment"}
        }.style.single_line = false
    end
    if event.element.name == "tips_button" then
        controls_flow1.clear()
        controls_flow1.add{
            type = "label",
            name = "our_text",
            caption = {"guide_book_text.tips"}
        }.style.single_line = false
    end
end)
