# Xcode, Playground, iPadOS

За да започнем да творим (да създаваме приложения) трябва да се запознаем с инструментите, които са ни необходим. Основно ще изпозлваме macOS компютър, който е препоръчвания варинат за разработка от Apple.

За целите не на курса ще покажем и по-лекият вариант за обучение -
`Swift PLaygrounds`. Приложение, което е налично на iPad и macOS, и може да се използва за разработка на софтуер, който покрива изискванията на учебния курс (идеален е за обучение, а дори може и да реализирате и професионални проекти с него, но идва с ограничени възможности).

Професионалните разработчици на мобилни приложения за iOS и приложения за macOS (и други съвместими операционни системи) използват Xcode и други съвместими технологии (Ruby, Python, shell scripts, т.н.), за да могат да разрешават задачите си с лекота.

## Какво е Xcode?

Xcode е среда за програмиране. Програма, която използваме за да пишем приложения (други програми) и програмен код на Swift (и не само). Xcode изпозлва външни програми за да трансформира текста (Swift) в други програми. Тези програми са компилатори като - Swift Compiler, clang (което идва от C languages), LLVM. Системата е доста комплексна и изграждана в продължение на десетки години. Повече за историята на Xcode може да прочетете [тук](https://en.wikipedia.org/wiki/Xcode).

Ще се опитаме да се запознаем в детайли с версия 14 на Xcode. 

Почти всяка година излиза нова версия на това приложения, която въвежда по нещо ново, с цел да направи процеса на разработка на софтуер по-лесен.

> Не е задължително да се използва Xcode при разработката на приложения. Може да изпозлвате VSCode, AppCode или произволен друг инструмент, но Xcode e стандарта и е предпочитан от повечето разработчици.

Ето как изглежда интерфейса на Xcode:

![Xcode SwiftUI Project](/assets/xcode/Xcode_editor_canvas_files.png)
*A SwiftUI project opened in Xcode 14.*

Тук виждаме два от трите основни панела.
Левият се нарича `Навигатор` (Navigator), а десният `Редактор` (Editor).

![Xcode SwiftUI Project](/assets/xcode/Xcode_editor_canvas_files_annotated.png)
*В ляво със синьо - Навигарота. В дясно с червено - редактора.*

Навигатора, показва проекта (всички негови елементи). Можем да избираме различните елементи, чиито съдържание после се представя в основния панел - редактора. Всеки елемент в навигатора има отличителна икона, която подсказва от какъв тип е съответния файл/ресурс.

Първият елемент представлява нашия проект. В случая той се казва - `SwiftUI Demo App`.

Изгледът на реактора (централния изглед) се променя в зависимост, кой елемент от проекта бъде избран. В момента е избран файла `ContentView.swift`. Затова и виждаме малко код на Swift (SwiftUI)

Редактора има платно, което визуализра кода, ако той е `SwiftUI`.
Визуализирането е в реално време. Т.е. ако променим кода в лявата част на редактора, след много малко време ще се промени и изгледа на приложението (екрана от приложението) в дясно.

Ако кодът е само `Swift` ще виждаме само програмния код, като той ще бъде форматиран визуално. 
> Визуалното форматиране ни позволява по-лесно да можем да разпознаваме елементите на езика (запазените думи).
Следните елементи са характерни за този изглед. 
1. Имаме номера на редовете. Изпозлва се, за да може лесно да се намират грешките в кода. Това е начин за номериране/адресиране на кода, така че да може се посочи еднозначно грека, ако има такава. (Ще видим подобни примери.)
1. Има тектс в сив цвят. Това са коментарите във `Swift`.
    > Коментарите са част от програмния код, но не са част от финаланта програма. Те помагат в различни насоки като - по-лесното ориентиране в логическата организация на кода, съхраняват бележки и допълнителна информация, която прави процесът по разработка лесен.
1.  Розови думи, които са малко по плътни (bold). Това са запазените думи в езика, които имат определено значение (смисъл). (Това са тези думи от картинката. В `Swift` има още. Ще научим повечето за тях в следващата лекция за `Swift`.)
    * `import`
    * `struct`
    * `var`
    * `some`
    * `static`

> Запазените думи в прогрмните езици са различни и тяхния брой се променя (расте) с версиите на `Swift`. 

Навигатор панелът има различни табове. Всеки таб има различна роля и визуализация.
Някои от тези табове са доста по-често изпозлвани.

## Project Navigator (Навигатор на проекта)

![Xcode SwiftUI Project](/assets/xcode/Xcode_navigator.png)
*Изобразява файловете в проекта.*

В долната част в ляво има бутон `+`, който позволява добавянето на нови файлове или групи към проекта.

![Xcode SwiftUI Project](/assets/xcode/Xcode_project_navigator_add_item.png)
*Добави файл, група или произволен елемент към проекта.*

Ако изберете `New File...` ще видите следния прозорец, който ще ви помогне да добавите необходимия вид файл, който търсите. Процесът е с няколко стъпки.

![Xcode SwiftUI Project](/assets/xcode/Xcode_add_new_file_flow.png)
*Избери какъв вид файл искаш да добави към проекта.*

> Xcode е достатъчно "умен" софтуер, който разполага с базови шаблони за различните типове файлове. Идеята на тази автоматизация е да ви спести време.

## Symbol Navigator (Навигатор на символите)

![Xcode SwiftUI Project](/assets/xcode/Xcode_hierarchy_navigator.png)
*Типовете в проекта са изборазени като текст, с техните характеристики.*

> В дъното на панела има филтър и различни бутони (C) - показва само класове и протоколите (структурите пак са тук) , (Документ) - включва само типовете от проекта, (М) - показва само контейнерите


![Xcode SwiftUI Project](/assets/xcode/Xcode_editor_split_view.png)
*Редакторът може да показва различни файлове хоризонтално и вертикално. Въпрос на гледна точка.*

## Find Navigator (Търсене)
## Issue Navigator (Грешки)
## Test Navigator (Тестове)
## Debug Navigator (Дебъг панел)
## Breakpoint Navigator (Стоп точки при дебъгване)
## Report Navigator (доклади)

## Какво е Swift Playgrounds?

Приложение, което позволява по-лесно обучаване в програмирането със Swift и SwiftUI.

> Доста картинки, които обясняват как може да го ползваме.

### за macOS

Приложението може да се изтегли от mac `AppStore`.

### за iPadOS

Приложението може да се изтегли от `AppStore`.

> Няма съществена разлика между приложението на macOS и това на iPadOS.

### Какви са тези файлове .swiftpm, .swift?

`.swift` - файлове които съдържат програмния код.
`.swiftpm` - файл (цяла директория, която съдържа swiftui проект), който съхранява целия проект създаден със Swift Playgrounds. 
Може да се отвори със Xcode.

## Структура на базово SwiftUI приложение

Структурата на базов `SwiftUI` проект се свежда до следните няколко вида файлове.

1. Описател на проекта `.xcodeproj`. Конкретно - `SwiftUI Demo App.xcodeproj` (в основата на навигатор изгледа. Обозначен със синя икона с А.)
    > Това е директория и вътре има няколко файла. Основният е `project.pbxproj`, където с тест е описана структурата в определен формат разбираем от Хcode.
1. `Assets.xcassets` - каталог с ресурси. Може да са картинки, звуци, видео и не само.
    > `Preview Assets.xcassets` - каталог с ресурси, които се ползват само в процеса на разработка, но няма да са част от финалното приложение.
1. `SwiftUI_Demo_AppApp.swift` - началната точка на приложението. Името може да е различно. Само една е за приложение.
    > `.swift` файловете съдържат логиката на приложението. 

Един проект може да има и много други файлове и ресурси. Програмистите са свободни да добавят различни неща, стига крайният резултат да е нещо, което може да бъде изпозлвано.

[Тук](https://developer.apple.com/tutorials/swiftui-concepts/exploring-the-structure-of-a-swiftui-app) може да намерите детайлно описание на всички елементи и интерактивен пример.

## Структура на базово UIKit приложение

UIKit приложението има няколко отделни части, като основните са:
* Application Delegate
* Main Storyboard
* Assets Catalog
* Info.plist 

### Какво е UIApplication

Входната точка приложението.

### Какво е AppDelegate

Класът, който имплементира `AppDelegate` предоставя механизъм, да можем да реагиараме на рачлични съобщения от операционната система.

### Какви са тези файлове .swift, .storyboard
Файловете, чието разширение завършва със `.swift` са такива файлове, които съдържат прогамен код. В зависимост какво прави този програмен код, Xcode сам определя как ще ги изобрази в реактроската част. Дали ще е само като текстов редактор (валиден изглед) за всички `.swift` файлове, които не съдържат `SwiftUI` код. Или като редактор и платно за визуализация на `SwiftUI` код.

> Платното в дясно се нарича canvas и може да бъде скрито/изключено.

Файловете с разширение `.storyboard` са част от проекти, които използват Storyboard. Познати са още като проекти базирани на UIKit. 
> Възможно е да имаме SwiftUI проект, който да изпозлва UIKit елементи и да изпозлва `.storyboard` за реализирането на част от изгледите.

> Проектите са микс от различни файлове с код, картинки, музика, и друг вид ресурси. Крайният резултат е приложение.

Ние ще разгледаме основните типове файлове изграждащи двата вида основни проекти. Ще се опитаме да обясним структурата на проекта.
Ако създаваме и работим над различни проекти, постепенно ще научим тази структура и ще знаем ролята на всеки един елемент.

В момента ще опишем най-основните части, така че да можем да разберем основната картина. Ако трябва да влезем в детайли ще трябва да четем с разбиране документацията изготвена от Apple.
> Не всичко е написано достатъчно детайлно в документацията. Добре е да изпозлваме различни достоверни източници, за да можем да намерим достатъчно добро обяснение за
всеки елемент на проекта.

### Какво е Project, target, scheme?

Проектът се съхранява във "файл" (директория) `.xcodeproje`, която има сложна структура. `project.pbxproj` съдържа описанието на целия проект, със различните ресурси, които са част от различните target-и (таргети). 
Всеки таргет описва рецепта, по която може да се приготви (компилира от кода) приложени за операционна система, която е от възможните. 
> Можем да имаме един проект, който да има различни таргети, за iOS и производните.

### Какво представява info.plist?
> В този файл се описват различни конфигурации на приложенията за macOS, iPadOS, iOS, tvOS, watchOS.

Различни конфигурации и текстове, които се показват на потребителя, за да даде съгласието си за достъп до даден ресурс се съхраняват тук. Операционната система има различни механизми за защита на данните. За да предостави достъп на произволно приложение, то трябва да поиска изрично съгласие от потребителя.

Следните често срещани функционалности изискват съгласие от потребителя.ю
1. Достъп до снимките
1. достъп до камера
1. достъп до микрофон
1. достъп до локация (местоположение)
1. достъп до push notifications (пуш-съобщения/напомняния)
1. Достъп до локалната мрежа и други

