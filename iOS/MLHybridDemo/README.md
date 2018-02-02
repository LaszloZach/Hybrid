#  Hybrid 接口文档

# 1.导航栏
    让h5定义导航栏
    导航栏的样式用app统一标准样式，导航栏。
    导航栏支持配置页面名称，不超过5个字
    支持配置右边按钮，图像或文字。最多支持两个按钮，不支持按钮下拉。点击事件由h5自己实现.
    左边的返回按键用默认的back箭头。点击直接调用back
    
##  (1).导航栏是否展示
    tagname : showheader

    display: true||false,true展示||false隐藏
    animate: true||false,true为有动画 ||false为没有动画
    
    requestHybrid({
        'tagname': 'showheader',
        'param' : {
            'display': true,
            'animate': true
        }
    })

## (2).导航栏设置
    tagname : updateheader

    left与right参数说明:
        tagname是每个按钮的标志,一定要存在,且不能重复,Native需要对特定tagname设置图标
        left与right为一个数组,每个项目为一个对象
        icon为图标,为一个url地址或者本地图片名,可以没有
        value如果设置了value便显示为文字,不设置便显示tagbname对应图标
        callback为点击时候执行的回调
    
    title参数说明:
        title为字符串,主标题,必须设置
        subtitle为字符串,可以为空,设置了就具有子标题
        callback点击标题的时候执行的回调,可以为空
    
    requestHybrid({
        'tagname':'updateheader',
        'param':{
            'left':[
                {
                    'tagname':'back',
                    'icon':'...',
                    'callback':'header_back_1517534554702'
                }
                ],
            'title':{
                'tagname':'title',
                'title':'标题'
            },
            'right':[
                        {
                            'tagname':'search',
                            'icon':'http://images2015.cnblogs.com/blog/294743/201511/294743-20151102143118414-1197511976.png',
                            'callback':'header_back_1517534554702'
                        },
                        {
                            'tagname':'search',
                            'value' : '搜索',
                            'callback':'header_back_1517534554702'
                        }
                    ]
            }
    })
    
# 2.页面跳转

## (1).跳转新的页面
    tagname: forward,
    参数说明
    type 页面类型 h5||native
    topage 页面url
    如果是H5,要求topage为一个完整的url;
    如果是native,topage要求是native同事告诉h5的字符串,点击就能跳转到对应native页面（可以将页面统一命名，然后映射代码中对应的页面）
    hasnavigation为跳转后是否需要导航条,true为显示,false不显示,不传就为true
    animate为动画参数,可以没有该字段,可以取值为:
        none: 没有动画
        push: 新页面左进,旧页面左出
        pop: 旧页面右出,新页面右进,
        present: 新页面从下面进来(这种时候页面默认从下面出去)
    
    requestHybrid({
        'tagname': 'forward',
        'param': {
            'topage': 'http://www.baidu.com',
            'type': 'h5',
            'animate': 'push'
        }
    })
    
## (2).返回上一个页面
    tagname: back
    
    如果是present出来的就dismiss，如果是push的就pop
    requestHybrid({
        'tagname': 'back',
        'param': {
        }
    })
    
# 3.网络请求

## GET/POST/PUT/DELETE

    tagname : get||post||put||delete

    requestHybrid({
        'tagname': 'get',
        'param': {
            'url': 'http://kh-stg-2.leanapp.cn/v1/messages',
            'param': {
                'page': 0,
                'size': 40
            }
        },
        callback: 'get_1517534554702'
    });


# 4.loading&tip

## (1).显示loading

    tagname : loading
    
    参数说明：
    display: true||false,true展示||false隐藏
    text : String，不为空就展示文字，为空只展示默认loading
    
    requestHybrid({
        'tagname': 'loading',
        'param' : {
            'display': true,
            'text': '正在加载...'
        }
    })


## (3).展示tip

    tagname: showtip
    
    type 类型 error||warning||success
    tip 文字 string类型
    duration 自动消失延时时间
    callback 消失之后的回调，可以为空
    
    requestHybrid({
        'tagname': 'showtip',
        'param': {
            'type':'error',
            'tip':'网络错误',
            'duration': 2
        }
        'callback' : ''
    });


# 5.用户信息

## 获取用户信息

    tagname : userinfo
    
    用户信息包括：手机号(mobile)、Token(token)，是否教师(isTeacher)、头像(avatar)、姓名(trueName)、昵称(nickName)、生日(birthday)、地区(location)、
    
    结果以object形式回调，括号中是字段名
    
    requestHybrid({
        'tagname': 'userinfo',
        'param': {
        }
        'callback' : 'userinfo_1517534554702'
    });
    
    

