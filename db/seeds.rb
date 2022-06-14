users = User.create!(
  [
    { name: 'Alexandr', email: 'alexandr@mail.ru' },
    { name: 'Anna', email: 'anna@mail.ru' },
    { name: 'Vladimir', email: 'vladimir@mail.ru' }
  ]
)

categories = Category.create!(
  [
    { title: 'geography' },
    { title: 'history' },
    { title: 'astronomy' }
  ]
)

tests = Test.create!(
  [
    { title: 'geography_easy', level: 1, category_id: categories[0].id, author_id: users.sample.id },
    { title: 'geography_medium', level: 2, category_id: categories[0].id, author_id: users.sample.id },
    { title: 'history_of_Rome_easy', level: 1, category_id: categories[1].id, author_id: users.sample.id },
    { title: 'history_of_Rome_hard', level: 3, category_id: categories[1].id, author_id: users.sample.id },
    { title: 'astronomy', level: 3, category_id: categories[2].id, author_id: users.sample.id }
  ]
)

questions = Question.create!(
  [
    { body: 'Какой остров является самым большим в мире?', test_id: tests[0].id },
    { body: 'Через какую страну не проходит нулевой (Гринвичский) меридиан?', test_id: tests[0].id },
    { body: 'Как называется самый высокий вулкан Африки?', test_id: tests[0].id },
    { body: 'Название какой страны совпадает с именем ее столицы?', test_id: tests[1].id },
    { body: 'Как называется единственная река, вытекающая из озера Байкал?', test_id: tests[1].id },
    { body: 'Какое животное спасло жизнь младенцам Ромулу и Рему?', test_id: tests[2].id },
    { body: 'Какое слово, произнесенное в сенате, налагало запрет на принятие закона?', test_id: tests[2].id },
    { body: 'Какой римский город был разрушен в результате извержения вулкана Везувий?', test_id: tests[3].id },
    { body: 'Что делал Гай Юлий Цезарь во время восстания рабов под предводительством Спартака?',
      test_id: tests[3].id },
    { body: "Почему войны с Карфагеном назывались 'пунические'?", test_id: tests[3].id },
    { body: 'Кто разработал гелиоцентрическую модель мира?', test_id: tests[4].id },
    { body: 'Астрономическая единица — это: ', test_id: tests[4].id },
    { body: 'Какой спутник является самым крупным в Солнечной системе?', test_id: tests[4].id }
  ]
)

answers = Answer.create!(
  [
    { body: 'Мадагаскар', question_id: questions[0].id },
    { body: 'Австралия', question_id: questions[0].id },
    { body: 'Гренландия', correct: true, question_id: questions[0].id },
    { body: 'Калимантан', question_id: questions[0].id },
    { body: 'Францию', question_id: questions[1].id },
    { body: 'Марокко', correct: true, question_id: questions[1].id },
    { body: 'Гану', question_id: questions[1].id },
    { body: 'Великобританию', question_id: questions[1].id },
    { body: 'Кракатау', question_id: questions[2].id },
    { body: 'Эйяфьятлайокудль', question_id: questions[2].id },
    { body: 'Килиманджаро', correct: true, question_id: questions[2].id },
    { body: 'Этна', question_id: questions[2].id },
    { body: 'Джибути', correct: true, question_id: questions[3].id },
    { body: 'Никарагуа', question_id: questions[3].id },
    { body: 'Парагвай', question_id: questions[3].id },
    { body: 'Гвинея-Бисау', question_id: questions[3].id },
    { body: 'Обь', question_id: questions[4].id },
    { body: 'Ангара', correct: true, question_id: questions[4].id },
    { body: 'Енисей', question_id: questions[4].id },
    { body: 'Амур', question_id: questions[4].id },
    { body: 'Собака', question_id: questions[5].id },
    { body: 'дикая кошка', question_id: questions[5].id },
    { body: 'волчица', correct: true, question_id: questions[5].id },
    { body: 'львица', question_id: questions[5].id },
    { body: 'Нелегально', question_id: questions[6].id },
    { body: 'анафема', question_id: questions[6].id },
    { body: 'интердикт', question_id: questions[6].id },
    { body: 'вето', correct: true, question_id: questions[6].id },
    { body: 'Канны', question_id: questions[7].id },
    { body: 'Капуя', question_id: questions[7].id },
    { body: 'Помпеи', correct: true, question_id: questions[7].id },
    { body: 'Неаполь', question_id: questions[7].id },
    { body: 'история об этом умалчивает', correct: true, question_id: questions[8].id },
    { body: 'воевал в Западной Галлии', question_id: questions[8].id },
    { body: 'руководил подавлением восстания', question_id: questions[8].id },
    { body: 'находился в ссылке', question_id: questions[8].id },
    { body: 'по имени карфагенского царя', question_id: questions[9].id },
    { body: 'по названию области, где шла война', question_id: questions[9].id },
    { body: 'по имени карфагенян', correct: true, question_id: questions[9].id },
    { body: "'Пуническая' означало 'народная, всеобщая'", question_id: questions[9].id },
    { body: 'Клавдий Птолемей', question_id: questions[10].id },
    { body: 'Николай Коперник', correct: true, question_id: questions[10].id },
    { body: 'Эдвин Хаббл', question_id: questions[10].id },
    { body: 'Галилео Галилей', question_id: questions[10].id },
    { body: 'Расстояние, которое свет проходит за год', question_id: questions[11].id },
    { body: 'Расстояние от Земли до Солнца', correct: true, question_id: questions[11].id },
    { body: 'Радиус Солнца', question_id: questions[11].id },
    { body: 'Расстояние от Земли до Марса', question_id: questions[11].id },
    { body: 'Ганимед', correct: true, question_id: questions[12].id },
    { body: 'Луна', question_id: questions[12].id },
    { body: 'Титан', question_id: questions[12].id },
    { body: 'Ио', question_id: questions[12].id }
  ]
)

UserTest.create!(
    [
        {user_id: 1, test_id: 1},
        {user_id: 1, test_id: 2},
        {user_id: 1, test_id: 5},
        {user_id: 2, test_id: 3},
        {user_id: 2, test_id: 4},
    ]
)
