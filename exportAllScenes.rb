#SKETCHUP_CONSOLE.show
UI.menu("Plugins").add_item("ExportAllScenes") {
    #learn how to escape slashes in quotes or determine if that was a linter fail
    UI.messagebox("Export All Scenes?  They will be saved in c: temp in a numerical order ... I think")
    export_all_scenes
}
#this exports all scenes to transparent png at 16 x 9 apx at 9999 x 4712 with antialiasing on
def export_all_scenes
Sketchup.active_model.pages.each{|page|
    Sketchup.active_model.pages.selected_page = page
    #add a break here somehow
	#UI.messagebox("continue?")
	Sketchup.active_model.active_view.refresh
    options = {
                    :filename => File.join("c:/temp/#{page.name}.png"),
                    :width => 16000,
                    :height => 7541,
                    :antialias => true,
                    :compression => 1.0,
                    :transparent => true
    }
    Sketchup.active_model.active_view.write_image(options)
}
end