function getEventsInfo() {
	const events = document.querySelectorAll('.event-card')
	return Array.from(events).map(event => {
		let name = event.querySelector('.event-name').innerText
		let picture = event.querySelector('img').src
		let [rating, musicGender, distance] = event.querySelector('.event-card__info').innerText.split('•')
		let [arriveEstimate, costAverage] = event.querySelector('.event-card__footer').innerText.split('•')

		return {
			name,
			picture,
			rating,
			musicGender,
			distance,
			arriveEstimate,
			costAverage
        }
    })
}