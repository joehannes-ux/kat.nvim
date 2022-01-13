local _2afile_2a = "fnl/katdotnvim/highlights/syntax.fnl"
local _2amodule_name_2a = "katdotnvim.highlights.syntax"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("aniseed.autoload")).autoload
local colors, groups, main, ucolors = autoload("katdotnvim.color"), autoload("katdotnvim.highlights.main"), autoload("katdotnvim.main"), autoload("katdotnvim.utils.color")
do end (_2amodule_locals_2a)["colors"] = colors
_2amodule_locals_2a["groups"] = groups
_2amodule_locals_2a["main"] = main
_2amodule_locals_2a["ucolors"] = ucolors
local function identifier()
  return (colors.init("background"))[6]
end
_2amodule_2a["identifier"] = identifier
local function statement()
  return (colors.init("normalColors")).red
end
_2amodule_2a["statement"] = statement
local function preproc()
  return (colors.init("normalColors")).pink
end
_2amodule_2a["preproc"] = preproc
local function typeDef()
  return (colors.init("normalColors")).orange
end
_2amodule_2a["typeDef"] = typeDef
local function special()
  local output = ucolors.blendColors((colors.init("normalColors")).pink, (colors.init("normalColors")).purple, 0.65)
  do end (_2amodule_2a)["output"] = output
  return output
end
_2amodule_2a["special"] = special
local function init()
  ucolors.highlight("Comment", groups.meldBG(), "SKIP", vim.g.kat_nvim_commentStyle)
  ucolors.highlight("Constant", groups.fillBG(), "SKIP")
  ucolors.highlight("String", groups.auxBG(), "SKIP")
  ucolors.highlight("Character", ucolors.blendColors(groups.auxBG(), groups.mainFG(), 0.5), "SKIP", "bold")
  ucolors.highlight("Number", groups.fillBG(), "SKIP")
  ucolors.highlight("Float", ucolors.blendColors(groups.fillBG(), groups.mainFG(), 0.7), "SKIP")
  ucolors.highlight("Boolean", ucolors.blendColors(groups.selectionBG(), groups.mainFG(), 0.7), "SKIP", "bold")
  ucolors.highlight("Identifier", identifier(), "SKIP")
  ucolors.highlight("Function", ucolors.saturation(ucolors.brighten(ucolors.blendColors(identifier(), (colors.init("normalColors")).red, 0.3), 0.1), 0.5), "SKIP", "bold")
  if (main.katStyle == "light") then
    ucolors.highlight("Variable", ucolors.darken(ucolors.blendColors(identifier(), (colors.init("foreground"))[6], 0.5), 0.4), "SKIP")
  else
    ucolors.highlight("Variable", ucolors.brighten(ucolors.blendColors(identifier(), (colors.init("foreground"))[6], 0.5), 0.4), "SKIP")
  end
  ucolors.highlight("Statement", statement(), "SKIP", "bold")
  ucolors.highlight("Conditional", ucolors.brighten(ucolors.blendColors(statement(), (colors.init("normalColors")).purple, 0.2), 0.1), "SKIP")
  ucolors.highlight("Repeat", ucolors.saturation(ucolors.brighten(ucolors.blendColors(statement(), (colors.init("normalColors")).orange, 0.2), 0.3), 0.8), "SKIP")
  ucolors.highlight("Label", ucolors.saturation(ucolors.blendColors(statement(), (colors.init("normalColors")).pink, 0.2), 1), "SKIP", "bold")
  ucolors.highlight("Operator", ucolors.blendColors(statement(), groups.meldFG(), 0.2), "SKIP", "bold")
  if (main.katStyle == "light") then
    ucolors.highlight("Keyword", ucolors.darken(ucolors.blendColors(statement(), (colors.init("normalColors")).green, 0.2), 0.5), "SKIP", "italic")
  else
    ucolors.highlight("Keyword", ucolors.brighten(ucolors.blendColors(statement(), (colors.init("normalColors")).green, 0.2), 0.5), "SKIP", "italic")
  end
  ucolors.highlight("Exception", ucolors.brighten(ucolors.blendColors(statement(), (colors.init("normalColors")).blue, 0.1), 0.2), "SKIP")
  ucolors.highlight("PreProc", preproc(), "SKIP", "bold,italic")
  ucolors.highlight("Include", ucolors.blendColors(preproc(), (colors.init("normalColors")).red, 0.2), "SKIP", "bold,italic")
  ucolors.highlight("Define", ucolors.blendColors(preproc(), (colors.init("normalColors")).purple, 0.2), "SKIP", "bold,italic")
  ucolors.highlight("Macro", ucolors.blendColors(preproc(), (colors.init("normalColors")).blue, 0.2), "SKIP", "bold,italic")
  ucolors.highlight("PreCondit", ucolors.blendColors(preproc(), (colors.init("normalColors")).green, 0.2), "SKIP", "bold,italic")
  ucolors.highlight("Type", typeDef(), "SKIP", "bold")
  ucolors.highlight("StorageClass", ucolors.blendColors(typeDef(), (colors.init("normalColors")).green, 0.2), "SKIP", "bold")
  ucolors.highlight("Structure", ucolors.blendColors(typeDef(), (colors.init("normalColors")).blue, 0.2), "SKIP", "bold")
  ucolors.highlight("Typedef", ucolors.saturation(ucolors.blendColors(typeDef(), (colors.init("background"))[6], 0.2), 1), "SKIP", "bold")
  ucolors.highlight("Special", special(), "SKIP")
  ucolors.highlight("SpecialChar", ucolors.blendColors(special(), (colors.init("foreground"))[1], 0.8), "SKIP", "bold")
  ucolors.highlight("Tag", ucolors.blendColors(special(), (colors.init("normalColors")).red, 0.2), "SKIP", "bold")
  ucolors.highlight("Delimiter", ucolors.blendColors(special(), ucolors.blendColors((colors.init("background"))[6], groups.mainFG(), 0.8), 0.2), "SKIP", "bold")
  ucolors.highlight("SpecialComment", ucolors.blendColors(special(), groups.meldBG(), 0.2), "SKIP", vim.g.kat_nvim_commentStyle)
  ucolors.highlight("Debug", ucolors.blendColors(special(), (colors.init("normalColors")).green, 0.2), "SKIP", "bold")
  ucolors.highlight("Underlined", (colors.init("background"))[6], "SKIP", "underline", (colors.init("background"))[6])
  ucolors.highlight("Error", groups.errorFG(), groups.errorBG(), "bold")
  ucolors.highlight("Todo", groups.infoFG(), ucolors.blendColors(groups.infoBG(), (colors.init("foreground"))[1], 0.9))
  ucolors.highlight("Ignore", groups.meldFG(), "SKIP")
  ucolors.highlight("DiffDelete", groups.mainFG(), ucolors.darken((colors.init("normalColors")).red, 0.2), "bold")
  ucolors.highlight("DiffAdd", "SKIP", (colors.init("normalColors")).green, "bold")
  ucolors.highlight("DiffChange", "SKIP", (colors.init("normalColors")).purple, "bold")
  return ucolors.highlight("DiffText", "SKIP", (colors.init("normalColors")).blue, "bold")
end
_2amodule_2a["init"] = init