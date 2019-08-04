DROP TABLE IF EXISTS countries;

CREATE TABLE IF NOT EXISTS countries (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название страны",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи"

) COMMENT = "Страны мира";

DROP TABLE IF EXISTS cities;

CREATE TABLE IF NOT EXISTS cities (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL COMMENT "Название города",
country_id BIGINT UNSIGNED NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
CONSTRAINT cities_country_id_fk FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE RESTRICT ON UPDATE RESTRICT
) COMMENT = "Города";

DROP TABLE IF EXISTS hotel_types;

CREATE TABLE IF NOT EXISTS hotel_types (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи"

) COMMENT = "Типы отелей";

DROP TABLE IF EXISTS hotels;

CREATE TABLE IF NOT EXISTS hotels (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL COMMENT "Название отеля",
hotel_type_id BIGINT UNSIGNED NOT NULL COMMENT "Тип размещения",
country_id BIGINT UNSIGNED NOT NULL COMMENT "Страна отеля",
city_id BIGINT UNSIGNED NOT NULL COMMENT "Город отеля",
stars TINYINT UNSIGNED COMMENT "Количество звезд",
rating DECIMAL(5,2) DEFAULT 0 COMMENT "Рейтинг отеля",
open_date DATETIME NOT NULL COMMENT "Дата открытия отеля",
renovation_date DATETIME NOT NULL COMMENT "Дата обновления отеля",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
CONSTRAINT hotels_hotel_type_id_fk FOREIGN KEY (hotel_type_id) REFERENCES hotel_types(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT hotels_country_id_fk FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT hotels_city_id_fk FOREIGN KEY (city_id) REFERENCES cities(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX hotels_city_idx(city_id),
INDEX hotels_country_idx(country_id),
INDEX hotels_hotel_type_id_idx(hotel_type_id),
INDEX hotels_city_hotel_type_id_idx(city_id, hotel_type_id),
INDEX hotels_country_hotel_type_id_idx(country_id, hotel_type_id),
INDEX hotels_stars_idx(stars),
INDEX hotels_city_stars_idx(city_id, stars),
INDEX hotels_country_stars_idx(country_id, stars),
INDEX hotels_hotel_type_id_stars_idx(hotel_type_id, stars),
INDEX hotels_city_hotel_type_id_stars_idx(city_id, hotel_type_id, stars),
INDEX hotels_country_hotel_type_id_stars_idx(country_id, hotel_type_id, stars),
INDEX hotels_rating_idx(rating),
INDEX hotels_city_rating_idx(city_id, rating),
INDEX hotels_country_rating_idx(country_id, rating)
) COMMENT = "Отели";

/*В БД могу находиться как фото, так и видео отелей, поэтому добавлен тип медиа файлов*/
DROP TABLE IF EXISTS media_types;

CREATE TABLE IF NOT EXISTS media_types (
id SERIAL PRIMARY KEY,
media_type VARCHAR(10) NOT NULL UNIQUE COMMENT "Название типа",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи"
) COMMENT = "Типы медиа файлов";

/*В моей БД в таблице отелей нет ссылки на главное фото, но в таблице медиа есть признак,
что фото является главным. Но при добавлении или изменении признака обязательна проверка, что запись,
на которую он устанавливается является фото, а не видео, и что для конкретного отеля не более одной строки с таким признаком*/
DROP TABLE IF EXISTS media;

CREATE TABLE IF NOT EXISTS media (
id SERIAL PRIMARY KEY,
media_type_id BIGINT UNSIGNED NOT NULL COMMENT "Тип медиафалй (фото/видео)",
hotel_id BIGINT UNSIGNED NOT NULL COMMENT "Отель",
name VARCHAR(255) NOT NULL COMMENT "Название медиафайла",
main BOOLEAN COMMENT "Главное фото", 
link VARCHAR(255) COMMENT "Ссылка",
metadata JSON,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
CONSTRAINT media_media_type_id_fk FOREIGN KEY (media_type_id) REFERENCES media_types(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT media_hotel_id_fk FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE ON UPDATE NO ACTION,
INDEX media_hotel_id_media_type_id_main_idx(hotel_id, media_type_id, main),
INDEX media_hotel_id_media_type_id_idx(hotel_id, media_type_id)
) COMMENT = "Медиа файлы";


DROP TABLE IF EXISTS adresses;

CREATE TABLE IF NOT EXISTS adresses (
id SERIAL PRIMARY KEY,
hotel_id BIGINT UNSIGNED NOT NULL COMMENT "Отель",
postcode VARCHAR(10) NOT NULL COMMENT "Почтовый индекс",
country_id BIGINT UNSIGNED NOT NULL COMMENT "Страна",
city_id BIGINT UNSIGNED NOT NULL COMMENT "Город",
street VARCHAR(255) NOT NULL COMMENT "Улица",
house_number VARCHAR(10) NOT NULL COMMENT "Номер дома",
building VARCHAR(10) COMMENT "Номер строения/корпуса",
flat VARCHAR(10) COMMENT "Номер квартиры/помещения/офиса",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
CONSTRAINT adresses_hotel_id_fk FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT adresses_country_id_fk FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
CONSTRAINT adresses_city_id_fk FOREIGN KEY (city_id) REFERENCES cities(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX adresses_hotel_id_idx(hotel_id)
) COMMENT = "Адреса";

DROP TABLE IF EXISTS terms_of_placement;

CREATE TABLE IF NOT EXISTS terms_of_placement (
id SERIAL PRIMARY KEY,
hotel_id BIGINT UNSIGNED NOT NULL COMMENT "Отель", 
check_in_time TIME NOT NULL COMMENT "Время въезда",
check_out_time TIME NOT NULL COMMENT "Время выезда",
prepay BOOLEAN COMMENT "Предоплата",
cancel_opportunity BOOLEAN COMMENT "Возможность отмены",
babies_bed BOOLEAN COMMENT "Детские кроватки",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
CONSTRAINT terms_of_placement_hotel_id_fk FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE ON UPDATE NO ACTION,
INDEX terms_of_placement_hotel_id_idx(hotel_id)
) COMMENT = "Условия размещения отелей";

DROP TABLE IF EXISTS facilities_categories;

CREATE TABLE IF NOT EXISTS facilities_categories (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название категории",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи"
) COMMENT = "Категории удобств";

DROP TABLE IF EXISTS facilities;

CREATE TABLE IF NOT EXISTS facilities (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL COMMENT "Название удобства",
category_id BIGINT UNSIGNED NOT NULL COMMENT "Категория удобства",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
CONSTRAINT facilities_category_id_fk FOREIGN KEY (category_id) REFERENCES facilities_categories(id) ON DELETE RESTRICT ON UPDATE RESTRICT
) COMMENT = "Удобства";

DROP TABLE IF EXISTS hotel_facilities;

CREATE TABLE IF NOT EXISTS hotel_facilities (
hotel_id BIGINT UNSIGNED NOT NULL,
facilities_id BIGINT UNSIGNED NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
PRIMARY KEY(hotel_id, facilities_id),
CONSTRAINT hotes_facilities_hotel_id_fk FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT hotes_facilities_facilities_id_fk FOREIGN KEY (facilities_id) REFERENCES facilities(id) ON DELETE RESTRICT ON UPDATE CASCADE,
INDEX hotel_facilities_hotel_id_idx(hotel_id), 
INDEX hotel_facilities_facilities_id_idx(facilities_id)
) COMMENT = "Удобства отелей/номеров";

DROP TABLE IF EXISTS languages;

CREATE TABLE IF NOT EXISTS languages (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название языка",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи"
) COMMENT = "Иностранные языки";

DROP TABLE IF EXISTS hotel_languages;

CREATE TABLE IF NOT EXISTS hotel_languages (
hotel_id BIGINT UNSIGNED NOT NULL,
language_id BIGINT UNSIGNED NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
PRIMARY KEY(language_id, hotel_id),
CONSTRAINT languages_hotel_id_fk FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT languages_language_id_fk FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX hotel_languages_hotel_id_idx(hotel_id),
INDEX hotel_languages_language_id_idx(language_id)
) COMMENT = "Иностранные языки отелей/пользователей";

DROP TABLE IF EXISTS nutrition_types;

CREATE TABLE IF NOT EXISTS nutrition_types (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи"
) COMMENT = "Типы питания";

DROP TABLE IF EXISTS bed_types;

CREATE TABLE IF NOT EXISTS bed_types (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи"
) COMMENT = "Типы кроватей";

DROP TABLE IF EXISTS rooms;

CREATE TABLE IF NOT EXISTS rooms (
id SERIAL PRIMARY KEY,
hotel_id BIGINT UNSIGNED NOT NULL COMMENT "Отель",
name VARCHAR(255) NOT NULL COMMENT "Название",
capacity TINYINT UNSIGNED NOT NULL COMMENT "Вмещает (человек)",
bed_type_id BIGINT UNSIGNED NOT NULL COMMENT "Тип кровати",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
CONSTRAINT rooms_hotel_id_fk FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT rooms_bed_type_id_fk FOREIGN KEY (bed_type_id) REFERENCES bed_types(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX rooms_hotel_id_idx(hotel_id),
INDEX rooms_hotel_id_bed_type_id_idx(hotel_id, bed_type_id),
INDEX rooms_hotel_id_capacity_idx(hotel_id, capacity)
) COMMENT = "Номера отелей";

DROP TABLE IF EXISTS prices;

CREATE TABLE IF NOT EXISTS prices (
room_id BIGINT UNSIGNED NOT NULL COMMENT "Номер",
nutrition_type_id BIGINT UNSIGNED NOT NULL COMMENT "Тип питания",
price DECIMAL(15,2) UNSIGNED NOT NULL COMMENT "Цена",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
PRIMARY KEY(room_id, nutrition_type_id),
CONSTRAINT prices_room_id_fk FOREIGN KEY (room_id) REFERENCES rooms(id) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT prices_nutritiontion_type_id_fk FOREIGN KEY (nutrition_type_id) REFERENCES nutrition_types(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX prices_room_id_nutrition_type_id_idx(room_id, nutrition_type_id)
) COMMENT = "Цены";

DROP TABLE IF EXISTS seasonal_margins;

CREATE TABLE IF NOT EXISTS seasonal_margins (
room_id BIGINT UNSIGNED NOT NULL COMMENT "Номер",
nutrition_type_id BIGINT UNSIGNED NOT NULL COMMENT "Тип питания",
date_from DATE NOT NULL COMMENT "Дата начала действия",
date_to DATE NOT NULL COMMENT "Дата окончания действия",
margin TINYINT UNSIGNED NOT NULL COMMENT "Процент наценки (0%-250%)",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
PRIMARY KEY(room_id, nutrition_type_id, date_from),
CONSTRAINT seasonal_margins_room_id_fk FOREIGN KEY (room_id) REFERENCES rooms(id) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT seasonal_margins_nutrition_type_id_fk FOREIGN KEY (nutrition_type_id) REFERENCES nutrition_types(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX seasonal_margins_room_id_nutrition_type_id_idx(room_id, nutrition_type_id)
) COMMENT = "Сезонные наценки";

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
id SERIAL PRIMARY KEY,
login VARCHAR(255) NOT NULL COMMENT "Имя пользователя",
email VARCHAR(255) NOT NULL UNIQUE COMMENT "Адрес электронной почты",
phone_number VARCHAR(30) NOT NULL UNIQUE COMMENT "Номер телефона",
user_password VARCHAR(30) NOT NULL COMMENT "Пароль",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
INDEX users_login_idx(login),
INDEX users_email_idx(email),
INDEX users_phone_number_idx(phone_number)
) COMMENT = "Пользователи";

DROP TABLE IF EXISTS profiles;

CREATE TABLE IF NOT EXISTS profiles (
id SERIAL PRIMARY KEY,
user_id BIGINT UNSIGNED NOT NULL COMMENT "Пользователь",
sex CHAR(1) NOT NULL COMMENT "Пол",
birthday DATE NOT NULL COMMENT "Дата рождения",
country_id BIGINT UNSIGNED NOT NULL COMMENT "Страна проживания",
city_id BIGINT UNSIGNED NOT NULL COMMENT "Город проживания",
firstname VARCHAR(255) NOT NULL COMMENT "Имя (для оформления документов)",
lastname VARCHAR(255) NOT NULL COMMENT "Фамилия (для оформления документов)",
mailing_accepted BOOLEAN COMMENT "Получатель рассылки",
sms_accepted BOOLEAN COMMENT "Получатель смс-рассылки",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
CONSTRAINT profiles_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE NO ACTION,
INDEX profiles_user_id_index(user_id),
INDEX profiles_mailing_index(mailing_accepted),
INDEX profiles_sms_index(sms_accepted),
INDEX profiles_country_id_index(country_id),
INDEX profiles_city_id_index(city_id)
) COMMENT = "Профили пользователей";

DROP TABLE IF EXISTS card_types;

CREATE TABLE IF NOT EXISTS card_types (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL UNIQUE COMMENT "Название",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи"
) COMMENT = "Типы платежных карт";

DROP TABLE IF EXISTS cards;

CREATE TABLE IF NOT EXISTS cards (
id SERIAL PRIMARY KEY,
user_id BIGINT UNSIGNED NOT NULL COMMENT "Пользователь",
type_id BIGINT UNSIGNED NOT NULL COMMENT "Тип карты",
card_number VARCHAR(30) NOT NULL COMMENT "Номер карты",
card_owner VARCHAR(255) NOT NULL COMMENT "Имя владельца карты",
valid_date DATE NOT NULL COMMENT "Срок действия карты",
use_for_payments BOOLEAN COMMENT "Использовать для оплаты",
use_for_binuses BOOLEAN COMMENT "Использовать для вознаграждения",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
CONSTRAINT cards_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT cards_type_id_fk FOREIGN KEY (type_id) REFERENCES card_types(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX cards_user_id_idx(user_id)
) COMMENT = "Платежные карты пользователей";

DROP TABLE IF EXISTS bookings;

CREATE TABLE IF NOT EXISTS bookings (
id SERIAL COMMENT "Номер бронирования",
room_id BIGINT UNSIGNED NOT NULL COMMENT "Номер",
user_id BIGINT UNSIGNED NOT NULL COMMENT "Пользователь",
nutrition_type_id BIGINT UNSIGNED NOT NULL COMMENT "Тип питания",
date_from DATE NOT NULL COMMENT "Дата начала бронирования",
date_to DATE NOT NULL COMMENT "Дата окончания бронирования",
days INT UNSIGNED NOT NULL COMMENT "Количество дней",
amount DECIMAL(15,2) UNSIGNED NOT NULL COMMENT "Сумма",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
PRIMARY KEY (room_id, date_from),
CONSTRAINT bookings_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
CONSTRAINT bookings_room_id_fk FOREIGN KEY (room_id) REFERENCES rooms(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
CONSTRAINT bookings_nutrition_type_id_fk FOREIGN KEY (nutrition_type_id) REFERENCES nutrition_types(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX bookings_room_id_date_from_date_to_idx(room_id, date_from, date_to),
INDEX bookings_user_id_idx(user_id),
INDEX bookings_user_id_room_id_idx(user_id, room_id)
) COMMENT = "Бронирования";

DROP TABLE IF EXISTS reviews;

CREATE TABLE IF NOT EXISTS reviews (
id SERIAL PRIMARY KEY,
hotel_id BIGINT UNSIGNED NOT NULL COMMENT "Отель",
user_id BIGINT UNSIGNED NOT NULL COMMENT "Пользователь",
booking_id BIGINT UNSIGNED NOT NULL COMMENT "Номер бронирования",
name VARCHAR(50) NOT NULL COMMENT "Название",
body TEXT NOT NULL COMMENT "Текст отзыва",
hotel_mark TINYINT UNSIGNED NOT NULL COMMENT "Оценка отеля",
facilities_mark TINYINT UNSIGNED NOT NULL COMMENT "Оценка удобств",
cleanness_mark TINYINT UNSIGNED NOT NULL COMMENT "Оценка чистоты",
comfort_mark TINYINT UNSIGNED NOT NULL COMMENT "Оценка комфорта",
price_mark TINYINT UNSIGNED NOT NULL COMMENT "Оценка цены",
location_mark TINYINT UNSIGNED NOT NULL COMMENT "Оценка расположения",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
CONSTRAINT reviews_hotel_id_fk FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT reviews_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
CONSTRAINT reviews_booking_id_fk FOREIGN KEY (booking_id) REFERENCES bookings(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
INDEX reviews_hotel_id_idx(hotel_id),
INDEX reviews_user_id_idx(user_id)
) COMMENT = "Отзывы пользователей";

DROP TABLE IF EXISTS discount_types;

CREATE TABLE IF NOT EXISTS discount_types (
id SERIAL PRIMARY KEY,
orders_amount DECIMAL(15,2) UNSIGNED NOT NULL UNIQUE COMMENT "Сумма заказов",
discount_percent INT UNSIGNED NOT NULL COMMENT "Процент скидки",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
INDEX discount_types_orders_amount_idx(orders_amount),
INDEX discount_types_discount_percent_idx(discount_percent)
) COMMENT = "Типы скидок";

DROP TABLE IF EXISTS user_discounts;

CREATE TABLE IF NOT EXISTS user_discounts (
id SERIAL,
user_id BIGINT UNSIGNED NOT NULL,
discount_id BIGINT UNSIGNED NOT NULL,
date_from DATE NOT NULL COMMENT "Дата начала действия",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
PRIMARY KEY (user_id, discount_id, date_from),
CONSTRAINT user_discounts_user_id_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT user_discounts_discount_id_fk FOREIGN KEY (discount_id) REFERENCES discount_types(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX user_discounts_user_id_date_from_idx(user_id, date_from)
) COMMENT = "Скидки пользователей";

DROP TABLE IF EXISTS booking_discounts;

CREATE TABLE IF NOT EXISTS booking_discounts (
booking_id BIGINT UNSIGNED NOT NULL,
user_discount_id BIGINT UNSIGNED NOT NULL,
amount_discount DECIMAL(15,2) UNSIGNED NOT NULL COMMENT "Сумма бонусов",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
PRIMARY KEY (booking_id, user_discount_id),
CONSTRAINT booking_discounts_booking_id_fk FOREIGN KEY (booking_id) REFERENCES bookings(id) ON DELETE CASCADE ON UPDATE NO ACTION,
CONSTRAINT booking_discounts_user_discount_id_fk FOREIGN KEY (user_discount_id) REFERENCES user_discounts(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX booking_discounts_booking_id_idx(booking_id),
INDEX booking_user_discount_id_idx(user_discount_id)
) COMMENT = "Скидки бронирований";

/*Я добавила таблицу сообщений, так как пользователи могут отправлять какие либо вопросы
или уточнения представителям отелей (так же пользователям) и соответственно отели могу отсылать
пользователям уведомления о подтверждении брони, рассылки акций и т.д.*/
DROP TABLE IF EXISTS messages;

CREATE TABLE IF NOT EXISTS messages (
from_user_id BIGINT UNSIGNED NOT NULL,
to_user_id BIGINT UNSIGNED NOT NULL,
delivered BOOLEAN COMMENT "Доставлено",
readed BOOLEAN COMMENT "Прочитано",
body TEXT NOT NULL COMMENT "Текст сообщения",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время и дата добавления записи",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время и дата последнего изменения записи",
PRIMARY KEY (from_user_id, to_user_id, created_at),
CONSTRAINT messages_from_user_id_fk FOREIGN KEY (from_user_id) REFERENCES users(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
CONSTRAINT messages_to_user_id_fk FOREIGN KEY (to_user_id) REFERENCES users(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
INDEX messages_from_user_id_to_user_id_idx(from_user_id, to_user_id),
INDEX messages_to_user_id_from_user_id_idx(to_user_id, from_user_id)
) COMMENT = "Сообщения пользователей";
