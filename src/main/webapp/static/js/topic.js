$(function() {
	// 添加调色板
	var values = ['00', '40', '80', 'BF', 'FF'];
	for (var number = 0; number < 5; number++) {
		for (var col = 0; col < 5; col++) {
			var $tr = $('<tr></tr>');
			for (var row = 0; row < 5; row++) {
				var color = values[number] + values[col] + values[row];
				$tr.append('<td style="background-color: #' + color + '"></td>');
			}
			$('.topic-palette-body').append($tr);
		}
	}
});