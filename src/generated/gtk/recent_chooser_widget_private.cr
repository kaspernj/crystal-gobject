module Gtk
  class RecentChooserWidgetPrivate
    include GObject::WrappedType

    @gtk_recent_chooser_widget_private : LibGtk::RecentChooserWidgetPrivate*?
    def initialize(@gtk_recent_chooser_widget_private : LibGtk::RecentChooserWidgetPrivate*)
    end

    def to_unsafe
      @gtk_recent_chooser_widget_private.not_nil!
    end

  end
end

