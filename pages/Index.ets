import { router } from '@kit.ArkUI';
import { common, Want } from '@kit.AbilityKit';

// 从一个Ability中唤起另一个Ability（同模块）
// 1.准备 want 作为 UIAbility 的启动参数
// 2.利用上下文对象 context， 调用 startAbility 传入 want 启动
@Entry
@Component
struct Page {
  @State message: string = 'Hello World';

  context = getContext(this) as common.UIAbilityContext

  build() {
    Column() {
      Text(this.message)
        .id('PageHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          router.pushUrl({
            url: 'pages/LoginPages'
          })
        })
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      // want
      Button('跳转买菜')
        .onClick(() => {
          let wantInfo: Want = {
            deviceId: '', // 空表示本设备
            bundleName: 'com.example.harmony', // App的包名
            moduleName: 'entry', // 模块名
            abilityName: 'TwoAbility', // src/main/module.json5
            parameters: {
              info: '来自entryAbility'
            }
          }
          // 利用context startAbility 调起 UIAbility
          // 返回一个promise对象
          this.context.startAbility(wantInfo)
            .then(() => {
              console.log('startAbility 成功')
            })
            .catch(() => {
              console.log('启动Ability 失败', Error)
            })
          /*router.pushUrl({
            url: 'pages/TwoPage'
          })*/
        })
      Button('test测试')
        .onClick(() => {
          let wantInfo: Want = {
            deviceId: '', // 空表示本设备
            bundleName: 'com.example.harmony', // App的包名
            moduleName: 'TestModule', // 模块名
            abilityName: 'TestModuleAbility', // src/main/module.json5
            parameters: {
              info: '来自entryAbility'
            }
          }
          // 利用context startAbility 调起 UIAbility
          // 返回一个promise对象
          this.context.startAbility(wantInfo)
            .then(() => {
              console.log('startAbility 成功')
            })
            .catch(() => {
              console.log('启动Ability 失败', Error)
            })
          /*router.pushUrl({
            url: 'pages/TwoPage'
          })*/
        })
    }
    .height('100%')
    .width('100%')
  }
}