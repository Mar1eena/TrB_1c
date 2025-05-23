#Область ПрограммныйИнтерфейс
#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Запрос в тинькофф инвестиции.
// 
// Параметры:
//  URL URL
//  ТелоЗапроса Тело запроса
//  Песочница - Булево - Песочница
// 
// Возвращаемое значение:
//  Структура - Запрос в тинькофф инвестиции:
// * КодОшибки - Строка - 
// * СообщениеОбОшибке - Строка - 
// * ИнформацияОбОшибке - Строка - 
// * Содержимое - Неопределено - 
// * КодСостояния - Число - 
// * ФорматОтвета - Число - 
// * Заголовки - Соответствие - 
Функция ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница = Ложь) Экспорт

	Если Песочница Тогда
		Токен = Константы.TrBТокенПесочница.Получить();
	Иначе
		Токен = Константы.TrBТокен.Получить();
	КонецЕсли;

	Заголовки = Новый Соответствие;
	Заголовки.Вставить("accept", "application/json");
	Заголовки.Вставить("Authorization", Токен);
	Заголовки.Вставить("Content-Type", "application/json");

	ПараметрыЗапроса = Новый Структура;
	ПараметрыЗапроса.Вставить("ФорматОтвета", 1);
	ПараметрыЗапроса.Вставить("Метод", "POST");
	ПараметрыЗапроса.Вставить("ДанныеДляОбработки", ТелоЗапроса);
	ПараметрыЗапроса.Вставить("ФорматДанныхДляОбработки", 1);
	ПараметрыЗапроса.Вставить("Заголовки", Заголовки);
	ПараметрыЗапроса.Вставить("ИмяФайлаОтвета", Неопределено);
	ПараметрыЗапроса.Вставить("Таймаут", -1);
	ПараметрыЗапроса.Вставить("НастройкиПрокси", Неопределено);

	Возврат ИнтернетПоддержкаПользователей.ЗагрузитьСодержимоеИзИнтернет(URL, , , ПараметрыЗапроса);

КонецФункции

#КонецОбласти