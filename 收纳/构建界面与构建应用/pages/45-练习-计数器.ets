

@Entry
@Component
struct Index {
  @State num: number = 1

  build() {
    Row() {
      Column() {
        Row() {
          Button('-')
            .onClick(() => {
              this.num --;
            })
          Text(this.num.toString()).margin(10)
          Button('+')
            .onClick(() => {
              this.num ++;
            })
        }.padding(20)

      }
      .width('100%')
    }
    .height('100%')
  }
}