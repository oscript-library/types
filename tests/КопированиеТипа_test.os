#использовать "../src"
#Использовать asserts
#Использовать logos

Перем юТест;
Перем Лог;

Функция ПолучитьСписокТестов(Знач Тестирование) Экспорт

	юТест = Тестирование;

	ИменаТестов = Новый Массив;

	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеПростыеТипы");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеСпециальныеТипы");
	
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеМассивов");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеМассиваВПриемник");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеМассиваВПриемникФиксированныйМассив");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеМассиваБезВложенныхТипов");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеМассиваИВложенныхТипов");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеТаблицыЗначений");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеТаблицыЗначенийБезВложенныхТипов");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеДеревоЗначений");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеДеревоЗначенийБезВложенныхТипов");
	// ИменаТестов.Добавить("ТестДолжен_ПроверитьСписокЗначений");

	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеСтруктуры");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеСтруктурыВПриемник");
	// ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеСтруктурыБезВложенныхТипов");
	// ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеСтруктурыИВложенныхТипов");
		
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеСоответствия");
	ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеСоответствияВПриемник");
	// ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеСоответствияБезВложенныхТипов");
	// ИменаТестов.Добавить("ТестДолжен_ПроверитьКопированиеСоответствияИВложенныхТипов");
	// ИменаТестов.Добавить("ТестДолжен_ПроверитьСоответствия");
	
	Возврат ИменаТестов;

КонецФункции

#Область Реализованные_тесты

Процедура ТестДолжен_ПроверитьКопированиеПростыеТипы() Экспорт

	ЗначениеЧисло = 0;
	ЗначениеСтрока = "Строка";
	ЗначениеБулево = Истина;
	ЗначениеДата = Дата("20190101");
	ЗначениеТип = Тип("Строка");	

	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеЧисло), "Проверка копирования типа число должна быть успешной").Равно(ЗначениеЧисло);
	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеСтрока), "Проверка копирования типа строка должна быть успешной").Равно(ЗначениеСтрока);
	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеБулево), "Проверка копирования типа Булево должна быть успешной").Равно(ЗначениеБулево);
	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеДата), "Проверка копирования типа Дата должна быть успешной").Равно(ЗначениеДата);
	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеТип), "Проверка копирования типа Тип должна быть успешной").Равно(ЗначениеТип);
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеСпециальныеТипы() Экспорт

	ЗначениеНеопределено = Неопределено;
	ЗначениеUID = Новый УникальныйИдентификатор();
	
	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеНеопределено), "Проверка копирования типа <Неопределено> должна быть успешной").Равно(ЗначениеНеопределено);
	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеUID), "Проверка копирования типа <UID> должна быть успешной").Равно(ЗначениеUID);

КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеМассивов() Экспорт

	ЗначениеМассив = Новый Массив();
	ЗначениеМассив.Добавить("Элемент1");
	ЗначениеМассив.Добавить("Элемент2");
	ЗначениеФиксированныйМассив = Новый ФиксированныйМассив(ЗначениеМассив);
	
	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеМассив), "Проверка копирования типа <Массив> должна быть успешной").Не_().Равно(ЗначениеМассив);
	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеМассив).Количество(), "Проверка копирования типа <Массив> должна быть успешной").Равно(ЗначениеМассив.Количество());
	
	Ожидаем.Что(ПроверкаТипа.ЭтоФиксированныйМассив(КопированиеТипа.Скопировать(ЗначениеФиксированныйМассив)), "Проверка копирования типа <ФиксированныйМассив> должна быть успешной").ЕстьИстина();
	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеФиксированныйМассив), "Проверка копирования типа <ФиксированныйМассив> должна быть успешной").Не_().Равно(ЗначениеФиксированныйМассив);
	Ожидаем.Что(КопированиеТипа.Скопировать(ЗначениеФиксированныйМассив).Количество(), "Проверка копирования типа <ФиксированныйМассив> должна быть успешной").Равно(ЗначениеФиксированныйМассив.Количество());

КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеМассиваВПриемник() Экспорт
		
	ЗначениеМассив = Новый Массив();
	ЗначениеМассив.Добавить("Элемент1");
	ЗначениеМассив.Добавить("Элемент2");
	
	// Копирование в приемник
	ЗначениеМассивПриемник = Новый Массив();
	РезультатКопирования = КопированиеТипа.Скопировать(ЗначениеМассив, ЗначениеМассивПриемник);
	Ожидаем.Что(РезультатКопирования, "Проверка копирования типа <Массив> должна быть успешной").Равно(ЗначениеМассивПриемник);
	Ожидаем.Что(РезультатКопирования, "Проверка копирования типа <Массив> должна быть успешной").Не_().Равно(ЗначениеМассив);
	Ожидаем.Что(РезультатКопирования.Количество(), "Проверка копирования типа <Массив> должна быть успешной").Равно(ЗначениеМассив.Количество());

КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеМассиваВПриемникФиксированныйМассив() Экспорт
	
	ЗначениеМассив = Новый Массив();
	ЗначениеМассив.Добавить("Элемент1");
	ЗначениеМассив.Добавить("Элемент2");
	
	// Копирование в приемник
	МассивПриемник = Новый ФиксированныйМассив(Новый Массив());
	КопированиеТипа.Скопировать(ЗначениеМассив, МассивПриемник);
	Ожидаем.Что(МассивПриемник, "Проверка копирования типа <Массив> должна быть успешной").Равно(МассивПриемник);
	Ожидаем.Что(МассивПриемник, "Проверка копирования типа <Массив> должна быть успешной").Не_().Равно(ЗначениеМассив);
	Ожидаем.Что(МассивПриемник.Количество(), "Проверка копирования типа <Массив> должна быть успешной").Равно(ЗначениеМассив.Количество());
	Ожидаем.Что(ПроверкаТипа.ЭтоФиксированныйМассив(МассивПриемник), "Проверка копирования типа <ФиксированныйМассив> должна быть успешной").ЕстьИстина();
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеМассиваБезВложенныхТипов() Экспорт
	// Копирование без создания копий вложенных ссылочных типов
	ЗначениеМассив = Новый Массив();
	ВложеннаяСтруктура = Новый Структура("Ключ1, Ключ2", "Ключ1", "Ключ2");
	ЗначениеМассив.Добавить(ВложеннаяСтруктура);
	РезультатКопирования = КопированиеТипа.Скопировать(ЗначениеМассив, , 0);
	Ожидаем.Что(РезультатКопирования, "Проверка копирования типа <Массив> должна быть успешной").Не_().Равно(ЗначениеМассив);
	Ожидаем.Что(РезультатКопирования.Количество(), "Проверка копирования типа <Массив> должна быть успешной").Равно(ЗначениеМассив.Количество());
	Ожидаем.Что(РезультатКопирования[0], "Проверка копирования типа <Массив> должна быть успешной").Равно(ВложеннаяСтруктура);

КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеМассиваИВложенныхТипов() Экспорт
	
	// Копирование с создания копий вложенных ссылочных типов
	ЗначениеМассив = Новый Массив();
	ВложеннаяСтруктура = Новый Структура("Ключ1, Ключ2", "Ключ1", "Ключ2");
	ЗначениеМассив.Добавить(ВложеннаяСтруктура);
	РезультатКопирования = КопированиеТипа.Скопировать(ЗначениеМассив, , 1);
	Ожидаем.Что(РезультатКопирования, "Проверка копирования типа <Массив> должна быть успешной").Не_().Равно(ЗначениеМассив);
	Ожидаем.Что(РезультатКопирования.Количество(), "Проверка копирования типа <Массив> должна быть успешной").Равно(ЗначениеМассив.Количество());
	Ожидаем.Что(РезультатКопирования[0], "Проверка копирования типа <Массив> должна быть успешной").Не_().Равно(ВложеннаяСтруктура);
	Ожидаем.Что(РезультатКопирования[0].Ключ1, "Проверка копирования типа <Массив> должна быть успешной").Равно(ВложеннаяСтруктура.Ключ1);
	Ожидаем.Что(РезультатКопирования[0].Ключ2, "Проверка копирования типа <Массив> должна быть успешной").Равно(ВложеннаяСтруктура.Ключ2);
	
КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеСтруктуры() Экспорт

	ЗначениеСтруктура = Новый Структура("Ключ1, Ключ2", "Ключ1", "Ключ2");
	ЗначениеФиксированнойСтруктуры = Новый ФиксированнаяСтруктура(ЗначениеСтруктура);
	
	РезультатКопирования = КопированиеТипа.Скопировать(ЗначениеСтруктура);
	Ожидаем.Что(РезультатКопирования, "Проверка копирования типа <Массив> должна быть успешной").Не_().Равно(ЗначениеСтруктура);
	Ожидаем.Что(РезультатКопирования.Количество(), "Проверка копирования типа <Массив> должна быть успешной").Равно(ЗначениеСтруктура.Количество());
	
	РезультатКопирования = КопированиеТипа.Скопировать(ЗначениеФиксированнойСтруктуры);
	Ожидаем.Что(ПроверкаТипа.ЭтоФиксированнаяСтруктура(РезультатКопирования), "Проверка копирования типа <ФиксированныйМассив> должна быть успешной").ЕстьИстина();
	Ожидаем.Что(РезультатКопирования, "Проверка копирования типа <ФиксированныйМассив> должна быть успешной").Не_().Равно(ЗначениеФиксированнойСтруктуры);
	Ожидаем.Что(РезультатКопирования.Количество(), "Проверка копирования типа <ФиксированныйМассив> должна быть успешной").Равно(ЗначениеФиксированнойСтруктуры.Количество());

КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеСтруктурыВПриемник() Экспорт
	
	ЗначениеСтруктура = Новый Структура("Ключ1, Ключ2", "Ключ1", "Ключ2");
	ЗначениеФиксированнойСтруктуры = Новый ФиксированнаяСтруктура(ЗначениеСтруктура);
	СтруктураПриемник = Новый Структура();
	РезультатКопирования = КопированиеТипа.Скопировать(ЗначениеСтруктура, СтруктураПриемник);

	Ожидаем.Что(РезультатКопирования, "Проверка копирования типа <Структура> должна быть успешной").Не_().Равно(ЗначениеСтруктура);
	Ожидаем.Что(РезультатКопирования.Количество(), "Проверка копирования типа <Структура> должна быть успешной").Равно(ЗначениеСтруктура.Количество());
	Ожидаем.Что(РезультатКопирования.Ключ1, "Проверка копирования типа <Структура> должна быть успешной").Равно(ЗначениеСтруктура.Ключ1);
	Ожидаем.Что(РезультатКопирования.Ключ2, "Проверка копирования типа <Структура> должна быть успешной").Равно(ЗначениеСтруктура.Ключ2);

	СтруктураПриемник = Новый ФиксированнаяСтруктура(СтруктураПриемник);
	
	КопированиеТипа.Скопировать(ЗначениеСтруктура, СтруктураПриемник);
	Ожидаем.Что(СтруктураПриемник, "Проверка копирования типа <Структура> должна быть успешной").Не_().Равно(ЗначениеСтруктура);
	Ожидаем.Что(СтруктураПриемник.Количество(), "Проверка копирования типа <Структура> должна быть успешной").Равно(ЗначениеСтруктура.Количество());
	Ожидаем.Что(СтруктураПриемник.Ключ1, "Проверка копирования типа <Структура> должна быть успешной").Равно(ЗначениеСтруктура.Ключ1);
	Ожидаем.Что(СтруктураПриемник.Ключ2, "Проверка копирования типа <Структура> должна быть успешной").Равно(ЗначениеСтруктура.Ключ2);
	Ожидаем.Что(ПроверкаТипа.ЭтоФиксированнаяСтруктура(СтруктураПриемник), "Проверка копирования типа <ФиксированныйМассив> должна быть успешной").ЕстьИстина();
	

КонецПроцедуры

// Процедура ТестДолжен_ПроверитьКопированиеСтруктурыБезВложенныхТипов() Экспорт	
// КонецПроцедуры

