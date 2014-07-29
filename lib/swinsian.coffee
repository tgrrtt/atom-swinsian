SwinsianView = require './swinsian-view'

module.exports =
  configDefaults: do ->
    configs = {}
    for configName, configData of SwinsianView.CONFIGS
      configs[configData.key] = configData.default

    configs

  activate: (state) ->
    @swinsianView = new SwinsianView(state.swinsianViewState)

  deactivate: ->
    @swinsianView.destroy()
