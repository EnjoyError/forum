+function($) {
	'use strict';
	
	var Palette = function(element, options) {
		this.$element  = $(element)
		this.options   = $.extend({}, Palette.DEFAULTS, options)
	}
	
	Palette.VERSION = '0.0.1';
	
	Palette.DEFAULTS = {
		colors: ['00', '40', '80', 'BF', 'FF']
	}
	
	Palette.prototype.render = function() {
		var $table = $('<table></table>');
		var colors = this.options.colors;
		for (var number = 0; number < colors.length; number++) {
			for (var col = 0; col < colors.length; col++) {
				var $tr = $('<tr></tr>');
				for (var row = 0; row < colors.length; row++) {
					var color = colors[number] + colors[col] + colors[row];
					$tr.append('<td style="background-color: #' + color + '"></td>');
				}
				$table.append($tr);
			}
		}
		this.$element.append($table);
	}
	
	function Plugin(option) {
		return this.each(function() {
			var $this = $(this);
			var data = $this.data('forum.palette');
			var options = typeof option == 'object' && option
			
			if (!data) $this.data('forum.palette', (data = new Palette(this, options)));
			if (typeof option == 'string') data[option]();
		});
	}
	
	var old = $.fn.palette;
	
	$.fn.palette = Plugin;
	$.fn.palette.Constructor = Palette;
	
	$.fn.palette.noConflict = function () {
		$.fn.palette = old;
		return this;
	}
	
	$(window).on('load', function() {
		$('.palette').each(function() {
			var $palette = $(this);
			Plugin.call($palette, 'render');
		})
	});
}(jQuery);