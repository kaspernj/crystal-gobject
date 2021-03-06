module Gtk
  class Border
    include GObject::WrappedType

    @gtk_border : LibGtk::Border*?
    def initialize(@gtk_border : LibGtk::Border*)
    end

    def to_unsafe
      @gtk_border.not_nil!
    end

    def self.new : self
      __return_value = LibGtk.border_new
      cast Gtk::Border.new(__return_value)
    end

    def copy
      __return_value = LibGtk.border_copy(to_unsafe.as(LibGtk::Border*))
      Gtk::Border.new(__return_value)
    end

    def free
      __return_value = LibGtk.border_free(to_unsafe.as(LibGtk::Border*))
      __return_value
    end

  end
end

