module Gtk
  class TextAttributes
    include GObject::WrappedType

    @gtk_text_attributes : LibGtk::TextAttributes*?
    def initialize(@gtk_text_attributes : LibGtk::TextAttributes*)
    end

    def to_unsafe
      @gtk_text_attributes.not_nil!
    end

    def self.new : self
      __return_value = LibGtk.text_attributes_new
      cast Gtk::TextAttributes.new(__return_value)
    end

    def copy
      __return_value = LibGtk.text_attributes_copy(to_unsafe.as(LibGtk::TextAttributes*))
      Gtk::TextAttributes.new(__return_value)
    end

    def copy_values(dest)
      __return_value = LibGtk.text_attributes_copy_values(to_unsafe.as(LibGtk::TextAttributes*), dest.to_unsafe.as(LibGtk::TextAttributes*))
      __return_value
    end

    def ref
      __return_value = LibGtk.text_attributes_ref(to_unsafe.as(LibGtk::TextAttributes*))
      Gtk::TextAttributes.new(__return_value)
    end

    def unref
      __return_value = LibGtk.text_attributes_unref(to_unsafe.as(LibGtk::TextAttributes*))
      __return_value
    end

  end
end

