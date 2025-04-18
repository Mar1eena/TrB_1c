#Область СлужебныйПрограммныйИнтерфейс

// Метод получения облигации по её идентификатору
// 
// Параметры:
//  IdType - ПеречислениеСсылка.TrBInstrumentIdType - Тип идентификатора инструмента. Возможные значения: figi, ticker
//  ClassCode - Строка - Идентификатор class_code. Обязателен при id_type = ticker.
//  Idd - Строка - Идентификатор запрашиваемого инструмента.
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция BondBy(IdType, ClassCode, Idd, Песочница = Ложь) Экспорт

	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("IdType", IdType);
	ПараметрыТелаЗапроса.Вставить("ClassCode", ClassCode);
	ПараметрыТелаЗапроса.Вставить("Idd", Idd);
	
	ТелоЗапроса = "{
					|'idType': [IdType],
					|'classCode': [ClassCode],
					|'id': [Idd]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка облигаций.
// 
// Параметры:
//  InstrumentStatus - ПеречислениеСсылка.TrBItrumentStatus - Статус запрашиваемых инструментов
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция Bonds(InstrumentStatus, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/Bonds";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("instrumentStatus", InstrumentStatus);
	
	ТелоЗапроса = "{
					|instrumentStatus: [InstrumentStatus]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка валют
// 
// Параметры:
//  InstrumentStatus - ПеречислениеСсылка.TrBItrumentStatus - Статус запрашиваемых инструментов
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция Currencies(InstrumentStatus, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/Currencies";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("instrumentStatus", InstrumentStatus);
	
	ТелоЗапроса = "{
					|instrumentStatus: [InstrumentStatus]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения валюты по ее идентификатору
// Параметры:
//  IdType - ПеречислениеСсылка.TrBInstrumentIdType - Тип идентификатора инструмента. Возможные значения: figi, ticker
//  ClassCode - Строка - Идентификатор class_code. Обязателен при id_type = ticker.
//  Idd - Строка - Идентификатор запрашиваемого инструмента.
//  Песочница - Булево - Ложь, если это не песочница.
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция CurrencyBy(IdType, ClassCode, Idd, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/CurrencyBy";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("IdType", IdType);
	ПараметрыТелаЗапроса.Вставить("ClassCode", ClassCode);
	ПараметрыТелаЗапроса.Вставить("Idd", Idd);
	
	ТелоЗапроса = "{
					|'idType': [IdType],
					|'classCode': [ClassCode],
					|'id': [Idd]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод редактирования списка избранных инструментов
// 
// Параметры:
//  Instruments - Массив из Строка - Массив инструментов, где элемент - строка Figi
//  ActionType - ПеречислениеСсылка.TrBEditFavoritesActionType - Тип действия со списком избранных инструментов
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция EditFavorites(Instruments, ActionType, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/EditFavorites";
	
	Инструмент = "";
	
	Для каждого Элемент Из Instruments Цикл
		
		ПараметрИнструмента = Новый Структура("Инструмент", Элемент);
		
		Инструмент = 	"{ 
					|figi : [Инструмент]
					|}," + Инструмент;
		МассивИнструментов = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(Инструмент, ПараметрИнструмента);
		
	КонецЦикла;
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("ActionType", "EDIT_FAVORITES_ACTION_TYPE_ADD");
	ПараметрыТелаЗапроса.Вставить("Instruments", Лев(МассивИнструментов, СтрДлина(МассивИнструментов) - 1));
	
	ТелоЗапроса = "{
					|instruments: [[Instruments]],
					|actionType: [ActionType]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения инвестиционного фонда по его идентификатору.
// Параметры:
//  IdType - ПеречислениеСсылка.TrBInstrumentIdType - Тип идентификатора инструмента. Возможные значения: figi, ticker
//  ClassCode - Строка - Идентификатор class_code. Обязателен при id_type = ticker.
//  Idd - Строка - Идентификатор запрашиваемого инструмента.
//  Песочница - Булево - Ложь, если это не песочница.
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция EtfBy(IdType, ClassCode, Idd, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/EtfBy|";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("IdType", IdType);
	ПараметрыТелаЗапроса.Вставить("ClassCode", ClassCode);
	ПараметрыТелаЗапроса.Вставить("Idd", Idd);
	
	ТелоЗапроса = "{
					|'idType': [IdType],
					|'classCode': [ClassCode],
					|'id': [Idd]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка инвестиционных фондов.
// 
// Параметры:
//  InstrumentStatus - ПеречислениеСсылка.TrBItrumentStatus - Статус запрашиваемых инструментов
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция Etfs(InstrumentStatus, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/Etfs";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("instrumentStatus", InstrumentStatus);
	
	ТелоЗапроса = "{
					|instrumentStatus: [InstrumentStatus]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод поиска инструмента
//  
// Параметры:
//  Query - Строка - Figi акции
//  InstrumentKind - ПеречислениеСсылка.TrBInstrumentType - Тип инструмента
//  ApiTradeAvailableFlag - Булево - Фильтр для отображения только торговых инструментов.
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция FindInstrument(Query, InstrumentKind, ApiTradeAvailableFlag, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/FindInstrument";

	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("Query", Query);
	ПараметрыТелаЗапроса.Вставить("InstrumentKind", InstrumentKind);
	ПараметрыТелаЗапроса.Вставить("ApiTradeAvailableFlag", ApiTradeAvailableFlag);
	
	ТелоЗапроса = "{
					|query: [Query],
					|instrumentKind: [InstrumentKind],
					|apiTradeAvailableFlag: [ApiTradeAvailableFlag]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения фьючерса по его идентификатору.
//  
// Параметры:
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция FutureBy(Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/FutureBy";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("", "");
	
	ТелоЗапроса = "{
					|idType: [],
					|classCode: [],
					|id: []
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка фьючерсов.
//  
// Параметры:
//  InstrumentStatus - ПеречислениеСсылка.TrBItrumentStatus - Статус запрашиваемых инструментов
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция Futures(InstrumentStatus, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/Futures";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("InstrumentStatus", InstrumentStatus);
	
	ТелоЗапроса = "{
					|instrumentStatus: [InstrumentStatus]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения накопленного купонного дохода по облигации.
//  
// Параметры:
//  Figi - Строка - Figi инструмента
//  From - Дата - Начало периода по часовому поясу UTC.
//  Too - Дата - Окончание периода по часовому поясу UTC.
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetAccruedInterests(Figi, From, Too, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetAccruedInterests";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("Figi",	Figi);
	ПараметрыТелаЗапроса.Вставить("From",	From);
	ПараметрыТелаЗапроса.Вставить("Too",	Too);
	
	ТелоЗапроса = "{
					|figi: [Figi],
					|from: [From],
					|to: [Too]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения актива по его идентификатору.
//  
// Параметры:
//  Uid - Строка - uid-идентификатор актива.
//  Песочница - Булево - Ложь, если это не песочница.
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetAssetBy(Uid, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetAssetBy";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("Uid", Uid);
	
	ТелоЗапроса = "{
					|uid: [Uid]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка фьючерсов.
//  
// Параметры:
//  InstrumentType - ПеречислениеСсылка.TrBInstrumentType - Тип инструмента
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetAssets(InstrumentType, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetAssets";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("InstrumentType", InstrumentType);
	
	ТелоЗапроса = "{
					|instrumentType: [InstrumentType]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения графика выплат купонов по облигации.
//  
// Параметры:
//  Figi - Строка - Figi инструмента
//  From - Дата - Начало периода по часовому поясу UTC.
//  Too - Дата - Окончание периода по часовому поясу UTC.
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetBondCoupons(Figi, From, Too, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetBondCoupons";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("Figi",	Figi);
	ПараметрыТелаЗапроса.Вставить("From",	From);
	ПараметрыТелаЗапроса.Вставить("Too",		Too);
	
	ТелоЗапроса = "{
					|figi: [Figi],
					|from: [From],
					|to: [Too]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения бренда по его идентификатору
//  
// Параметры:
//  Uid - Строка - Uid-идентификатор бренда.
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetBrandBy(Uid, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetBrandBy";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("Uid", Uid);
	
	ТелоЗапроса = "{
					|uid: [Uid]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка брендов.
//  
// Параметры:
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetBrands(Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetBrands";
	
	ТелоЗапроса = "{}";
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка стран.
//  
// Параметры:
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetCountries(Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetCountries";
	
	ТелоЗапроса = "{}";
					
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод для получения событий выплаты дивидендов по инструменту.
//  
// Параметры:
//  Figi - Строка - Figi инструмента
//  From - Дата - Начало периода по часовому поясу UTC.
//  Too - Дата - Окончание периода по часовому поясу UTC.
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetDividends(Figi, From, Too, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetDividends";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("Figi",	Figi);
	ПараметрыТелаЗапроса.Вставить("From",	From);
	ПараметрыТелаЗапроса.Вставить("Too",		Too);
	
	ТелоЗапроса = "{
					|figi: [Figi],
					|from: [From],
					|to: [Too]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка избранных инструментов.
//  
// Параметры:
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetFavorites(Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetFavorites";

	ТелоЗапроса = "{}";
					
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка фьючерсов.
//  
// Параметры:
// Figi - Строка - Figi инструмента
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetFuturesMargin(Figi, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetFuturesMargin";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("Figi", Figi);
	
	ТелоЗапроса = "{
					|figi: [Figi],
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка фьючерсов.
//  
// Параметры:
//  IdType - ПеречислениеСсылка.TrBInstrumentIdType - Тип идентификатора инструмента. Возможные значения: figi, ticker
//  ClassCode - Строка - Идентификатор class_code. Обязателен при id_type = ticker.
//  Idd - Строка - Идентификатор запрашиваемого инструмента.
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция GetInstrumentBy(IdType, ClassCode, Idd, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetInstrumentBy";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("IdType", IdType);
	ПараметрыТелаЗапроса.Вставить("ClassCode",  ClassCode);
	ПараметрыТелаЗапроса.Вставить("Idd", Idd);
	
	ТелоЗапроса = "{
					|idType: [IdType],
					|classCode: [ClassCode],
					|id: [Idd]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения опциона по его идентификатору.
//  
// Параметры:
//  IdType - ПеречислениеСсылка.TrBInstrumentIdType - Тип идентификатора инструмента. Возможные значения: figi, ticker
//  ClassCode - Строка - Идентификатор class_code. Обязателен при id_type = ticker.
//  Idd - Строка - Идентификатор запрашиваемого инструмента.
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//   
Функция OptionBy(IdType, ClassCode, Idd, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/OptionBy";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("IdType", IdType);
	ПараметрыТелаЗапроса.Вставить("ClassCode",  ClassCode);
	ПараметрыТелаЗапроса.Вставить("Idd", Idd);
	
	ТелоЗапроса = "{
					|idType: [IdType],
					|classCode: [ClassCode],
					|id: [Idd]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Deprecated Метод получения списка опционов.
//  
// Параметры:
//  InstrumentStatus - ПеречислениеСсылка.TrBItrumentStatus - Статус запрашиваемых инструментов
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция Options(InstrumentStatus, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/Options";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("InstrumentStatus", InstrumentStatus);
	
	ТелоЗапроса = "{
					|instrumentStatus: [InstrumentStatus],
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка опционов.
//  
// Параметры:
//  BasicAssetUid - Строка - Идентификатор базового актива опциона. Обязательный параметр
//  BasicAssetPositionUid - Строка - Идентификатор позиции базового актива опциона
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция OptionsBy(BasicAssetUid , BasicAssetPositionUid, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/OptionsBy";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("BasicAssetUid", BasicAssetUid);
	ПараметрыТелаЗапроса.Вставить("BasicAssetPositionUid", BasicAssetPositionUid);
	
	ТелоЗапроса = "{
					|basicAssetUid: [BasicAssetUid],
					|basicAssetPositionUid: [BasicAssetPositionUid],
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения акции по её идентификатору.
//  
// Параметры:
//  IdType - ПеречислениеСсылка.TrBInstrumentIdType - Тип идентификатора инструмента. Возможные значения: figi, ticker
//  ClassCode - Строка - Идентификатор class_code. Обязателен при id_type = ticker.
//  Idd - Строка - Идентификатор запрашиваемого инструмента.
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция ShareBy(IdType , ClassCode, Idd, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/ShareBy";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("IdType", IdType);
	ПараметрыТелаЗапроса.Вставить("ClassCode",  ClassCode);
	ПараметрыТелаЗапроса.Вставить("Idd", Idd);
	
	ТелоЗапроса = "{
					|idType: [IdType],
					|classCode: [ClassCode],
					|id: [Idd]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка фьючерсов.
//  
// Параметры:
//  InstrumentStatus - ПеречислениеСсылка.TrBItrumentStatus - Статус запрашиваемых инструментов
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция Shares(InstrumentStatus, Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/Shares";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("InstrumentStatus", InstrumentStatus);
	
	ТелоЗапроса = "{
					|instrumentStatus: [InstrumentStatus]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

// Метод получения списка фьючерсов.
//  
// Параметры:
//  Exchange - Строка - Наименование биржи или расчетного календаря.
//						Если не передаётся, возвращается информация по всем доступным торговым площадкам.
//  From - Дата - Начало периода по часовому поясу UTC.
//  Too - Дата - Окончание периода по часовому поясу UTC.
//  Песочница - Булево - Ложь, если это не песочница.
//  
// Возвращаемое значение:
//  Произвольный - Массив структур ответа данного запроса
//  
Функция TradingSchedules(Exchange, From, Too , Песочница = Ложь) Экспорт
	
	URL = "https://invest-public-api.tinkoff.ru/rest/tinkoff.public.invest.api.contract.v1.InstrumentsService/TradingSchedules";
	
	ПараметрыТелаЗапроса = Новый Структура();
	ПараметрыТелаЗапроса.Вставить("Exchange",	Exchange);
	ПараметрыТелаЗапроса.Вставить("From",	From);
	ПараметрыТелаЗапроса.Вставить("Too",		From);
	
	ТелоЗапроса = "{
					|exchange: [Exchange],
					|from: [From],
					|to: [Too]
					|}";
					
	ТелоЗапроса = СтроковыеФункцииКлиентСервер.ВставитьПараметрыВСтроку(ТелоЗапроса, ПараметрыТелаЗапроса);
	
	Ответ = TrBЗапросыTinkoff.ЗапросВТинькоффИнвестиции(URL, ТелоЗапроса, Песочница);
	
	Возврат Ответ;
	
КонецФункции

#КонецОбласти