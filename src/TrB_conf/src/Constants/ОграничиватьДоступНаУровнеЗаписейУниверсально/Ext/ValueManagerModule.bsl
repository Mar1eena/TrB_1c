﻿///////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2024, ООО 1С-Софт
// Все права защищены. Эта программа и сопроводительные материалы предоставляются 
// в соответствии с условиями лицензии Attribution 4.0 International (CC BY 4.0)
// Текст лицензии доступен по ссылке:
// https://creativecommons.org/licenses/by/4.0/legalcode
///////////////////////////////////////////////////////////////////////////////////////////////////////

#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОписаниеПеременных

Перем СтароеЗначение, НовоеЗначение;

#КонецОбласти

#Область ОбработчикиСобытий

Процедура ПередЗаписью(Отказ)
	
	Если ОбменДанными.Загрузка Тогда
		Возврат;
	КонецЕсли;
	
	СтароеЗначение = Константы.ОграничиватьДоступНаУровнеЗаписейУниверсально.Получить();
	
	Если Не УправлениеДоступомСлужебный.ВариантВстроенногоЯзыкаРусский() Тогда
		Значение = Истина;
	КонецЕсли;
	
	НовоеЗначение = Значение;
	
	Если Значение И Не СтароеЗначение Тогда // Включено.
		РегистрыСведений.ПараметрыОграниченияДоступа.ОбновитьДанныеРегистра(, Истина);
	КонецЕсли;
	
	Если Значение = СтароеЗначение Тогда
		Возврат;
	КонецЕсли;
	
	Если ОбщегоНазначения.ЭтоАвтономноеРабочееМесто() Тогда
		ТекстОшибки =
			НСтр("ru = 'Изменение варианта работы Стандартный/Производительный следует выполнить в приложении в сервисе.'");
		ВызватьИсключение ТекстОшибки;
	ИначеЕсли ОбщегоНазначения.ЭтоПодчиненныйУзелРИБ() Тогда
		ТекстОшибки =
			НСтр("ru = 'Изменение варианта работы Стандартный/Производительный следует выполнить в главном узле информационной базы.'");
		ВызватьИсключение ТекстОшибки;
	КонецЕсли;
	
КонецПроцедуры

Процедура ПриЗаписи(Отказ)
	
	Если ОбменДанными.Загрузка Тогда
		Возврат;
	КонецЕсли;
	
	Если НовоеЗначение <> Значение Тогда
		ТекстОшибки = СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(
			НСтр("ru = 'Нельзя изменять значение константы %1 в обработчиках подписок на событие %2.'"),
			"ОграничиватьДоступНаУровнеЗаписейУниверсально", "ПередЗаписью");
		ВызватьИсключение ТекстОшибки;
	КонецЕсли;
	
	Если Значение И Не СтароеЗначение Тогда // Включено.
		УправлениеДоступомСлужебный.ОчиститьПоследнееОбновлениеДоступа();
		ПараметрыПланирования = УправлениеДоступомСлужебный.ПараметрыПланированияОбновленияДоступа();
		ПараметрыПланирования.Описание = "ВключеноОграничиватьДоступНаУровнеЗаписейУниверсально";
		УправлениеДоступомСлужебный.ЗапланироватьОбновлениеДоступа(Неопределено, ПараметрыПланирования);
	КонецЕсли;
	
	Если Не Значение И СтароеЗначение Тогда // Выключено.
		МенеджерЗначения = Константы.ПервоеОбновлениеДоступаЗавершилось.СоздатьМенеджерЗначения();
		МенеджерЗначения.Значение = Ложь;
		ОбновлениеИнформационнойБазы.ЗаписатьДанные(МенеджерЗначения);
		УправлениеДоступомСлужебный.ВключитьЗаполнениеДанныхДляОграниченияДоступа();
	КонецЕсли;
	
	Если Значение <> СтароеЗначение Тогда // Изменено.
		УправлениеДоступомСлужебный.ОбновитьПараметрыСеанса();
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти

#Иначе
ВызватьИсключение НСтр("ru = 'Недопустимый вызов объекта на клиенте.'");
#КонецЕсли