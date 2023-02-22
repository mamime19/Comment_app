function SetColor(number) {
	let rest = number % 3;
	let colorcode;
	if (rest == 0) {
		colorcode = "#a9ceec";
	} else if (rest == 1) {
		colorcode = "#f8e58c";
	} else {
		colorcode = "#ffc9d2";
	}
	document.documentElement.style.setProperty('--color',colorcode);
}