exports.handler = function handler (event, context, done) {
	// If the endpoint expects a JSON body, you can parse it like this:
	// var userId = JSON.parse(event.body).userId

	done(null, {
		body:    'Hello World!',
		headers: {
			'Content-Type': 'text/plain',
		},
		'statusCode': 200,
	})
}