// Процедура ТестДолжен_ПроверитьКопированиеСтруктурыИВложенныхТипов() Экспорт
// КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеСоответствия() Экспорт

	ЗначениеСоответствие = Новый Соответствие();
	ЗначениеСоответствие.Вставить("Ключ1", "Ключ1");
	ЗначениеФиксированноеСоответствие = Новый ФиксированноеСоответствие(ЗначениеСоответствие);
	
	РезультатКопирования = КопированиеТипа.Скопировать(ЗначениеСоответствие);
	Ожидаем.Что(РезультатКопирования, "Проверка копирования типа <Соответствие> должна быть успешной").Не_().Равно(ЗначениеСоответствие);
	Ожидаем.Что(РезультатКопирования.Количество(), "Проверка копирования типа <Соответствие> должна быть успешной").Равно(ЗначениеСоответствие.Количество());
	
	РезультатКопирования = КопированиеТипа.Скопировать(ЗначениеФиксированноеСоответствие);
	Ожидаем.Что(ПроверкаТипа.ЭтоФиксированноеСоответствие(РезультатКопирования), "Проверка копирования типа <ФиксированноеСоответствие> должна быть успешной").ЕстьИстина();
	Ожидаем.Что(РезультатКопирования, "Проверка копирования типа <ФиксированноеСоответствиев> должна быть успешной").Не_().Равно(ЗначениеФиксированноеСоответствие);
	Ожидаем.Что(РезультатКопирования.Количество(), "Проверка копирования типа <ФиксированноеСоответствие> должна быть успешной").Равно(ЗначениеФиксированноеСоответствие.Количество());

КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеСоответствияВПриемник() Экспорт
	
	ЗначениеСоответствие = Новый Соответствие();
	ЗначениеСоответствие.Вставить("Ключ1", "Ключ1");
	//ЗначениеСоответствие.Вставить("Ключ2", "Ключ2");
	ЗначениеФиксированноеСоответствие = Новый ФиксированноеСоответствие(ЗначениеСоответствие);
	
	СоответствиеПриемник = Новый Соответствие();
	КопированиеТипа.Скопировать(ЗначениеСоответствие, СоответствиеПриемник);

	Ожидаем.Что(СоответствиеПриемник, "Проверка копирования типа <Соответствие> должна быть успешной").Не_().Равно(ЗначениеСоответствие);
	Ожидаем.Что(СоответствиеПриемник.Количество(), "Проверка копирования типа <Соответствие> должна быть успешной").Равно(ЗначениеСоответствие.Количество());
	Ожидаем.Что(СоответствиеПриемник["Ключ1"], "Проверка копирования типа <Соответствие> должна быть успешной").Равно(ЗначениеСоответствие["Ключ1"]);
	Ожидаем.Что(СоответствиеПриемник["Ключ2"], "Проверка копирования типа <Соответствие> должна быть успешной").Равно(ЗначениеСоответствие["Ключ2"]);

	СоответствиеПриемник = Новый ФиксированноеСоответствие(Новый Соответствие());
	
	КопированиеТипа.Скопировать(ЗначениеСоответствие, СоответствиеПриемник);
	Ожидаем.Что(СоответствиеПриемник, "Проверка копирования типа <Соответствие> должна быть успешной").Не_().Равно(ЗначениеСоответствие);
	Ожидаем.Что(СоответствиеПриемник.Количество(), "Проверка копирования типа <Соответствие> должна быть успешной").Равно(ЗначениеСоответствие.Количество());
	Ожидаем.Что(ПроверкаТипа.ЭтоФиксированноеСоответствие(СоответствиеПриемник), "Проверка копирования типа <ФиксированныйМассив> должна быть успешной").ЕстьИстина();
	Ожидаем.Что(СоответствиеПриемник.Получить("Ключ1"), "Проверка копирования типа <Соответствие> должна быть успешной").Равно(ЗначениеСоответствие["Ключ1"]);
	Ожидаем.Что(СоответствиеПриемник.Получить("Ключ2"), "Проверка копирования типа <Соответствие> должна быть успешной").Равно(ЗначениеСоответствие["Ключ2"]);

КонецПроцедуры

// Процедура ТестДолжен_ПроверитьКопированиеСоответствияБезВложенныхТипов() Экспорт
// КонецПроцедуры

