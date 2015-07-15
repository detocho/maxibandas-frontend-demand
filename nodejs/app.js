
	var express 	      = require('express'),
	misc 		        		= require('./routes/misc'),
	users 		        	= require('./routes/users'),
	searchUsers	        = require('./routes/searchUsers'),
	categories          = require('./routes/categories'),
	locations	        	= require('./routes/locations'),
	pictures            = require('./routes/pictures'),
	searchUserByEmail 	= require('./routes/searchUserByEmail'),
	bands               = require('./routes/bands'),
	zipcodes            = require('./routes/zipcodes'),
	oauth               = require('./routes/oauth'),
	searchBand					= require('./routes/searchBand'),
	newsLatest			= require('./routes/noticias'),
	bestEvent						= require('./routes/best_event'),
	bestBand						= require('./routes/best_band'),
	dummy 		        	= require('./routes/dummy');
	//misc = require('./routes/misc');

var app = express();



app.set('port', process.env.PORT || 8888);
app.use(express.logger('dev'));
app.use(express.bodyParser());
app.use(express.methodOverride());
app.use(app.router);

app.configure('development', function () {
    app.use(express.errorHandler());
    app.use(function(req, res, next) {
        res.header("Access-Control-Allow-Origin", "*");
        res.header("Access-Control-Allow-Headers", "X-Requested-With");
        next();
    });
});

app.get('/ping',misc.ping);
app.get('/users/:userId', users.get);
app.post('/users/', users.post);
app.post('/users/search/:admin', searchUsers.post);

app.get('/categories/:categoryId',categories.get);
app.options('/categories/:categoryId', categories.options);

app.get('/locations/:locationId', locations.get);
app.options('/locations/:locationId', locations.options);
app.get('/locations/zipcodes/:zipcodeId', zipcodes.get);
app.options('/locations/zipcodes/:zipcodeId', zipcodes.options);
app.get('/users/searchByEmail/:email', searchUserByEmail.get);

app.post('/pictures', pictures.post);
app.options('/pictures', pictures.options);

app.get('/bands/search', searchBand.get);
app.options('/bands/search', searchBand.options);

app.get('/bands/best_band', bestBand.get);
app.options('/bands/best_band', bestBand.options);

app.get('/bands/:bandId', bands.get);
app.post('/bands/',bands.post);
app.options('/bands/', bands.options);
app.options('/bands/:bandId', bands.options);

app.post('/oauth',oauth.post);
app.options('/oauth', oauth.options);


app.get('/events/best_events', bestEvent.get);
app.options('/events/best_events', bestEvent.options);

app.get('/news/latest', newsLatest.get);
app.options('/news/latest', newsLatest.options);



app.get('/dummy',dummy.getDummyInfo);


//
// 404
//
app.all('*', misc.notFound);


app.listen(app.get('port'), function(){
	console.log("Mock maxibandas server listening on port " + app.get('port'));
});
