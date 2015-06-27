require! {
	colors
	\./handlers/main-handlers : {MainHandler, PageHandler, ListPageHandler, ContactsPageHandler}
	\./handlers/mail-api : {MailApiHandler}
}

module.exports =
	*url: \/
		handler: MainHandler
	
	*url: \/news/:page
		handler: PageHandler
	
	*url: \/services/:page
		handler: PageHandler
	
	*url: \/articles/:page
		handler: PageHandler
	
	*url: \/clients/:page
		handler: PageHandler
	
	*url: \/clients/
		handler: ListPageHandler
	
	*url: \/news/
		handler: ListPageHandler
	
	*url: \/contacts.html
		handler: ContactsPageHandler
	
	*url: \/send-email.json
		handler: MailApiHandler
	
	*url: \/get-contacts.json
		handler: ContactsPageHandler