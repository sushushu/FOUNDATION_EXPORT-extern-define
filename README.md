# FOUNDATION_EXPORT-extern-define
### 首次看这3种大概的意思
```
FOUNDATION_EXPORT是Fundation框架里面的宏 c/c++中不能使用
```
``` 
extern是c/c++的关键字,oc/c/c++通用
```
```
#define是oc/c/c++通用宏定义关键字
```
### 再看看他们的用法
**.h**
![image.png](https://upload-images.jianshu.io/upload_images/741440-f5e29f60f3bbd59f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
**.m**
![image.png](https://upload-images.jianshu.io/upload_images/741440-50efb5107da8897e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 那么在项目里面应该怎么使用这3种来声明常量?
- 三者的区别已经简单解释了,前2种可以说没什么区别，说下第3种吧。
- 比较字符串是否相同除了用运算符 **==**  还可以用 **isEqualToString:** ，前2种用运算符和**isEqualToString:**都没问题，值得注意的是用#define 定义的字符串用运算符 **==** 比较的话会提示警告**Direct comparison of a string literal has undefined behavior**(但是也能正常编译)。
- 个人比较推荐如果有专门的常量类(有.h.m文件)，推荐使用**FOUNDATION_EXPORT**来声明。MJExtension也把**extern**替换成了**FOUNDATION_EXPORT**(https://github.com/CoderMJLee/MJExtension/commit/9c4f7f2d95158368532952890c405936a69171f7)
- 如果为了省事直接用**#define**也是可以的(例如:**#define ScreenWidth  [UIScreen mainScreen].bounds.size.width**) 但是要注意**#define**只是内容拷贝,写了个demo来测试,有兴趣可以去下载.

### 比较结果

![image.png](https://upload-images.jianshu.io/upload_images/741440-a778d8f2e1232af1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### ida反编译下的差异
![image.png](https://upload-images.jianshu.io/upload_images/741440-953830f20cdafecd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


