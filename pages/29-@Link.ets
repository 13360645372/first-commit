interface Person {
  name: string
  age: number
}

@Entry
@Component
struct Index {
  @State count: number = 0
  @State person: Person = {
    name: 'zs',
    age: 13
  }

  build() {
    Column() {
      Text('父组件')
        .fontSize(30)
      Text(this.count.toString())
      Text(JSON.stringify(this.person))
      Button('修改数据')
        .onClick(() => {
          this.count++
          this.person.name = '两家选'
        })
      SonComPonent({
        count: this.count,
        person: this.person
      })
    }
    .padding(10)
    .height('100%')
    .backgroundColor('#eee')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
    .padding({top: 100})
  }
}

@Component
struct SonComPonent {
  @Link count: number
  @Link person: Person
  build() {
    Column({space: 30}) {
      Text('我是子组件')
        .fontSize(20)
      Text(JSON.stringify(this.person))
      Text(this.count.toString())

      Column() {
        Button('修改count')
          .onClick(() => {
            this.count++
            this.person.name = '李俊杰'
          })
      }
    }
    .backgroundColor('#a6c398')
    .padding(10)
    .width('80%')
    .alignItems(HorizontalAlign.Center)
    .margin({top: 80})
    .borderRadius(10)

  }
}