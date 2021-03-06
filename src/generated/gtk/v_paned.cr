require "./paned"

module Gtk
  class VPaned < Paned
    @gtk_v_paned : LibGtk::VPaned*?
    def initialize(@gtk_v_paned : LibGtk::VPaned*)
    end

    def to_unsafe
      @gtk_v_paned.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new : self
      __return_value = LibGtk.v_paned_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

