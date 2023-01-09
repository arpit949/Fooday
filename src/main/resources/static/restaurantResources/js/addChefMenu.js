function validateChefMenu() {

	if ($('#r_chef_name').val().trim() === 'null') {
		$('#r_chef_name').focus()
		showErrorToast('Please enter name')
		return false;
	}
	else if ($('#r_chef_email').val().trim() === '') {
		$('#r_chef_email').focus()
		showErrorToast('Please enter mailid')
		return false;
	}
	else if ($('#r_chef_contact').val().trim() === '') {
		$('#r_chef_contact').focus()
		showErrorToast('Please enter contactnumber')
		return false;
	}
	else {
		return true;
	}
}