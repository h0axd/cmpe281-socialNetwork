
SET @iLangId = (SELECT `ID` FROM `sys_localization_languages` WHERE `Name` = 'ru');

INSERT INTO `sys_email_templates` (`Name`, `Subject`, `Body`, `Desc`, `LangID`) VALUES
('t_Activation', 'Ваш профиль активирован', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>Ваш профиль был рассмотрен и активирован!</p>\n\n<p>Ваш аккаунт: <a href="<Domain>member.php"><Domain>member.php</a></p>\n\n<p>Идентификационный номер пользователя: <b><recipientID></b></p>\n\n<p>Ваш имейл: <span style="color:#FF6633"><Email></span></p>\n\n<bx_include_auto:_email_footer.html />', 'Уведомление об активации профиля.', @iLangId),
('t_AdminEmail', 'Администратор сайта <SiteName>: <MessageSubject>', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>Администратор сайта <a href="<Domain>"><SiteName></a> отправил Вам сообщение:</p>\n\n<hr>\n<p style="color:#3B5C8E"><MessageText></p>\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Сообщение от администратора сайта.', @iLangId),
('t_AdminStats', 'Этот контент ожидает результата модерации', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p><MessageText></p>\n\n<p>Зайдите в <a href="<ViewLink>">административную панель</a>, чтобы вынести решение по контенту.</p>\n\n<bx_include_auto:_email_footer.html />', 'Уведомление администратора о контенте, ожидающем результата модерации.', @iLangId),
('t_Compose', 'У Вас новое сообщение', '<bx_include_auto:_email_header.html />\n\n<p><b>Здравстуйте, <RealName></b>,</p>\n\n<p>Вы получили сообщение от <a href="<ProfileUrl>"><ProfileReference></a>!</p>\n\n<p>Зайдите в свой аккаунт, чтобы прочитать и ответить: <a href="<Domain>member.php"><Domain>member.php</a></p>\n\n<bx_include_auto:_email_footer.html />', 'Уведомление о новом сообщении без текста сообщения.', @iLangId),
('t_Confirmation', 'Подтверждение электронного адреса', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>Спасибо Вам за регистрацию на <SiteName>!</p>\n\n<p>Нажмите, чтобы подтвердить свой электронный адрес:\n<a href="<ConfirmationLink>"><ConfirmationLink></a></p>\n\n<p>КОД ПОДТВЕРЖДЕНИЯ: <ConfCode></p>\n\n<bx_include_auto:_email_footer.html />', 'Сообщение о подтверждении электронного адреса', @iLangId),
('t_CupidMail', 'Вам подходят', '<bx_include_auto:_email_header.html />\n\n<p><b>Здравствуйте, <RealName></b>,</p>\n\n<p>Взгляните на нескольких пользователей <SiteName>, которые могут идеально Вам подойти:</p>\n\n<p><a href="<MatchProfileLink>"><MatchProfileLink></a></p>\n\n\n<bx_include_auto:_email_footer.html />', 'Уведомление о подходящих профилях.', @iLangId),
('t_Forgot', 'Пароль к Вашему аккаунту', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>Ваш идентификационный номер: <b><recipientID></b></p>\n\n<p>Ваш пароль: <b><Password></b></p>\n\n<p>Войти на сайт можно здесь: <a href="<Domain>member.php"><Domain>member.php</a></p>\n\n\n<bx_include_auto:_email_footer.html />', 'Запрос восстановления пароля', @iLangId),
('t_FreeEmail', 'Электронный адрес пользователя', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>вот контактная информация о <profileNickName>:</p> \n\n<p><profileContactInfo></p>\n\n\n<bx_include_auto:_email_footer.html />', 'Запрошенный электронный адрес пользователя', @iLangId),
('t_FriendRequest', 'Предложение дружить', '<bx_include_auto:_email_header.html />\n\n    <p><b>Дорогой <Recipient></b>,</p>\n   \n    <p><a href="<SenderLink>"><Sender></a> хочет подружиться с Вами. <a href="<RequestLink>">Ответить</a>.</p>\n    <br /> \n    <bx_include_auto:_email_footer.html />', 'Предожение дружить', @iLangId),
('t_FriendRequestAccepted', 'Приглашение дружить принято', '<bx_include_auto:_email_header.html />\n\n    <p><b>Дорогой <Recipient></b>,</p>\n    \n    <p><a href="<SenderLink>"><Sender></a> принял Ваше предложение дружить.</p>\n    <br /> \n    <bx_include_auto:_email_footer.html />', 'Приглашение дружить принято', @iLangId),
('t_MemChanged', 'Ваше членство изменено', '<bx_include_auto:_email_header.html />\n\n<p><b>Здравствуйте, <RealName></b>,</p>\n\n<p>Ваше членство было изменено на: <b><a href="<Domain>modules/?r=membership/index/"><MembershipLevel></a></b></p>\n\n\n<bx_include_auto:_email_footer.html />', 'Членство изменено', @iLangId),
('t_MemExpiration', 'Ваше членство скоро заканчивается', '<bx_include_auto:_email_header.html />\n\n<p><b>Здравствуйте, <RealName></b>,</p>\n\n<p>Ваше членство <SiteName> <MembershipName> заканчивается через <ExpireDays> дней.</p>\n\n<p>ОБРАТИТЕ ВНИМАНИЕ: -1 означает, что оно уже закончилось.</p>\n\n\n<p><a href="<Domain>modules/?r=membership/index/">Обновить членство</a></p>\n<bx_include_auto:_email_footer.html />', 'Уведомление об окончании срока действия членства', @iLangId),
('t_Message', 'У Вас новое сообщение', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p><a href="<ProfileUrl>"><ProfileReference></a> прислал Вам сообщение: </p>\n\n<hr>\n<p><MessageText></p>\n<hr>\n\n<p>Перейдите в свой аккаунт, чтобы ответить: <a href="<Domain>member.php"><Domain>member.php</a></p>\n\n<bx_include_auto:_email_footer.html />', 'Уведомление о новом сообщении с текстом сообщения', @iLangId),
('t_MessageCopy', 'Копия Вашего сообщения: <your subject here>', '<bx_include_auto:_email_header.html />\n\n<p>Вы писали:</p>\n<hr>\n<p><your message here></p>\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Копия сообщения', @iLangId),
('t_sbsProfileComments', 'Новые комментарии к профилю', '<bx_include_auto:_email_header.html />\n\n <p><b>Дорогой <RealName></b>,</p>\n\n<p>К профилю, на который Вы подписаны, добавлены <a href="<ViewLink>">новые комментарии</a>.</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комметарии к профилю', @iLangId),
('t_sbsProfileEdit', 'Подписка: редактирование профиля', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p><a href="<ViewLink>">Профиль, на который Вы подписаны,</a> был отредактирован.</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на оповещение о редактировании профиля.', @iLangId),
('t_SpamReport', 'Отчёт о спаме в профиле', '<bx_include_auto:_email_header.html />\n\n<p><a href="<Domain>profile.php?ID=<reporterID>"><reporterNick></a> пожаловался на СПАМ в профиле:  <a href="<Domain>profile.php?ID=<spamerID>"><b><spamerNick></b></a></p>\n\n<bx_include_auto:_email_footer.html />', 'Отчёт о спаме в профиле', @iLangId),
('t_SpamReportAuto', '<SiteName> Автоматический отчёт о спаме', '<bx_include_auto:_email_header.html />\n\n\n<b>Профиль:</b> <a href="<SpammerUrl>"><SpammerNickName></a><br />\n\n<b>Страница:</b> <Page><br />\n\n<b>GET-переменные:</b>\n<pre>\n<Get>\n</pre>\n\n<b>Содержимое Спама:</b>\n<pre>\n<SpamContent>\n</pre>\n\n\n<bx_include_auto:_email_footer.html />', 'Автоматический отчёт о спаме', @iLangId),
('t_Subscription', 'Ваша подписка', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>Вы подписались на <a href="<ViewLink>"><Subscription></a></p>\n\n<p>Чтобы отменить подписку, нажмите сюда: <a href="<SysUnsubscribeLink>"><SysUnsubscribeLink></a></p>\n\n<bx_include_auto:_email_footer.html />', 'Подтверждение подписки', @iLangId),
('t_TellFriend', 'Зацени!', '<bx_include_auto:_email_header.html />\n\n\n<p>Думаю, тебе будет интересно: <a href="<Link>"><Link></a><br />\n---<br />\n<a href="<SenderLink>"><SenderName></a>\n</p>\n\n<bx_include_auto:_email_footer.html />', 'Приглашение друга', @iLangId),
('t_TellFriendProfile', 'Взгляни на этот профиль', '<bx_include_auto:_email_header.html />\n\n\n\n<p>Взгляни на этот профиль: <a href="<Link>"><Link></a><br />\n---<br />\n<a href="<SenderLink>"><SenderName></a>\n</p>\n\n<bx_include_auto:_email_footer.html />', 'Сообщение о профиле другу', @iLangId),
('t_UserConfirmed', 'Пользователь подтвердил имейл', '<bx_include_auto:_email_header.html />\n\n<p>Пользователь: <RealName></p> \n<p>Имейл: <Email></p> \n\n<bx_include_auto:_email_footer.html />', 'Уведомление администратора о том, что пользователь подтвердил свой имейл', @iLangId),
('t_UserJoined', 'Появился новый пользователь', '<bx_include_auto:_email_header.html />\n\n<p>Новый пользователь: <RealName></p> \n<p>Имейл: <Email></p> \n\n<bx_include_auto:_email_footer.html />', 'Уведомление администратора о новом пользователе', @iLangId),
('t_VKiss', 'Уведомление о приветствии', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p><ProfileReference> поприветствовал Вас!</p>\n\n<p><ProfileReference>, возможно, хочет только поздороваться, или же Вы его серьёзно заинтересовали!\n</p>\n\n<bx_include_auto:_email_footer.html />', 'Уведомление о приветствии', @iLangId),
('t_VKiss_visitor', 'Уведомление о приветствии', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>Посетитель нашего сайта поприветствовал Вас!</p>\n\n\n<bx_include_auto:_email_footer.html />', 'Уведомление о приветствии от посетителя', @iLangId),
('t_ModulesUpdates', '<SiteName> обновления для модулей', '<bx_include_auto:_email_header.html />\r\n\r\n<p>Доступные обновления для модулей:</p>\r\n\r\n<p><MessageText></p>\r\n\r\n<p>Чтобы установить обновления, нужно зайти в панель администратора -> Модули -> Добавить & Настроить -> Проверить на обновления. Все доступные обновления будут загружены автоматически.</p>\r\n\r\n<bx_include_auto:_email_footer.html />', 'Сообщение администратору об обновлениях для модулей', @iLangId),


('bx_events_admin_become_fan', 'Вы больше не администратор события', '<bx_include_auto:_email_header.html />\n\n <p>Здравствуйте, <NickName>,</p> <p>Ваш статус администратора события <a href="<EntryUrl>"><EntryTitle></a> был ликвидирован автором события.</p> \n\n<bx_include_auto:_email_footer.html />', 'Ликвидация статуса администратора события', @iLangId),
('bx_events_broadcast', '<BroadcastTitle>', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p>Администратор события <a href="<EntryUrl>"><EntryTitle></a> прислал сообщение:</p> <hr><BroadcastMessage><hr> \n\n<bx_include_auto:_email_footer.html />', 'Рассылка о событии', @iLangId),
('bx_events_fan_become_admin', 'Вы стали администратором события', '<bx_include_auto:_email_header.html />\n\n <p>Здравствуйте, <NickName>,</p> \n<p>Вы получили статус администратора события <a href="<EntryUrl>"><EntryTitle></a>.\n</p>\n\n<bx_include_auto:_email_footer.html />', 'Получение статуса администратора события', @iLangId),
('bx_events_fan_remove', 'Вы были удалены из числа участников события', '<bx_include_auto:_email_header.html />\n\n <p>Здравствуйте, <NickName>,</p> <p>Вы были удалены из числа участников события <a href="<EntryUrl>"><EntryTitle></a> администратором события.</p> \n\n<bx_include_auto:_email_footer.html />', 'Удаление из числа участников события', @iLangId),
('bx_events_invitation', 'Приглашение в событие: <EventName>', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p><a href="<InviterUrl>"><InviterNickName></a> пригласил Вас в это событие:</p>\n\n<hr>\n<pre>\n<InvitationText>\n</pre>\n<hr>  \n\n<p>\nИнформация о событии:<br /> \nИмя: <EventName><br /> \nМестоположение: <EventLocation><br /> \nВремя: <EventStart><br /> <br />\n\n<a href="<EventUrl>">Узнать больше</a>\n</p> \n\n<bx_include_auto:_email_footer.html />', 'Приглашение в событие', @iLangId),
('bx_events_join_confirm', 'Ваш запрос на присоединение к событию был одобрен', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p>Поздравляем! Ваш запрос на присоединение к событию  <a href="<EntryUrl>"><EntryTitle></a> был одобрен администратором события.</p>\n \n<bx_include_auto:_email_footer.html />', 'Одобрение запроса на присоединение к событию', @iLangId),
('bx_events_join_reject', 'Ваш запрос на присоединение к событию был отклонен', '<bx_include_auto:_email_header.html />\n\n <p>Здравствуйте, <NickName>,</p> \n\n<p>Ваш запрос на присоединение к событию <a href="<EntryUrl>"><EntryTitle></a> был отклонен администратором события.</p>\n\n<bx_include_auto:_email_footer.html />', 'Отклонение запроса на присоединение к событию', @iLangId),
('bx_events_join_request', 'Новый запрос на присоединение к событию', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p>Есть новый запрос о присоединении к Вашему событию: <a href="<EntryUrl>"><EntryTitle></a>.</p>\n\n<bx_include_auto:_email_footer.html />', 'Новый запрос на присоединение к событию', @iLangId),
('bx_events_sbs', 'Изменение сведений о событии', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p>Сведения о событии <a href="<ViewLink>"><EntryTitle></a> изменились: <br /> <ActionName> </p> \n<hr>\n<p>Отменить эту подписку: <a href="<UnsubscribeLink>"><UnsubscribeLink></a></p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на событие', @iLangId),


('bx_forum_notifier', 'Новое сообщение в: <TopicTitle>', '<bx_include_auto:_email_header.html />\n\n    <p>Здравствуйте, <Recipient>,</p> \n    <p><a href="<PosterUrl>"><PosterNickName></a> опубликовал новое сообщение в теме "<TopicTitle>":</p> \n    <hr> <ReplyText> <hr> \n    \n <bx_include_auto:_email_footer.html />', 'Уведомление о новом сообщении в отмеченной теме', @iLangId),


('bx_groups_admin_become_fan', 'Вы больше не администратор группы', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p>Ваш статус администратора группы <a href="<EntryUrl>"><EntryTitle></a> был ликвидирован создателем группы.</p> \n\n<bx_include_auto:_email_footer.html />', 'Ликвидация статуса администратора группы', @iLangId),
('bx_groups_broadcast', '<BroadcastTitle>', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n<p>Сообщение от администратора группы <a href="<EntryUrl>"><EntryTitle></a>:</p> <pre><hr><BroadcastMessage></pre> <hr> \n\n<bx_include_auto:_email_footer.html />', 'Рассылка о группе', @iLangId),
('bx_groups_fan_become_admin', 'Вы стали администратором группы', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p>Вы получили статус администратора группы <a href="<EntryUrl>"><EntryTitle></a>.</p>\n\n<bx_include_auto:_email_footer.html />', 'Получение статуса администратора группы', @iLangId),
('bx_groups_fan_remove', 'Вы были удалены из числа фанатов группы', '<bx_include_auto:_email_header.html /> \n\n<p>Здравствуйте, <NickName>,</p> <p>Ваш профиль был удален из числа фанатов группы <a href="<EntryUrl>"><EntryTitle></a> администратором группы.</p> \n\n<bx_include_auto:_email_footer.html />', 'Удаление из числа фанатов группы', @iLangId),
('bx_groups_invitation', 'Приглашение в группу <GroupName>', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p><a href="<InviterUrl>"><InviterNickName></a> пригласил Вас в группу <a href="<GroupUrl>"><GroupName></a>.</p> \n\n<p>\n<hr><InvitationText><hr> \n</p>\n\n<bx_include_auto:_email_footer.html />', 'Приглашение в группу', @iLangId),
('bx_groups_join_confirm', 'Ваш запрос на присоединение к группе был одобрен', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n<p>Ваш запрос на присоединение к группе <a href="<EntryUrl>"><EntryTitle></a> был одобрен.</p> \n\n<bx_include_auto:_email_footer.html />', 'Одобрение запроса на присоединение к группе', @iLangId),
('bx_groups_join_reject', 'Ваш запрос на присоединение к группе был отклонен', '<bx_include_auto:_email_header.html />\n\n <p>Здравствуйте, <NickName>,</p> <p>Ваш запрос на присоединение к группе <a href="<EntryUrl>"><EntryTitle></a> был отклонен администратором группы.</p>\n \n<bx_include_auto:_email_footer.html />', 'Отклонение запроса на присоединение к группе', @iLangId),
('bx_groups_join_request', 'Запрос на присоединение к Вашей группе', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p>Получен новый запрос на присоединение к Вашей группе: <a href="<EntryUrl>"><EntryTitle></a>.</p> \n\n<bx_include_auto:_email_footer.html />', 'Запрос на присоединение к группе', @iLangId),
('bx_groups_sbs', 'Изменение сведений о группе', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p>Сведения о группе <a href="<ViewLink>"><EntryTitle></a> изменились: <br /> <ActionName> </p> \n<hr>\n<p>Отменить эту подписку: <a href="<UnsubscribeLink>"><UnsubscribeLink></a></p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на группу', @iLangId),


('bx_store_broadcast', '<BroadcastTitle>', '<bx_include_auto:_email_header.html />\n\n <p>Здравствуйте, <NickName>,</p> \n\n<p>Администратор товара <a href="<EntryUrl>"><EntryTitle></a> посылает следующее сообщение:</p> \n<hr>\n<BroadcastMessage>\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Рассылка о магазине', @iLangId),
('bx_store_sbs', 'Изменение сведений о товаре', '<bx_include_auto:_email_header.html />\n\n<p>Здравствуйте, <NickName>,</p> \n\n<p>Сведения о товаре <a href="<ViewLink>"><EntryTitle></a> изменились: <br /> <ActionName> </p> \n<hr>\n<p>Отменить эту подписку: <a href="<UnsubscribeLink>"><UnsubscribeLink></a></p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на товар', @iLangId),


('t_bx_files_report', '<SenderNickName> пожаловался на файл', '<bx_include_auto:_email_header.html />\n\n<p>Получена жалоба на <a href="<MediaUrl>"><MediaType></a></p>\n\n<hr>\n<UserExplanation>\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Жалоба на файл', @iLangId),
('t_bx_files_share', 'Зацените!', '<bx_include_auto:_email_header.html />\n\n<p><b>Здравствуйте</b>,</p>\n\n<p><SenderNickName> рекомендует Вам <a href="<MediaUrl>"><MediaType></a>!</p>\n\n<hr>\n\n<UserExplanation>\n\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Рекомендация файла', @iLangId),
('t_sbs_bx_files_comments', 'Новые комментарии к файлу', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>К <a href="<ViewLink>">файлу, на который Вы подписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комментарии к файлу', @iLangId),


('t_bx_photos_report', '<SenderNickName> пожаловался на фото', '<bx_include_auto:_email_header.html />\n\n<p>Получена жалоба на <a href="<MediaUrl>"><MediaType></a></p>\n\n<hr>\n\n<UserExplanation>\n\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Жалоба на фото', @iLangId),
('t_bx_photos_share', 'Зацените!', '<bx_include_auto:_email_header.html />\n\n<p><b>Здравствуйте</b>,</p>\n\n<p><SenderNickName> рекомендует Вам <a href="<MediaUrl>"><MediaType></a>!</p>\n\n<hr>\n\n<UserExplanation>\n\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Рекомендация фотографии', @iLangId),
('t_sbs_bx_photos_comments', 'Новые комментарии к фотографии', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<br /><p>К <a href="<ViewLink>">фотографии, на которую Вы подписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комментарии к фотографии', @iLangId),


('t_bx_sounds_report', '<SenderNickName> пожаловался на аудиозапись', '<bx_include_auto:_email_header.html />\n\n<p>Получена жалоба на <a href="<MediaUrl>"><MediaType></a></p>\n\n<hr>\n\n<UserExplanation>\n\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Жалоба на аудиозапись', @iLangId),
('t_bx_sounds_share', 'Зацените!', '<bx_include_auto:_email_header.html />\n\n<p><b>Здравствуйте</b>,</p>\n\n<p><SenderNickName> рекомендует Вам <a href="<MediaUrl>"><MediaType></a>!</p>\n\n<hr>\n\n<UserExplanation>\n\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Рекомендация аудиозаписи', @iLangId),
('t_sbs_bx_sounds_comments', 'Новые комментарии к аудиозаписи', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<br /><p>К <a href="<ViewLink>">аудиозаписи, на которую Вы подписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комментарии к аудиозаписи', @iLangId),


('t_bx_videos_report', '<SenderNickName> пожаловался на видеозапись', '<bx_include_auto:_email_header.html />\n\n<p>Получена жалоба на <a href="<MediaUrl>"><MediaType></a></p>\n\n<hr>\n\n<UserExplanation>\n\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Жалоба на видеозапись', @iLangId),
('t_bx_videos_share', 'Зацените!', '<bx_include_auto:_email_header.html />\n\n<p><b>Здравствуйте</b>,</p>\n\n<p><SenderNickName> рекомендует Вам <a href="<MediaUrl>"><MediaType></a>!</p>\n\n<hr>\n\n<UserExplanation>\n\n<hr>\n\n<bx_include_auto:_email_footer.html />', 'Рекомендация видеозаписи', @iLangId),
('t_sbs_bx_videos_comments', 'Новые комментарии к видеозаписи', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<br /><p>К <a href="<ViewLink>">видеозаписи, на которую Вы подписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комментарии к видеозаписи', @iLangId),


('t_fb_connect_password_generated', 'Сгенерирован новый пароль', '<bx_include_auto:_email_header.html />\n\n<p><b>Здравствуйте <NickName></b>, \n\n<p>\nВаш новый пароль - <b><NewPassword></b></p>\n\n<bx_include_auto:_email_footer.html />', 'Генерация пароля для Facebook connect', @iLangId),


('t_sbsAdsComments', 'Новые комментарии к объявлению', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>В <a href="<ViewLink>">объявление, на которое Вы подписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Сообщение подписки на новые комментарии к объявлению', @iLangId),
('t_BuyNow', 'Ваша покупка', '<bx_include_auto:_email_header.html />\n\nТовар: <a href="<ShowAdvLnk>"><Subject></a><br/><br/>\n\nИмя продавца: <NickName><br/>\nИмейл продавца: <EmailS><br/><br/>\n\nИмя покупателя: <NickNameB><br/>\nИмейл покупателя: <EmailB><br/><br/>\n\nИнформация о цене: <sCustDetails><br/><br/>\n\nСвяжитесь непосредственно с <Who>, чтобы обсудить оплату и доставку. \n\n<bx_include_auto:_email_footer.html />', 'Уведомление о покупке', @iLangId),
('t_BuyNowS', 'Ваш товар был продан', '<bx_include_auto:_email_header.html />\n\nТовар: <a href="<ShowAdvLnk>"><Subject></a><br/><br/>\n\nИмя продавца: <NickName><br/>\nИмейл продавца: <EmailS><br/><br/>\n\nИмя покупателя: <NickNameB><br/>\nИмейл покупателя: <EmailB><br/><br/><br/>\n\nИнформация о цене: <sCustDetails><br/><br/>\n\nСвяжитесь непосредственно с <Who>, чтобы обсудить оплату и доставку. \n\n<bx_include_auto:_email_footer.html />', 'Уведомление продавца о продаже товара', @iLangId),


('t_sbsArticlesComments', 'Новые комментарии к статье', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>К <a href="<ViewLink>">статье, на которую Вы полписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комментарии к статье', @iLangId),


('t_sbsBlogpostsComments', 'Новые комментарии к блогу', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>К <a href="<ViewLink>">блогу, на который Вы полписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комментарии к блогу', @iLangId),


('t_sbsFeedbackComments', 'Новые комментарии к отзыву', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>К <a href="<ViewLink>">отзыву, на который Вы подписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комментарии к отзыву', @iLangId),


('t_sbsNewsComments', 'Новые комментарии к новости', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<br /><p>К <a href="<ViewLink>">новости, на которую Вы подписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комментарии к новости', @iLangId),


('t_sbsPollComments', 'Новые комментарии к опросу', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>К <a href="<ViewLink>">опросу, на который Вы подписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комментарии к опросу', @iLangId),


('t_sbsSitesComments', 'Новые комментарии к сайту', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>К <a href="<ViewLink>">сайту, на который Вы подписаны, добавлены новые комментарии</a>!</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые комментарии к сайту', @iLangId),


('t_sbsWallUpdates', 'Новое событие в шкале', '<bx_include_auto:_email_header.html />\n\n<p><b>Дорогой <RealName></b>,</p>\n\n<p>\nВ шкале, на которую Вы подписаны, есть новые события!\n</p>\n\n<p>\n<a href="<ViewLink>">Смотреть</a>\n</p>\n\n<bx_include_auto:_email_footer.html />', 'Подписка на новые события в шкале', @iLangId);