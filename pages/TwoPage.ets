@Entry
@Component
struct TwoPage {
  @State message: string = 'AbilityTwoPage - 买菜';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('TwoPageHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}