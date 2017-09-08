package = "Cosmo"

version = "8.04.14-2"

description = {
  summary = "Safe templates for Lua",
  detailed = [[
Cosmo is a "safe templates" engine. It allows you to fill nested templates, 
providing many of the advantages of Turing-complete template engines, 
without without the downside of allowing arbitrary code in the templates.
  ]],
  license = "MIT/X11",
  homepage = "http://cosmo.luaforge.net"
}

dependencies = { "lpeg >= 0.8.1" }

source = {
  url = "http://cosmo.luaforge.net/cosmo-8.04.14.tar.gz"
}

build = {
   type = "module",
   modules = {
     cosmo = "src/cosmo.lua",
     ["cosmo.fill"] = "src/cosmo/fill.lua",
     ["cosmo.grammar"] = "src/cosmo/grammar.lua",
   },
   copy_directories = { "doc", "samples", "tests" }
}
