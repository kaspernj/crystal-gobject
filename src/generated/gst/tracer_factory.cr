require "./plugin_feature"

module Gst
  class TracerFactory < PluginFeature
    @gst_tracer_factory : LibGst::TracerFactory*?
    def initialize(@gst_tracer_factory : LibGst::TracerFactory*)
    end

    def to_unsafe
      @gst_tracer_factory.not_nil!
    end

    def self.list
      __return_value = LibGst.tracer_factory_get_list
      __return_value
    end

  end
end

