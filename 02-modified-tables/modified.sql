# rename a table #

ALTER TABLE usuarios RENAME TO usuarios_rename;

# chage name to columb #

ALTER TABLE usuarios_rename CHANGE lastname lastnames varchar (100) null;

#change value in a column only value#

ALTER TABLE usuarios_rename MODIFY names varchar(40) not null;

#add a colum#

ALTER TABLE usuarios_rename ADD websites varchar (100) not null;

#add restriction to colum#

ALTER TABLE usuarios_rename ADD CONSTRAINT uq_email UNIQUE(emails);

# delete a column #

ALTER TABLE usuarios_rename DROP website;

