module Pango
  class GlyphString
    include GObject::WrappedType

    def initialize @pango_glyph_string
    end

    def to_unsafe
      @pango_glyph_string.not_nil!
    end

    def self.new_internal
      __return_value = LibPango.glyph_string_new
      Pango::GlyphString.new(__return_value)
    end

    def copy
      __return_value = LibPango.glyph_string_copy((to_unsafe as LibPango::GlyphString*))
      Pango::GlyphString.new(__return_value)
    end

    def extents(font, ink_rect, logical_rect)
      __return_value = LibPango.glyph_string_extents((to_unsafe as LibPango::GlyphString*), (font.to_unsafe as LibPango::Font*), ink_rect, logical_rect)
      __return_value
    end

    def extents_range(start, end, font, ink_rect, logical_rect)
      __return_value = LibPango.glyph_string_extents_range((to_unsafe as LibPango::GlyphString*), Int32.cast(start), Int32.cast(end), (font.to_unsafe as LibPango::Font*), ink_rect, logical_rect)
      __return_value
    end

    def free
      __return_value = LibPango.glyph_string_free((to_unsafe as LibPango::GlyphString*))
      __return_value
    end

    def logical_widths(text, length, embedding_level, logical_widths)
      __return_value = LibPango.glyph_string_get_logical_widths((to_unsafe as LibPango::GlyphString*), text, Int32.cast(length), Int32.cast(embedding_level), logical_widths)
      __return_value
    end

    def width
      __return_value = LibPango.glyph_string_get_width((to_unsafe as LibPango::GlyphString*))
      __return_value
    end

    def index_to_x(text, length, analysis, index, trailing, x_pos)
      __return_value = LibPango.glyph_string_index_to_x((to_unsafe as LibPango::GlyphString*), text, Int32.cast(length), (analysis.to_unsafe as LibPango::Analysis*), Int32.cast(index), Bool.cast(trailing), Int32.cast(x_pos))
      __return_value
    end

    def size=(new_len)
      __return_value = LibPango.glyph_string_set_size((to_unsafe as LibPango::GlyphString*), Int32.cast(new_len))
      __return_value
    end

    def x_to_index(text, length, analysis, x_pos, index, trailing)
      __return_value = LibPango.glyph_string_x_to_index((to_unsafe as LibPango::GlyphString*), text, Int32.cast(length), (analysis.to_unsafe as LibPango::Analysis*), Int32.cast(x_pos), Int32.cast(index), Int32.cast(trailing))
      __return_value
    end

  end
end
