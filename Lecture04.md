# SwiftUI - Основни

SwiftUI e новият начин за реализиране на приложения в еко системата на Apple. Няма да се сприаме детайлно на всички плюсове на фреймуорка в тази лекция, а ще се опитаме да разлгедаме начина и на фунциониране, спрямо класическия модел.

Най-напред ще разясним поулярния модел за програмиране - императивния, базиран на събитията.


## Класически модел - базиран на събитията

## Нов модел - базиран на данните(състоянието)


## View Hierarchy

## View Live Cycle

## Overlay

## Следните 


    1. Основни елементи - button, Slider, stepper, spacer, Containers
    1. View Hierarchy
    1. Overlay
    1. View Live Cycle
    1. Graphics

## Модификатори
Модификаторите позволяват да прилагаме различни конфигурации към текущите view-та.

Част от модификаторите намят определен ред. Т.е. можем спокойно да ги разместваме и райният визуален резултат ще е един и същ. 

> Модификаторите, които променят позицията и размерът имат конкретен ефект върху крайния резултат.

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