# coding: utf8
db.define_table('patient',
    Field('email', length=128,label=T('Email'), default='', unique=True),
    #Field('user_name', length=128, label=T('User name'), default='', unique=True, 
    #    requires=IS_NOT_IN_DB(db, 'auth_user.user_name')
    #),
    Field('password', 'password', readable=False, label=T('Password'),
        requires=CRYPT()
    ),
    Field('first_name', length=128, label=T('First name'), default='',
        requires=(IS_NOT_EMPTY(error_message=auth.messages.is_empty),
        IS_NOT_IN_DB(db, 'auth_user.first_name'))
    ),
    Field('middle_name', length=128, label=T('Middle name'), default=''),
    Field('last_name', length=128, label=T('Last name'), default='',
        requires=(IS_NOT_EMPTY(error_message=auth.messages.is_empty),
        IS_NOT_IN_DB(db, 'auth_user.last_name'))
    ),
    Field('md5', length=128, default='', writable=False, readable=False),
    Field('country', 'string', length=15, label=T('Country'),
        requires=IS_NULL_OR(IS_IN_SET('US','CHINA'))
    ),
)


db.define_table('prof',
    Field('email', length=128,label=T('Email'), default='', unique=True),
    #Field('user_name', length=128, label=T('User name'), default='', unique=True, 
    #    requires=IS_NOT_IN_DB(db, 'auth_user.user_name')
    #),
    Field('password', 'password', readable=False, label=T('Password'),
        requires=CRYPT()
    ),
    Field('first_name', length=128, label=T('First name'), default='',
        requires=(IS_NOT_EMPTY(error_message=auth.messages.is_empty),
        IS_NOT_IN_DB(db, 'auth_user.first_name'))
    ),
    Field('middle_name', length=128, label=T('Middle name'), default=''),
    Field('last_name', length=128, label=T('Last name'), default='',
        requires=(IS_NOT_EMPTY(error_message=auth.messages.is_empty),
        IS_NOT_IN_DB(db, 'auth_user.last_name'))
    ),
    Field('md5', length=128, default='', writable=False, readable=False),
    Field('country', 'string', length=15, label=T('Country'),
        requires=IS_NULL_OR(IS_IN_SET('US','CHINA'))
    ),
)
