module Gio
  class SettingsBackend
    include GObject::WrappedType

    @gio_settings_backend : LibGio::SettingsBackend*?
    def initialize(@gio_settings_backend : LibGio::SettingsBackend*)
    end

    def to_unsafe
      @gio_settings_backend.not_nil!
    end

  end
end

