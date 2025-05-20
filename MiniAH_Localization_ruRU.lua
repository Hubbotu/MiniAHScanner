-- MiniAH_Localization_ruRU.lua
-- Русская локализация для MiniAHScanner от ZamestoTV

local ADDON_NAME, MiniAH = ...

-- Продолжать только если язык игрока русский
local locale = GetLocale()
if locale ~= "ruRU" then return end

-- Таблица локализации
local L = MiniAH.L

-- Русские переводы
local russian_translations = {
        -- Общее
        ["ADDON_LOADED"] = "%s загружен. Введите %s для настроек.",
        ["COMMAND_HELP"] = "Введите %s для помощи.",
        
        -- Сообщения
        ["SCAN_IN_PROGRESS"] = "Сканирование уже выполняется.",
        ["AH_CLOSED"] = "%s: Аукционный дом должен быть открыт для начала сканирования.",
        ["SCAN_STARTED"] = "Запуск автоматического сканирования...",
        ["SCAN_MANUAL_STARTED"] = "Запуск ручного сканирования...",
        ["SCAN_PAGE"] = "Сканирование страницы %d...",
        ["SCAN_COMPLETE"] = "Сканирование завершено! %d предметов отсканировано за %s.",
        ["SCAN_INTERRUPTED"] = "Сканирование прервано: %s",
        ["SCAN_WAIT"] = "Автоматическое сканирование отключено. Следующее сканирование возможно через %d минут(ы).",
        ["NEXT_SCAN_TIMER"] = "Следующее сканирование: %d мин %d сек",
        ["PROCESSING_DATA"] = "Обработка данных...",
        ["PROGRESS_BAR_READY_TO_SCAN"] = "Готово к сканированию!",
        ["PROGRESS_BAR_API_RESPONSE_RECEIVED"] = "Получен ответ API...",
        ["PROGRESS_BAR_REQUESTING_DATA"] = "Запрос данных аукционного дома...",
        ["NO_RESULTS_FROM_AH"] = "Результаты от аукционного дома не получены.",
        ["SCAN_INTERRUPT_REASON_NO_RESULTS"] = "результаты не получены",
        ["ITEMS_RECEIVED_FROM_AH_FORMAT"] = "%d предметов получено от аукционного дома.",
        ["PROGRESS_BAR_PROCESSING_ITEMS_FORMAT"] = "Обработка %d предметов...",
        ["PROGRESS_BAR_PROCESSING_ITEMS_RANGE_FORMAT"] = "Обработка: %d / %d предметов...",
        ["SCAN_COMPLETE_STATS_FORMAT"] = "Сканирование завершено! Всего %d предметов, %d с ценами.",
        ["PROGRESS_BAR_SCAN_COMPLETE_FORMAT"] = "Сканирование завершено - %d предметов",
        ["SCAN_INTERRUPTED_FORMAT"] = "Сканирование прервано: %s",
        ["UNKNOWN_ERROR"] = "Неизвестная ошибка",
        ["SCAN_INTERRUPT_REASON_NO_API_RESPONSE"] = "нет ответа API",
        ["CAN_RESCAN_IMMEDIATELY"] = "Вы можете немедленно повторить сканирование.",
        ["SCAN_COMPLETE_DEFAULT_MSG"] = "Сканирование успешно завершено.",
        ["SCAN_INTERRUPT_REASON_AH_CLOSED"] = "Аукционный дом закрыт.",
        
        -- Интерфейс
        ["OPTIONS"] = "Настройки",
        ["GENERAL"] = "Общие",
        ["SCAN"] = "Сканирование",
        ["DISPLAY"] = "Отображение",
        ["ADVANCED"] = "Расширенные",
        ["CLOSE"] = "Закрыть",
        
        -- Раздел Общие
        ["INFORMATION"] = "Информация",
        ["ADDON_DESCRIPTION"] = "MiniAHScanner — это легковесное дополнение для сканирования аукционного дома и отображения цен во всплывающих подсказках. Оно разработано для простоты и эффективности, с соблюдением 15-минутного лимита для предотвращения отключения от сервера.",
        ["STATISTICS"] = "Статистика",
        ["ITEMS_RECORDED"] = "Записано предметов: ",
        ["SCAN_COUNT"] = "Количество сканирований: ",
        ["LAST_SCAN"] = "Последнее сканирование: ",
        ["LAST_SCAN_DURATION"] = "Длительность последнего сканирования: ",
        ["NEVER"] = "Никогда",
        ["START_SCAN"] = "Начать сканирование",
        ["CLEAN_DATABASE"] = "Очистить базу данных",
        
        -- Раздел Сканирование
        ["SCAN_OPTIONS"] = "Настройки сканирования",
        ["AUTO_SCAN"] = "Автоматическое сканирование",
        ["AUTO_SCAN_TOOLTIP"] = "Включает автоматическое сканирование аукционного дома при его открытии.",
        ["SCAN_INTERVAL"] = "Интервал сканирования (минуты)",
        ["SCAN_INTERVAL_TOOLTIP"] = "Интервал между автоматическими сканированиями (15–60 минут).",
        ["PLAY_SCAN_COMPLETE_SOUND"] = "Звук завершения сканирования",
        ["PLAY_SCAN_COMPLETE_SOUND_TOOLTIP"] = "Проигрывает звук по завершении сканирования аукционного дома.",
        ["ARCHIVE_OPTIONS"] = "Настройки архивации",
        ["KEEP_HISTORY"] = "Сохранять историю цен",
        ["KEEP_HISTORY_TOOLTIP"] = "Сохраняет историю цен для каждого предмета.",
        ["HISTORY_DAYS"] = "Дней истории для хранения",
        ["HISTORY_DAYS_TOOLTIP"] = "Количество дней для хранения истории.",
        ["CLEAN_OLD_DATA"] = "Удалять старые данные (дней)",
        ["CLEAN_OLD_DATA_TOOLTIP"] = "Количество дней, после которых данные считаются устаревшими.",
        
        -- Раздел Отображение
        ["TOOLTIP_OPTIONS"] = "Настройки всплывающих подсказок",
        ["SHOW_AUCTION_PRICE"] = "Показывать цену аукциона",
        ["SHOW_AUCTION_PRICE_TOOLTIP"] = "Отображает последнюю отсканированную цену предмета на аукционе во всплывающей подсказке.",
        ["SHOW_VENDOR_PRICE"] = "Показывать цену торговца",
        ["SHOW_VENDOR_PRICE_TOOLTIP"] = "Отображает цену продажи предмета у торговца во всплывающей подсказке.",
        ["SHOW_AGE"] = "Показывать возраст сканирования",
        ["SHOW_AGE_TOOLTIP"] = "Показывает, как давно было выполнено последнее сканирование предмета.",
        ["COLOR_PRICES"] = "Окрашивать цены",
        ["COLOR_PRICES_TOOLTIP"] = "Отображает цены с цветами золота, серебра и меди.",
        ["UI_OPTIONS"] = "Интерфейс",
        ["SHOW_MINIMAP"] = "Показывать кнопку на миникарте",
        ["SHOW_MINIMAP_TOOLTIP"] = "Отображает кнопку на миникарте для быстрого доступа к дополнению.",
        ["OPTION_TEXT_USE_COIN_ICONS"] = "Использовать значки монет",
        ["OPTION_TOOLTIP_USE_COIN_ICONS"] = "Отображает цены со значками золотых, серебряных и медных монет.",
        
        -- Раздел Расширенные
        ["ADVANCED_OPTIONS"] = "Расширенные настройки",
        ["RESET_OPTIONS"] = "Сбросить настройки",
        ["RESET_DATABASE"] = "Сбросить базу данных",
        ["YES"] = "Да",
        ["NO"] = "Нет",
        ["NA"] = "Н/Д",
        ["RESET_CONFIRM"] = "Вы уверены, что хотите сбросить все настройки для %s?",
        ["RESET_DB_CONFIRM"] = "Вы уверены, что хотите сбросить базу данных для %s?\nВсе данные о ценах будут потеряны.",
        ["BUTTON_TEXT_RESET_OPTIONS"] = "Сбросить настройки",
        ["CONFIRM_RESET_OPTIONS_TEXT"] = "Вы уверены, что хотите сбросить все настройки %s на значения по умолчанию?",
        ["BUTTON_TEXT_RESET_DATABASE"] = "Сбросить базу данных",
        ["CONFIRM_RESET_DATABASE_TEXT"] = "ВНИМАНИЕ: Это удалит ВСЕ данные о предметах, собранные %s. Вы уверены, что хотите продолжить?",
        ["L_YES"] = "Да",
        ["L_NO"] = "Нет",
        ["L_NA"] = "Н/Д",
        
        -- Всплывающие подсказки
        ["VENDOR"] = "Торговец",
        ["AH"] = "АД",
        ["AH_STACK"] = "АД (пачка)",
        ["UNKNOWN"] = "Неизвестно",
        ["SHIFT_STACK"] = "[Shift] для цены пачки",
        
        -- Единицы времени
        ["DAYS"] = "д",
        ["HOURS"] = "ч",
        ["MINUTES"] = "мин",
        ["SECONDS"] = "с",
        
        -- Общее
        ["NOT_AVAILABLE_ABBR"] = "Н/Д", -- (Недоступно)
        ["UNIT"] = "единица",
        ["GOLD_ABBR"] = "з",
        ["SILVER_ABBR"] = "с",
        ["COPPER_ABBR"] = "м",
        
        -- Единицы времени (дополнения)
        ["TIME_MINUTES_ABBR"] = "м",
        ["TIME_HOURS_ABBR"] = "ч",
        ["TIME_DAYS_ABBR"] = "д",
        ["MINUTE_SINGULAR"] = "минута",
        ["MINUTES_PLURAL"] = "минуты",

        -- Всплывающая подсказка
        ["VENDOR_PRICE_UNIT_LABEL"] = "Цена торговца (единица):",
        ["VENDOR_PRICE_COUNT_FORMAT"] = "Торговец (%d):",
        ["AH_PRICE_UNIT_LABEL"] = "АД (единица):",
        ["AH_STACK_PRICE_COUNT_FORMAT"] = "АД (пачка %d):",
        ["LEFT_CLICK_LABEL"] = "ЛКМ:",
        ["RIGHT_CLICK_LABEL"] = "ПКМ:",
        ["ACTION_OPEN_OPTIONS"] = "Открыть настройки",
        ["ACTION_START_SCAN"] = "Начать сканирование",
        ["CLICK_TO_OPEN_OPTIONS_HINT"] = "Клик: Открыть настройки",
        ["BEEF_ITEM_NAME_FRAGMENT"] = "Говядина",
        
        -- Сообщения и команды
        ["AUTO_SCAN_DISABLED_TIMER_FORMAT"] = "Автосканирование отключено. Следующее сканирование через %s.",
        ["AUTO_SCAN_DISABLED_MANUAL_HINT_FORMAT"] = "Автосканирование отключено. Для ручного сканирования введите %s.",
        ["SCAN_INTERRUPT_REASON_AH_CLOSED"] = "Аукционный дом закрыт.",
        ["OPENING_OPTIONS_UI"] = "Открытие настроек...",
        ["DISPLAYING_STATS"] = "Отображение статистики...",
        ["STATS_TITLE_FORMAT"] = "%s - Статистика:",
        ["HELP_TITLE_FORMAT"] = "%s - Помощь:",
        ["HELP_CMD_SCAN_FORMAT"] = "%s - Сканировать аукционный дом.",
        ["HELP_CMD_OPTIONS_FORMAT"] = "%s - Показать настройки.",
        ["HELP_CMD_STATS_FORMAT"] = "%s - Показать статистику.",
        ["HELP_CMD_HELP_FORMAT"] = "%s - Показать эту помощь.",
        ["UNKNOWN_COMMAND_HINT_FORMAT"] = "Неизвестная команда. Введите %s для помощи.",
        ["OPTIONAL_LIBS_NOT_FOUND_FLOATING_BUTTON_MSG"] = "Опциональные библиотеки не найдены. Включена плавающая кнопка.",
        
        -- Ключи для MiniAH_Scan.lua
        ["PROGRESS_BAR_SCAN_COMPLETE_FORMAT"] = "Сканирование завершено - %d предметов",
        ["UNKNOWN_ERROR"] = "Неизвестная ошибка",
        ["SCAN_INTERRUPTED_FORMAT"] = "Сканирование прервано: %s",
        ["SCAN_INTERRUPT_REASON_NO_API_RESPONSE"] = "Нет ответа API.",
        ["CAN_RESCAN_IMMEDIATELY"] = "Вы можете немедленно повторить сканирование.",
        ["SCAN_COMPLETE_DEFAULT_MSG"] = "Сканирование завершено",
        
        -- Ключи для MiniAH_UI.lua (Настройки)
        ["OPTIONS_TITLE"] = "Настройки MiniAHScanner",
        ["TAB_SCAN"] = "Сканирование",
        ["TAB_STATISTICS"] = "Статистика",
        ["SCAN_FRAME_TITLE"] = "Сканирование аукционного дома",
        ["SCAN_FRAME_DESC"] = "Запустите ручное сканирование аукционного дома здесь.",
        ["SCAN_FRAME_STATUS_IDLE"] = "Статус: Ожидание",
        ["CANNOT_STOP_SCAN_IN_PROGRESS"] = "Невозможно остановить выполняющееся сканирование.",
        ["BUTTON_FORCE_SCAN"] = "Принудительное сканирование",
        ["FORCE_SCAN_STARTED_MSG"] = "%s: Запущено принудительное сканирование.",
        ["LAST_RESULTS_TITLE"] = "Последние результаты",
        ["LABEL_DURATION"] = "Длительность:",
        ["LABEL_ITEMS_SCANNED"] = "Отсканировано предметов:",
        ["SCAN_FRAME_STATUS_IN_PROGRESS_FORMAT"] = "Сканирование выполняется: Страница %d, %d предметов",
        ["BUTTON_TEXT_SCAN_IN_PROGRESS"] = "Сканирование...",
        ["STATS_FRAME_TITLE"] = "Статистика базы данных",
        ["LABEL_ITEM_COUNT"] = "Количество предметов:",
        ["LABEL_OLDEST_DATA"] = "Самые старые данные:",
        ["AVERAGE_DATA_AGE_FORMAT"] = "Средний возраст данных: %s",
        ["LABEL_TOTAL_VALUE"] = "Общая оценочная стоимость АД:",
        ["BUTTON_CLEAN_OLD_DATA"] = "Очистить старые данные",
        ["BUTTON_EXPORT_DATA"] = "Экспортировать данные",
        ["OPTION_TEXT_AUTO_SCAN"] = "Автосканирование при открытии АД",
        ["OPTION_TOOLTIP_AUTO_SCAN"] = "Автоматически сканировать аукционный дом при его открытии.",
        ["OPTION_TEXT_SHOW_AH_PRICE"] = "Показывать цену АД (подсказки)",
        ["OPTION_TOOLTIP_SHOW_AH_PRICE"] = "Отображает цену АД во всплывающих подсказках предметов.",
        ["OPTION_TEXT_SHOW_VENDOR_PRICE"] = "Показывать цену торговца (подсказки)",
        ["OPTION_TOOLTIP_SHOW_VENDOR_PRICE"] = "Отображает цену торговца во всплывающих подсказках предметов.",
        ["OPTION_TEXT_SHOW_MINIMAP_BUTTON"] = "Показывать кнопку на миникарте",
        ["OPTION_TOOLTIP_SHOW_MINIMAP_BUTTON"] = "Отображает кнопку на миникарте для быстрого доступа.",
        ["OPTIONS_RESET_MSG"] = "%s: Все настройки сброшены.",
        ["DATABASE_RESET_MSG"] = "База данных сброшена.",
        ["SIMPLE_UI_INFO_TEXT"] = "MiniAHScanner: легковесное дополнение для сканирования АД и отображения цен в подсказках.",
        ["SIMPLE_UI_STATS_TITLE"] = "Статистика:\\n",
        ["BUTTON_LAUNCH_SCAN"] = "Запустить сканирование",
        ["SIMPLE_UI_OPTIONS_TITLE"] = "Настройки:",
        ["TITLE"] = "MiniAHScanner",
        ["NEXT_SCAN_MESSAGE_FORMAT"] = "Следующее сканирование возможно через %d минут(ы) и %d секунд(ы)",
        ["CLOSE"] = "Закрыть",
        
        -- MiniAH_OptionsUI.lua Категории
        ["OPTIONS_CATEGORY_GENERAL"] = "Общие",
        ["OPTIONS_CATEGORY_SCAN"] = "Сканирование",
        ["OPTIONS_CATEGORY_HISTORY"] = "История",
        ["OPTIONS_CATEGORY_TOOLTIP"] = "Подсказки",
        ["OPTIONS_CATEGORY_EXPORT"] = "Экспорт",
        ["OPTIONS_CATEGORY_ABOUT"] = "О дополнении",
        ["OPTIONS_CATEGORY_DISPLAY"] = "Отображение",
        ["OPTIONS_CATEGORY_ADVANCED"] = "Расширенные",
        
        -- MiniAH_OptionsUI.lua Общие настройки
        ["OPTIONS_HEADER_UI"] = "Пользовательский интерфейс",
        ["OPTIONS_DROPDOWN_MINIMAP_BUTTON_POS_TEXT"] = "Положение кнопки на миникарте",
        ["OPTIONS_DROPDOWN_MINIMAP_BUTTON_POS_TOOLTIP"] = "Выберите положение кнопки на миникарте.",
        ["OPTIONS_HEADER_AUTO_SCAN"] = "Автоматическое сканирование",
        ["OPTIONS_SLIDER_SCAN_INTERVAL_TEXT"] = "Интервал автосканирования (минуты)",
        ["OPTIONS_SLIDER_SCAN_INTERVAL_TOOLTIP"] = "Определяет частоту, с которой дополнение будет пытаться автоматически сканировать аукционный дом (если опция включена).",
        
        -- MiniAH_OptionsUI.lua Настройки категории Сканирование
        ["OPTIONS_SCAN_HEADER_SCAN_OPTIONS"] = "Настройки сканирования",
        ["OPTION_TEXT_PLAY_SCAN_SOUND"] = "Проигрывать звук по завершении сканирования",
        ["OPTION_TOOLTIP_PLAY_SCAN_SOUND"] = "Проигрывает звук, когда сканирование аукционного дома завершено.",
        ["OPTIONS_SCAN_HEADER_ARCHIVE"] = "Настройки архивации",
        ["OPTION_TEXT_KEEP_HISTORY"] = "Сохранять историю сканирований",
        ["OPTION_TOOLTIP_KEEP_HISTORY"] = "Сохраняет историю цен отсканированных предметов.",
        ["OPTIONS_SLIDER_HISTORY_DAYS_TEXT"] = "Дней истории для хранения",
        ["OPTIONS_SLIDER_HISTORY_DAYS_TOOLTIP"] = "Количество дней для хранения истории цен. После этого старые данные будут удалены, если включена очистка.",
        ["OPTIONS_SLIDER_CLEAN_DAYS_TEXT"] = "Очищать данные старше (дней)",
        ["OPTIONS_SLIDER_CLEAN_DAYS_TOOLTIP"] = "Автоматически очищает данные сканирования, старше указанного количества дней. Установите 0 для отключения.",
        
        -- MiniAH_OptionsUI.lua Настройки категории Отображение
        ["OPTIONS_DISPLAY_HEADER_TOOLTIP"] = "Настройки всплывающих подсказок",
        ["TOOLTIP_OPTIONS"] = "Настройки всплывающих подсказок",
        ["OPTION_TEXT_SHOW_AUCTION_PRICE"] = "Показывать цену аукциона",
        ["OPTION_TOOLTIP_SHOW_AUCTION_PRICE"] = "Отображает последнюю отсканированную цену предмета на аукционе во всплывающей подсказке.",
        ["OPTION_TEXT_SHOW_VENDOR_PRICE"] = "Показывать цену торговца",
        ["OPTION_TOOLTIP_SHOW_VENDOR_PRICE"] = "Отображает цену продажи предмета у торговца во всплывающей подсказке.",
        ["OPTION_TEXT_SHOW_AUCTION_AGE"] = "Показывать возраст сканирования",
        ["OPTION_TOOLTIP_SHOW_AUCTION_AGE"] = "Показывает, как давно было выполнено последнее сканирование предмета.",
        ["OPTION_TEXT_COLOR_PRICES"] = "Окрашивать цены",
        ["OPTION_TOOLTIP_COLOR_PRICES"] = "Отображает цены с цветами золота, серебра и меди.",
        ["OPTION_TEXT_USE_COIN_ICONS"] = "Использовать значки монет",
        ["OPTION_TOOLTIP_USE_COIN_ICONS"] = "Отображает цены со значками золотых, серебряных и медных монет.",
        
        -- MiniAH_OptionsUI.lua Настройки категории Расширенные
        ["OPTIONS_ADVANCED_HEADER_GENERAL"] = "Общие расширенные настройки",
        ["BUTTON_TEXT_RESET_OPTIONS"] = "Сбросить настройки",
        ["CONFIRM_RESET_OPTIONS_TEXT"] = "Вы уверены, что хотите сбросить все настройки %s на значения по умолчанию?",
        ["BUTTON_TEXT_RESET_DATABASE"] = "Сбросить базу данных",
        ["CONFIRM_RESET_DATABASE_TEXT"] = "ВНИМАНИЕ: Это удалит ВСЕ данные о предметах, собранные %s. Вы уверены, что хотите продолжить?",
        ["L_YES"] = "Да",
        ["L_NO"] = "Нет",
        ["L_NA"] = "Н/Д",
        
        -- Панель сканирования (Обновления и результаты)
        ["LAST_RESULTS_TITLE"] = "Последние результаты",
        ["LABEL_DURATION"] = "Длительность:",
        ["LABEL_ITEMS_SCANNED"] = "Отсканировано предметов:",
        ["SCAN_FRAME_STATUS_IN_PROGRESS_FORMAT"] = "Сканирование выполняется: Страница %d, %d предметов",
        ["BUTTON_TEXT_SCAN_IN_PROGRESS"] = "Сканирование...",
        
        -- Панель статистики
        ["STATS_FRAME_TITLE"] = "Подробная статистика",
        ["LABEL_ITEM_COUNT"] = "Записано предметов:",
        ["LABEL_OLDEST_DATA"] = "Самые старые данные:",
        ["AVERAGE_DATA_AGE_FORMAT"] = "Средний возраст данных: %s",
        ["LABEL_TOTAL_VALUE"] = "Общая оценочная стоимость АД:",
        ["BUTTON_CLEAN_OLD_DATA"] = "Очистить старые данные",
        ["BUTTON_EXPORT_DATA"] = "Экспортировать данные",
}

-- Слияние русских переводов в глобальную таблицу
for key, value in pairs(russian_translations) do
    MiniAH.localizations["ruRU"][key] = value
end
