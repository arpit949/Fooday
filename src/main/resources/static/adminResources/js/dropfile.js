function handleDrop(e) {
  var dt = e.dataTransfer
  var files = dt.files

  handleFiles(files)
}

function handleFiles(files) {
  files = [...files]
  files.forEach(previewFile)
}

function previewFile(file) {
  let reader = new FileReader()
  reader.readAsDataURL(file)
  reader.onloadend = function() {
    let img = document.createElement('img')
    img.src = reader.result
   }
}

$(document).on('change', '.file-input', function() {

	var filesCount = $(this)[0].files.length;

	var textbox = $(this).prev();

	if (filesCount === 1) {
		var fileName = $(this).val().split('\\').pop();
		textbox.text(fileName);
	} else {
		textbox.text(filesCount + ' files selected');
	}
});