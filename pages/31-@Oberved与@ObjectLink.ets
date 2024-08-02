interface IPerson {
  id: number
  name: string
  age: number

}

// 必须使用类的对象
@Observed
class  Person {
  id: number
  name: string
  age: number

  constructor(obj: IPerson) {
    this.id = obj.id
    this.name = obj.name
    this.age = obj.age
  }
}


@Entry
@Component
struct Index {
  @State personList: Person[] = [
    new Person({
      id: 1,
      name: 'zs',
      age: 18
    }),
    new Person({
      id: 2,
      name: 'ls',
      age: 19
    }),
    new Person({
    id: 3,
    name: 'ww',
    age: 20
  }),
  ]


  build() {
    Column() {
      Text('顶级组件')
        .fontSize(30)
        .fontWeight(900)
      List({ space: 10 }) {
        ForEach(this.personList, (item: Person, index: number) => {
          ItemCom({
            info: item,
            addAge: () => {
              // item.age++
              // this.personList.splice(index, 1, item)
            }
          })
        })
      }
    }
    .padding(10)
    .height('100%')
    .backgroundColor('#ccc')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
    .padding({top: 100})
  }
}

@Component
struct ItemCom {
  @ObjectLink info: Person
  addAge = () => {

  }

  build() {
    Row({ space: 20 }) {
      Text('姓名：' + this.info.name)

      Text('年龄：' + this.info.age)
      Blank()
      Button('修改数据')
        .onClick(() => {
          // this.addAge()
          // 可否在子组件修改数据

          this.info.age++

        })

    }
    .backgroundColor('#a6c398')
    .alignItems(VerticalAlign.Center)
    .width('90%')
    .margin({ top: 50 })
    .padding(10)
    .borderRadius(10)
  }
}

