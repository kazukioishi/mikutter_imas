# -*- coding: utf-8 -*-
require "webkit-gtk2"

Plugin.create(:mikutter_imas) do
  anzu = File.join(File.dirname(__FILE__), 'anzu.png').freeze
  tab(:mobamas, "モバマス") do
    set_icon anzu
    settings = WebKitGtk2::WebSettings.new
    settings.set_property('user-agent', 'Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19')
    view = WebKitGtk2::WebView.new
    view.set_settings(settings)
    view.load_uri("http://www.mbga.jp/_game_intro?game_id=12008305")
    nativewidget view.show_all
  end
  tab(:greemas, "グリマス") do
    set_icon anzu
    settings = WebKitGtk2::WebSettings.new
    settings.set_property('user-agent', 'Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19')
    view = WebKitGtk2::WebView.new
    view.set_settings(settings)
    view.load_uri("http://apps.gree.net/58737")
    nativewidget view.show_all
  end
end
