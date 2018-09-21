/***
 * JavaScript file for the user account settings page.
 * 
 */

$(function() {
	
	// On page load, if a country value is present in the dropdown, then display it.
	if ($('select#state option:selected').val() !== '') {
		$('select#state option:selected').parent('#state').attr('disabled', false).parent().parent('div.form-group').removeClass('hidden')
	} else if ($('input#state').val() !== '') {
		$('input#state').attr('disabled', false).parent().parent('div.form-group').removeClass('hidden')
	}
	
	// Handle the country select changes
	$('select#country').change(function() {
		let $countrySelect = $(this);
		let selectedCountry = $countrySelect.children(':selected').attr('value');
		
		// When the select options change, reset the values for the state fields.
		$('input#state').val('');
		$('select#state').val('');

		
		// If the selected country is the US, then show the US States dropdown field instead of a 
		// blank text field.
		if (selectedCountry === 'US') {
			$('div.usState-form-group').removeClass('hidden');
			$('div.usState-form-group #state').attr('disabled',false);
			$('div.state-form-group').addClass('hidden');
			$('div.state-form-group #state').attr('disabled',true);
		} else {
			$('div.state-form-group').removeClass('hidden');
			$('div.state-form-group #state').attr('disabled',false);
			$('div.usState-form-group').addClass('hidden');
			$('div.usState-form-group #state').attr('disabled',true);
		}
	});
	
	// Activate Bootstrap Switch
	$('input.activate').bootstrapSwitch({
		onSwitchChange: function(event, state) {
			$(this).val(state);
		},
		size: 'small',
		onColor: 'success',
		offColor: 'danger',
		onText: 'yes',
		offText: 'no'
	});
});