// Процедура ТестДолжен_ПроверитьКопированиеСоответствияИВложенныхТипов() Экспорт
// КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеТаблицыЗначений() Экспорт
	
	ТаблицаЗначений = Новый ТаблицаЗначений();
	ТаблицаЗначений.Колонки.Добавить("Колонка1");
	ТаблицаЗначений.Колонки.Добавить("Колонка2");
	ТаблицаЗначений.Колонки.Добавить("Колонка3");

	НоваяСтрока1 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка1", "строка1", Новый Массив);
	НоваяСтрока2 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка2", "строка2", Новый Массив);
	НоваяСтрока3 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка3", "строка3", Новый Массив);
	
	ЗаполнитьЗначенияСвойств(ТаблицаЗначений.Добавить(), НоваяСтрока1);
	ЗаполнитьЗначенияСвойств(ТаблицаЗначений.Добавить(), НоваяСтрока2);
	ЗаполнитьЗначенияСвойств(ТаблицаЗначений.Добавить(), НоваяСтрока3);

	СкопированнаяТаблица = КопированиеТипа.Скопировать(ТаблицаЗначений);
	Ожидаем.Что(ПроверкаТипа.ЭтоТаблицаЗначений(СкопированнаяТаблица), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").ЕстьИстина();
	Ожидаем.Что(СкопированнаяТаблица.Количество(), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(3);
	Ожидаем.Что(СкопированнаяТаблица.Количество(), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(ТаблицаЗначений.Количество());
	
	Ожидаем.Что(СкопированнаяТаблица[0].Колонка1, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока1.Колонка1);
	Ожидаем.Что(СкопированнаяТаблица[0].Колонка2, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока1.Колонка2);
	Ожидаем.Что(СкопированнаяТаблица[0].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Не_().Равно(НоваяСтрока1.Колонка3);
	
	Ожидаем.Что(СкопированнаяТаблица[1].Колонка1, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока2.Колонка1);
	Ожидаем.Что(СкопированнаяТаблица[1].Колонка2, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока2.Колонка2);
	Ожидаем.Что(СкопированнаяТаблица[1].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Не_().Равно(НоваяСтрока2.Колонка3);

	Ожидаем.Что(СкопированнаяТаблица[2].Колонка1, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока3.Колонка1);
	Ожидаем.Что(СкопированнаяТаблица[2].Колонка2, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока3.Колонка2);
	Ожидаем.Что(СкопированнаяТаблица[2].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Не_().Равно(НоваяСтрока3.Колонка3);

КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеТаблицыЗначенийБезВложенныхТипов() Экспорт
	
	ТаблицаЗначений = Новый ТаблицаЗначений();
	ТаблицаЗначений.Колонки.Добавить("Колонка1");
	ТаблицаЗначений.Колонки.Добавить("Колонка2");
	ТаблицаЗначений.Колонки.Добавить("Колонка3");

	НоваяСтрока1 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка1", "строка1", Новый Массив);
	НоваяСтрока2 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка2", "строка2", Новый Массив);
	НоваяСтрока3 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка3", "строка3", Новый Массив);
	
	ЗаполнитьЗначенияСвойств(ТаблицаЗначений.Добавить(), НоваяСтрока1);
	ЗаполнитьЗначенияСвойств(ТаблицаЗначений.Добавить(), НоваяСтрока2);
	ЗаполнитьЗначенияСвойств(ТаблицаЗначений.Добавить(), НоваяСтрока3);

	СкопированнаяТаблица = КопированиеТипа.Скопировать(ТаблицаЗначений, , 0);
	Ожидаем.Что(ПроверкаТипа.ЭтоТаблицаЗначений(СкопированнаяТаблица), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").ЕстьИстина();
	Ожидаем.Что(СкопированнаяТаблица.Количество(), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(3);
	Ожидаем.Что(СкопированнаяТаблица.Количество(), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(ТаблицаЗначений.Количество());
	
	Ожидаем.Что(СкопированнаяТаблица[0].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока1.Колонка3);
	Ожидаем.Что(СкопированнаяТаблица[1].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока2.Колонка3);
	Ожидаем.Что(СкопированнаяТаблица[2].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока3.Колонка3);

КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеДеревоЗначений() Экспорт
	
	ДеревоЗначений = Новый ДеревоЗначений();
	ДеревоЗначений.Колонки.Добавить("Колонка1");
	ДеревоЗначений.Колонки.Добавить("Колонка2");
	ДеревоЗначений.Колонки.Добавить("Колонка3");

	НоваяСтрока1 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка1", "строка1", Новый Массив);
	НоваяСтрока2 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка2", "строка2", Новый Массив);
	НоваяСтрока3 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка3", "строка3", Новый Массив);
	
	ЗаполнитьЗначенияСвойств(ДеревоЗначений.Строки.Добавить(), НоваяСтрока1);
	ЗаполнитьЗначенияСвойств(ДеревоЗначений.Строки[0].Строки.Добавить(), НоваяСтрока2);
	ЗаполнитьЗначенияСвойств(ДеревоЗначений.Строки.Добавить(), НоваяСтрока3);

	СкопированноеДеревоЗначений = КопированиеТипа.Скопировать(ДеревоЗначений);
	Ожидаем.Что(ПроверкаТипа.ЭтоДеревоЗначений(СкопированноеДеревоЗначений), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").ЕстьИстина();
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки.Количество(), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(2);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Строки.Количество(), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(1);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки.Количество(), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(ДеревоЗначений.Строки.Количество());
	
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Колонка1, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока1.Колонка1);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Колонка2, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока1.Колонка2);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Не_().Равно(НоваяСтрока1.Колонка3);
	
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Строки[0].Колонка1, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока2.Колонка1);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Строки[0].Колонка2, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока2.Колонка2);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Строки[0].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Не_().Равно(НоваяСтрока2.Колонка3);

	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[1].Колонка1, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока3.Колонка1);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[1].Колонка2, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока3.Колонка2);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[1].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Не_().Равно(НоваяСтрока3.Колонка3);

КонецПроцедуры

Процедура ТестДолжен_ПроверитьКопированиеДеревоЗначенийБезВложенныхТипов() Экспорт
	
	ДеревоЗначений = Новый ДеревоЗначений();
	ДеревоЗначений.Колонки.Добавить("Колонка1");
	ДеревоЗначений.Колонки.Добавить("Колонка2");
	ДеревоЗначений.Колонки.Добавить("Колонка3");

	НоваяСтрока1 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка1", "строка1", Новый Массив);
	НоваяСтрока2 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка2", "строка2", Новый Массив);
	НоваяСтрока3 = Новый Структура("Колонка1, Колонка2, Колонка3", "строка3", "строка3", Новый Массив);
	
	ЗаполнитьЗначенияСвойств(ДеревоЗначений.Строки.Добавить(), НоваяСтрока1);
	ЗаполнитьЗначенияСвойств(ДеревоЗначений.Строки[0].Строки.Добавить(), НоваяСтрока2);
	ЗаполнитьЗначенияСвойств(ДеревоЗначений.Строки.Добавить(), НоваяСтрока3);

	СкопированноеДеревоЗначений = КопированиеТипа.Скопировать(ДеревоЗначений, , 0);
	Ожидаем.Что(ПроверкаТипа.ЭтоДеревоЗначений(СкопированноеДеревоЗначений), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").ЕстьИстина();
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки.Количество(), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(2);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Строки.Количество(), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(1);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки.Количество(), "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(ДеревоЗначений.Строки.Количество());
	
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Колонка1, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока1.Колонка1);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Колонка2, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока1.Колонка2);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока1.Колонка3);
	
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Строки[0].Колонка1, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока2.Колонка1);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Строки[0].Колонка2, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока2.Колонка2);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[0].Строки[0].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока2.Колонка3);

	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[1].Колонка1, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока3.Колонка1);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[1].Колонка2, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока3.Колонка2);
	Ожидаем.Что(СкопированноеДеревоЗначений.Строки[1].Колонка3, "Проверка копирования типа <ТаблицаЗначений> должна быть успешной").Равно(НоваяСтрока3.Колонка3);

КонецПроцедуры


#КонецОбласти

Лог = Логирование.ПолучитьЛог("oscript.lib.types.testing");



