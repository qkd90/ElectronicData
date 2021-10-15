*** Test Cases ***
京东购买一台电脑
    search search url  ${search url}
    product details
    product number
    Select attribute
    add to Shopping Cart
    settle accounts
    Submit orders
    login jd-accounts   ${jd-accounts}   ${password}
    payment

*** Keywords ***
search search url
    [Arguments]     ${search url}
    Log     搜索笔记本,地址：${search url}
    [Teardown]

product details
    [Arguments]
    Log     点击产品
    [Teardown]

product number
    [Arguments]
    Log     选择商品数量
    [Teardown]

Select attribute
    [Arguments]                                                                     
    Log     选择具体产品，选择的产品型号为：13.3英寸超轻薄笔记本电脑
    [Teardown]    

add to Shopping Cart
    [Arguments]
    Log     点击加入购物车
    [Teardown]

settle accounts
    [Arguments]
    Log     点击结算
    [Teardown]

login jd-accounts
    [Arguments]   ${jd-accounts}   ${password}
    Log     账号：${jd-accounts}，登录成功
    [Teardown]
    [Timeout]    1000

Submit orders
    [Arguments]
    Log     提交订单成功,账号：${jd-accounts}，联系电话：9876543210，地址：南山区智园a1
    [Teardown]
    [Timeout]    1000

payment
    [Arguments]
    Log     支付
    [Teardown]

*** Variables ***
${jd-accounts}    tan
${search url}    https://search.jd.com/Search?keyword=%E7%AC%94%E8%AE%B0%E6%9C%AC&enc=utf-8&wq=biji&pvid=cbb7424acccb43129aa6f14c945d02e9
${password}     123456789