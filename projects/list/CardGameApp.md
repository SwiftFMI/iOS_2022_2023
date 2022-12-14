# Игри с карти за приятели

През един приятен снежен коледен ден, Жокера (вечният противник на Батман) решил, че иска да промени своя стил и да дигитализира всичките си игри с карти (а те са поне 30, но искал това да става под негов контрол). За целта иска да му помогнеш със своите знания по Swift и SwiftUI и да направиш следното приложение за игра на карти.

В началото да може да се избира вид игра с карти (нека да има следните няколко варианта - игри за двама, трима или четирима). В зависимост, коя игра се стартира (нека да е за двама) се определят имена на всеки играч и общо време за игра на играч (по 5:00 на всеки играч). Играта редува играчите, като при започване се определя реда и се редуват играчите. Всеки играч получава карта (от сървъра), която има задача. Времето му тече и той трябва да изпълни задачата описана на картата. След изпълнението и натискане на бутона "край на ход" и идва ред на другия играч. (Всичко това става на едно устройство). Когато картите свършат се изписва - "край на играта" и потребителите могат да започнат нова игра.

За това елементарно приложение, Жокера има нужда от администраторска функционалност, която да му позволява да качва карти към съответните игри. Иска да може и да създава игри с необходимите характеристики - брой играчи, начално време за всеки играч. Този администраторски режим да може да се активира, само, ако знаеш супер тайната парола `I'm the Joker!`.

# Bonus
* добавете механика (правила), които да може да се въвеждат в админа-а. 
    * следващия играч пропуска ход
    * текущия играч има право на още един ход
    * край на играта вие печелите
    * край на играта за вас, вие отпадате
    * прехвърли картата на следващия играч
    * пропусни този ход
    * пропусни следващия ход

# Технически елементи:
* Firebase.
* Админ функционалност защитена с парола.
* Моделите на игрите да се дефинират предварително в статични json файлове.
* upload на картинки за картите.
* Боравене с време.
* SwiftUI
