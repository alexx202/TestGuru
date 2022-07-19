
categories = Category.create!(
  [
    { title: 'geography' },
    { title: 'history' },
    { title: 'astronomy' }
  ]
)

tests = Test.create!(
  [
    { title: 'geography_easy', level: 1, category: categories[0], author: users[0] },
    { title: 'geography_medium', level: 2, category: categories[0], author: users[0] },
    { title: 'history_of_Rome_easy', level: 1, category: categories[1], author: users[1] },
    { title: 'history_of_Rome_hard', level: 3, category: categories[1], author: users[1] },
    { title: 'astronomy', level: 3, category: categories[2], author: users[1] }
  ]
)

questions = Question.create!(
  [
    { body: 'Какой остров является самым большим в мире?', test: tests[0] },
    { body: 'Через какую страну не проходит нулевой (Гринвичский) меридиан?', test: tests[0] },
    { body: 'Как называется самый высокий вулкан Африки?', test: tests[0] },
    { body: 'Название какой страны совпадает с именем ее столицы?', test: tests[1] },
    { body: 'Как называется единственная река, вытекающая из озера Байкал?', test: tests[1] },
    { body: 'Какое животное спасло жизнь младенцам Ромулу и Рему?', test: tests[2] },
    { body: 'Какое слово, произнесенное в сенате, налагало запрет на принятие закона?', test: tests[2] },
    { body: 'Какой римский город был разрушен в результате извержения вулкана Везувий?', test: tests[3] },
    { body: 'Что делал Гай Юлий Цезарь во время восстания рабов под предводительством Спартака?',
      test: tests[3] },
    { body: "Почему войны с Карфагеном назывались 'пунические'?", test: tests[3] },
    { body: 'Кто разработал гелиоцентрическую модель мира?', test: tests[4] },
    { body: 'Астрономическая единица — это: ', test: tests[4] },
    { body: 'Какой спутник является самым крупным в Солнечной системе?', test: tests[4] }
  ]
)

answers = Answer.create!(
  [
    { body: 'Мадагаскар', question: questions[0] },
    { body: 'Австралия', question: questions[0] },
    { body: 'Гренландия', correct: true, question: questions[0] },
    { body: 'Калимантан', question: questions[0] },
    { body: 'Францию', question: questions[1] },
    { body: 'Марокко', correct: true, question: questions[1] },
    { body: 'Гану', question: questions[1] },
    { body: 'Великобританию', question: questions[1] },
    { body: 'Кракатау', question: questions[2] },
    { body: 'Эйяфьятлайокудль', question: questions[2] },
    { body: 'Килиманджаро', correct: true, question: questions[2] },
    { body: 'Этна', question: questions[2] },
    { body: 'Джибути', correct: true, question: questions[3] },
    { body: 'Никарагуа', question: questions[3] },
    { body: 'Парагвай', question: questions[3] },
    { body: 'Гвинея-Бисау', question: questions[3] },
    { body: 'Обь', question: questions[4] },
    { body: 'Ангара', correct: true, question: questions[4] },
    { body: 'Енисей', question: questions[4] },
    { body: 'Амур', question: questions[4] },
    { body: 'Собака', question: questions[5] },
    { body: 'дикая кошка', question: questions[5] },
    { body: 'волчица', correct: true, question: questions[5] },
    { body: 'львица', question: questions[5] },
    { body: 'Нелегально', question: questions[6] },
    { body: 'анафема', question: questions[6] },
    { body: 'интердикт', question: questions[6] },
    { body: 'вето', correct: true, question: questions[6] },
    { body: 'Канны', question: questions[7] },
    { body: 'Капуя', question: questions[7] },
    { body: 'Помпеи', correct: true, question: questions[7] },
    { body: 'Неаполь', question: questions[7] },
    { body: 'история об этом умалчивает', correct: true, question: questions[8] },
    { body: 'воевал в Западной Галлии', question: questions[8] },
    { body: 'руководил подавлением восстания', question: questions[8] },
    { body: 'находился в ссылке', question: questions[8] },
    { body: 'по имени карфагенского царя', question: questions[9] },
    { body: 'по названию области, где шла война', question: questions[9] },
    { body: 'по имени карфагенян', correct: true, question: questions[9] },
    { body: "'Пуническая' означало 'народная, всеобщая'", question: questions[9] },
    { body: 'Клавдий Птолемей', question: questions[10] },
    { body: 'Николай Коперник', correct: true, question: questions[10] },
    { body: 'Эдвин Хаббл', question: questions[10] },
    { body: 'Галилео Галилей', question: questions[10] },
    { body: 'Расстояние, которое свет проходит за год', question: questions[11] },
    { body: 'Расстояние от Земли до Солнца', correct: true, question: questions[11] },
    { body: 'Радиус Солнца', question: questions[11] },
    { body: 'Расстояние от Земли до Марса', question: questions[11] },
    { body: 'Ганимед', correct: true, question: questions[12] },
    { body: 'Луна', question: questions[12] },
    { body: 'Титан', question: questions[12] },
    { body: 'Ио', question: questions[12] }
  ]
)
