--MagicTheGathering Mana Tables
	--create schema magicthegathering;
	
		--go
	
		if object_id ('magicthegathering.manastate') is not null drop table magicthegathering.manastate;

			create table magicthegathering.manastate 
				(
					mana_colour_id int foreign key references magicthegathering.manacolour(mana_colour_id),
					mana_value int not null,
				);
	
		if object_id ('magicthegathering.manastateaudit') is not null drop table magicthegathering.manastateaudit;

			create table magicthegathering.manastateaudit 
				(
					mana_colour_id int foreign key references magicthegathering.manacolour(mana_colour_id),
					mana_value_addition int not null,
					mana_datetime datetime not null unique
				);
	
		if object_id ('magicthegathering.manacolour') is not null drop table magicthegathering.manacolour;	

			create table magicthegathering.manacolour
				(
					mana_colour_id int primary key, 
					mana_colour varchar (10) not null unique
				);
	
					insert into magicthegathering.manacolour values ( 1, 'Colourless' );
													
					insert into magicthegathering.manacolour values ( 2, 'Blue' );
													
					insert into magicthegathering.manacolour values ( 3, 'Red' );
													
					insert into magicthegathering.manacolour values ( 4, 'Green' );
												
					insert into magicthegathering.manacolour values ( 5, 'White' );
													
					insert into magicthegathering.manacolour values ( 6, 'Black' );		

		if object_id ('magicthegathering.manacolour') is not null drop table magicthegathering.manacolour;
		--Create a View
