require! {
	passport
	# \passport-local
	\../../core/request-handler : {RequestHandler}
	\../models/models : {User}
}

class AuthHandler extends RequestHandler
	get: (req, res)!->
		res.render \admin/login, (err, html)!->
			if err then res.status 500 .end! and console.error err
			res.send html .end!

	post: (req, res)!->
		console.log req.body
		passport.authenticate 'local', {success-redirect: \/admin, failure-redirect: \login}

module.exports = {AuthHandler}
