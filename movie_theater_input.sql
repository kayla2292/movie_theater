INSERT INTO "Customer"(
	first_name,
	last_name
)VALUES (
	'Scooby',
	'Doo'
);

SELECT *
FROM "Customer";

INSERT INTO "Consession" (
	food_type,
	drink_type,
	candy_type,
	snack_type,
	supply
)VALUES (
	'Hotdog',
	'Sprite',
	'Chocolate Bar',
	'Popcorn',
	98.00
);

SELECT *
FROM "Consession";

INSERT INTO "Movie" (
	name,
	duration,
	screen_room,
	release_date,
	actor_actress
)VALUES (
	'The Menu',
	107.00,
	5.00,
	'2022-11-18',
	'Ralph Fiennes, Anya Taylor-Joy, Nicholas Hoult, Hong Chau'
);

SELECT *
FROM "Movie";

INSERT INTO "Payment"(
	payment_type,
	amount
)VALUES (
	'Cash',
	18.00
);

SELECT *
FROM "Payment";

INSERT INTO "Ticket" (
	inventory
)VALUES (
	998.00
);

SELECT *
FROM "Ticket";

ALTER TABLE "Games"
DROP "VR_game";

ALTER TABLE "Games"
ADD "VR_games" BOOLEAN;

ALTER TABLE "Games"
DROP "interactive_game";

ALTER TABLE "Games"
ADD "interactive_game" BOOLEAN;

SELECT *
FROM "Games";

INSERT INTO "Games" (
	game_type,
	"VR_games",
	game_name,
	interactive_game,
	inventory,
	play_time	
)VALUES (
	'play station',
	FALSE,
	'Madden NFL 23',
	FALSE,
	2.00,
	30.00
);

SELECT *
FROM "Games";

