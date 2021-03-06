Процедура ОбработкаПроведения(Отказ,Режим)

	Движения.ТоварыНаСкладе.Записывать = Истина;
	Движения.Закупки.Записывать = Истина;
	// регистр ТоварыНаСкладе
	Для Каждого ТекСтрокаТовары из Товары Цикл
		Движение = Движения.ТоварыНаСкладе.Добавить();
		Движение.Период = Дата;
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Номенклатура = ТекСтрокаТовары.Товар;
		Движение.Количество = ТекСтрокаТовары.Количество;
	КонецЦикла;
	// регистр Закупки
	Для Каждого ТекСтрокаТовары из Товары Цикл
		Движение = Движения.Закупки.Добавить();
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовары.Товар;
		Движение.Поставщик = ТекСтрокаТовары.Товар;
		Движение.Количество = ТекСтрокаТовары.Количество;
		Движение.Стоимость = ТекСтрокаТовары.Сумма;
	КонецЦикла;

КонецПроцедуры