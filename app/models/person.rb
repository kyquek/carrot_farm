class Person < ActiveRecord::Base
# the name is mandatory
validates_presence_of :name

# secret is also mandatory, but we alter the message to be more friendly
validates_presence_of :secret,
	:message => "must be provided so we can recognise you in the future"

# ensure secret has enough letters, but not too many
validates_length_of :secret,
	:in => 6..24

# ensure secret contains at least one number
validates_format_of :secret,
	:with => /[0-9]/,
	:message => "must contain at least one number"

# ensure secret contains at least one upper case
validates_format_of :secret,
	:with => /[A-Z]/,
	:message => "must contain at least one upper case letter"

# ensure secret contains at least one lower case
validates_format_of :secret,
	:with => /[a-z]/,
	:message => "must contain at least one lower case letter"

# limit country choices to Singapore, Malaysia or Indonesia
validates_inclusion_of :country,
	:in => ['SIN','MAL','IND'],
	:message => "must be one of Singapore, Malaysia or Indonesia"

# check that email is valid
validates_format_of :email,
	:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
	:message => "doesn't look like a proper email address"

# email can be used once only
validates_uniqueness_of :email,
	:case_sensitive => false,
	:scope => [:name, :secret], # scope does not seem to work here
	:message => "has already been entered, you can't sign in twice"
end