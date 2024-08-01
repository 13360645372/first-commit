@Component
struct SonCom {
  // 保证父组件的数据变化了,能够往下响应式的更新
  @Prop scar: string = ''

  changeCar = () => {}
  build() {
    Column() {
      Text(`子组件 ${this.scar}`)
      Button('换车').onClick((event: ClickEvent) => {
        // Prop传值 -> 单向传递
        // 子组件，可以修改到Prop 传值，但是修改的更新不会同步到父组件
        // 修改就被覆盖
        // this.scar = '小黄车'

        // 2.如果实在想更新，希望保证父子同步 => 调用父组件传递过来的方法
        this.changeCar()
      })
    }
    .padding(20)
    .backgroundColor(Color.Orange)
  }
}

@Entry
@Component
struct FatherCom {
  @State fcar: string = '劳斯莱斯'

  build() {
    Column() {
      Text(`父组件 ${this.fcar}`)
      Button('换车').onClick(() => {
        this.fcar = '三轮车'
      })
      SonCom({
        scar: this.fcar,

        // 必须要用箭头函数，否则会有this的指向问题
        // 箭头函数才可以使用外部函数
        changeCar: () => {
          this.fcar = '超级大塞车'
        }
      })
    }
    .padding(50)
    .backgroundColor(Color.Pink)
  }
}