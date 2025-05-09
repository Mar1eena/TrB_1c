﻿///////////////////////////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2024, ООО 1С-Софт
// Все права защищены. Эта программа и сопроводительные материалы предоставляются 
// в соответствии с условиями лицензии Attribution 4.0 International (CC BY 4.0)
// Текст лицензии доступен по ссылке:
// https://creativecommons.org/licenses/by/4.0/legalcode
///////////////////////////////////////////////////////////////////////////////////////////////////////

#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОбработчикиСобытий

Процедура ОбработкаПолученияФормы(ВидФормы, Параметры, ВыбраннаяФорма, ДополнительнаяИнформация, СтандартнаяОбработка)
	
	СтандартнаяОбработка = Ложь;
	ВыбраннаяФорма = "Обработка.НастройкаРезервногоКопированияИБ.Форма.НастройкаРезервногоКопированияКлиентСервер";
	
#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда
		
		Если ОбщегоНазначения.ИнформационнаяБазаФайловая() Тогда
			ВыбраннаяФорма = "Обработка.НастройкаРезервногоКопированияИБ.Форма.НастройкаРезервногоКопирования";
		КонецЕсли;
		
#КонецЕсли
	
КонецПроцедуры

#КонецОбласти

#КонецЕсли