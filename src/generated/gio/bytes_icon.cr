module Gio
  class BytesIcon < GObject::Object
    @gio_bytes_icon : LibGio::BytesIcon*?
    def initialize(@gio_bytes_icon : LibGio::BytesIcon*)
    end

    def to_unsafe
      @gio_bytes_icon.not_nil!
    end

    # Implements Icon
    # Implements LoadableIcon

    def self.new(bytes) : self
      __return_value = LibGio.bytes_icon_new(bytes.to_unsafe.as(LibGLib::Bytes*))
      cast Gio::BytesIcon.new(__return_value)
    end

    def bytes
      __return_value = LibGio.bytes_icon_get_bytes(to_unsafe.as(LibGio::BytesIcon*))
      GLib::Bytes.new(__return_value)
    end

  end
end

