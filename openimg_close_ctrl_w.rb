# frozen_string_literal: true

Plugin.create(:openimg_close_ctrl_w)

class Plugin::Openimg::Window
  alias :initialize_org__openimg_close_ctrl_w :initialize
  def initialize(...)
    initialize_org__openimg_close_ctrl_w(...)
    ssc :key_release_event do |_, ev|  
      destroy if ::Gtk::keyname([ev.keyval, ev.state]) == 'Control + w'
    end    
  end
end
