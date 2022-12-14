# SwiftUI - Основни

SwiftUI e новият начин за реализиране на приложения в еко системата на Apple. Няма да се спираме детайлно на всички плюсове на фреймуорка в тази лекция, а ще се опитаме да разгледаме начина и на фунциониране, спрямо класическия модел.

Най-напред ще разясним поулярния модел за програмиране - императивния, базиран на събитията.

## Класически модел - базиран на събитията

## Нов модел - базиран на данните(състоянието)


## View Hierarchy

## View Live Cycle

## Overlay

Със модифкатора overlay можем да поставяме елементи върху вече съществуващ компонент. Това ни позволява да позиционираме различни други компоненти в дълбочина.

> Ще разгледаме `ZStack` компонента, който предоставя подобна функционалност.


Ето 


## Основни елементи 
Ето и няколко от основните компоненти, с които можем да работим, когато създаваме нашите приложения. Списъкът не е изчерпателен.

Button
Slider
Stepper
Spacer 
Containers
Canvas/Graphics

## Модификатори

Модификаторите позволяват да прилагаме различни конфигурации към текущите view-та.

Част от модификаторите нямат определен ред. Т.е. можем спокойно да ги разместваме и крайният визуален резултат ще е един и същ. 

> Модификаторите, които променят позицията и размерът имат конкретен ефект върху крайния резултат.

> Можем да използваме библиотеката (+ бутона горе в дясно на Xcode) и нейният режим за избор на модификаторите. Това ще ни позволи по-лесно да намираме тези модификатори, които са съществени при имплементирането на `SwiftUI` код. 

> Определени модификатори (нека да ги наричаме по-общи като `padding()`) променят типът на връщания елемент(резултат), което прави невъзможно прилагането на по-конкретен модификатор след по-общ.

Ето и един пример:

```swift

```

Следния пример не се компилира: 


```swift
struct MyLabel {
    var body: some View {
        Text("Text")
            .padding()
            .bold()
    }
}
```


https://www.swiftbysundell.com/questions/swiftui-modifier-order/