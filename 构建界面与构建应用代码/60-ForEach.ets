interface Article {
  title: string
  createTime: string
}

@Entry
@Component
struct Index {
  @State articles: Article[] = [
    {
      title: '近200+自动驾驶数据集全面调研！一览如何数据闭环全流程',
      createTime: '2024-01-31 09:59:43'
    },
    {
      title: 'MySQL Shell 8.0.32 for GreatSQL编译二进制包',
      createTime: '2024-01-31 09:55:53'
    },
    {
      title: '在Redis中如何实现分布式事务的一致性？',
      createTime: '2024-01-31 09:54:51'
    },
  ]

  build() {
    // ForEach(数组,(item: 数组类型, index: number) => {
    //  内容
    // })
    Scroll() {
      Column() {
        // 单个新闻结构
        ForEach(this.articles, (item: Article, index: number) => {
          Column() {
            Text(JSON.stringify(this.articles[index].title))
              .width('100%')
              .fontSize(15)
              .fontColor('#303030')
              .lineHeight(20)
            Text(JSON.stringify(this.articles[index].createTime))
              .margin({top: 15})
              .width('100%')
              .fontSize(12)
              .fontColor('rgb(192, 192, 192)')
          }
          .padding({top: 15, bottom: 15})
          .width('100%')
          .border({
            width: {bottom: 2},
            color: {bottom: '#f4f4f4'}
          })
        })




      }
      .constraintSize({
        minHeight: '100%'
      })
    }
    .padding({ left: 13, right: 13 })
    .width('100%')
    .height('100%')
  }
}