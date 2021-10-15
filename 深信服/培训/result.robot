*** Test Cases ***
京东购买一台电脑
    搜索商品    ${search url}
    商品详情
    商品数量	
    选择属性  
    加入购物车 
    结算
    提交订单
    登录    ${jd-accounts}   ${password}
    支付 

*** Keywords ***
搜索商品 
    [Arguments]     ${search url}
    Log     搜索笔记本,地址：${search url}
    [Teardown]

商品详情
    [Arguments]
    Log     点击产品
    [Teardown]

商品数量
    [Arguments]
    Log     选择商品数量
    [Teardown]

选择属性
    [Arguments]                                                                     
    Log     选择具体产品，选择的产品型号为：13.3英寸超轻薄笔记本电脑
    [Teardown]    

加入购物车
    [Arguments]
    Log     点击加入购物车
    [Teardown]

结算
    [Arguments]
    Log     点击结算
    [Teardown]

登录 
    [Arguments]   ${jd-accounts}   ${password}
    Log     账号：${jd-accounts}，登录成功
    [Teardown]
    [Timeout]    1000

提交订单
    [Arguments]
    Log     提交订单成功,账号：${jd-accounts}，联系电话：9876543210，地址：南山区智园a1
    [Teardown]
    [Timeout]    1000

支付 
    [Arguments]
    Log     支付
    [Teardown]

*** Variables ***
${jd-accounts}    tan
${search url}    https://search.jd.com/Search?keyword=%E7%AC%94%E8%AE%B0%E6%9C%AC&enc=utf-8&wq=biji&pvid=cbb7424acccb43129aa6f14c945d02e9
${password}     123456789