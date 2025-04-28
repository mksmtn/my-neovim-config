-- Install with: npm i -g @angular/language-server
return {
  cmd = {
    "ngserver",
    "--stdio",
    "--tsProbeLocations",
    "../..,?/node_modules",
    "--ngProbeLocations",
    "../../@angular/language-server/node_modules,?/node_modules/@angular/language-server/node_modules",
    "--angularCoreVersion",
    "",
  },
  filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx", "htmlangular" },
  on_new_config = function(new_config, new_root_dir)
    new_config.cmd = cmd
  end,
}
