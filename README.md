# ExportAllScenes

A simple Sketchup Plugin to save out all scenes / pages at once as transparent PNGs.  Presently this simply saves all the scenes (aka Pages) out to transparent PNG files in c:\temp\ and in the order they appear at the top bar (unless moved left or right, then I believe it is their created order).

Setup and pre requisites:

- Models must have Scene Transitions fully disabled
- Plugin must be installed by copying to C:\Users\userName\AppData\Roaming\SketchUp\SketchUp 2021\SketchUp\Plugins\
- If installed by installer, I think it may need to be zipped (honestly haven't gotten that far yet in docs and QuickStart)
- Create a TEMP directory on C:\, i.e. C:\temp\ should already exist.
- After copying to directory, close all instances of SketchUp and restart, after the template select menu, the plugin will be loaded.  It appears under the Extensions menu in modern SU versions.  
- Only tested on win10 and su2021 and only on one reasonably sized SU model with various numbers of scenes.
- All scenes should be somewhat short and have plain text or numerical names (as this is what is saved out, so all the stuff that isn't ok in file names, not ok here either)

WARNING / known Bugs: 

- Overwrites by default
- Large Resolution export is hardcoded (pending edits for Ruby poll the user)
- Silent fail on files that cannot write for filename reasons (or perhaps out of memory or other errors)
- Not sure this will create a temp directory on C:\ (and that may be subject to permissions) but this is hardcoded (therefore also not mac compatible without a minor edit)
- Can't stop once underway, this could take minutes or possibly hours in certain circumstances
- limited testing, does not do the auto-offing of Scene transitions

Use cases / future improvements / the why:
- Can be hotkey'd
- May be able to save to working directory by default and prompt for overwrite, or save as preference
- It is a real bummer to want to save out all scenes, because you have to do it one at a time.  This doesn't seem to be that easy to reliably automate in auto hotkey through traditional means through the menus.  I must have wasted many hours over the years just waiting on SU to export full resolution AA transparent png's, or for that matter, any export if I wanted to do all the scenes.  You just have to wait and exporting video is limited in resolution and does not support transparency.
