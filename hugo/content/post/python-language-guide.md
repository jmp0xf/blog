+++
author = ""
creativecommons = true
date = "2016-01-02T15:20:26+08:00"
description = ""
highlight_enabled = true
highlight_languages = ["python"]
math = false
tags = ["python"]
title = "Python编码指南"
topics = []

+++

* [模块](#模块)
* [导入](#导入-imports)
* [全局变量](#全局变量-global-variables)
* [列表推导/生成器表达式](#列表推导-生成器表达式-list-comprehensions)
* [函数和方法](#函数和方法)
    * [允许使用嵌套/本地/内部函数](#允许使用嵌套-本地-内部函数-nested-local-inner-classes-and-functions)
    * [Lambda函数](#lambda函数-lambda-functions)
    * [函数或方法参数默认值](#函数或方法参数默认值-default-argument-values)
    * [返回语句一致性](#返回语句一致性-programming-recommendations)
    * [装饰器](#装饰器-function-and-method-decorators)
* [类](#类)
    * [允许使用嵌套/本地/内部类](#允许使用嵌套-本地-内部类-nested-local-inner-classes-and-functions)
    * [属性](#属性-designing-for-inheritance)
    * [类型比较](#类型比较-programming-recommendations)
    * [排序](#排序-programming-recommendations)
* [异常](#异常-programming-recommendations)
* [布尔判断](#布尔判断)
* [条件表达式](#条件表达式-conditional-expressions)
* [文件和sockets](#文件和sockets-files-and-sockets)
* [字符串](#字符串-strings)
* [其他](#其他)
    * [不要编写仅适用于特定Python实现的代码](#不要编写仅适用于特定python实现的代码-programming-recommendations)
    * [不要依赖内建类型的原子性](#不要依赖内建类型的原子性-threading)
    * [避免使用威力过大的特性](#避免使用威力过大的特性-power-features)

---

## 模块
将相关的类和顶级函数放在同一个模块里[^Naming]。

## 导入[^imports]
* 仅对包和模块使用导入[^imports-google]
* 推荐使用绝对路径进行导入

    ```
    import mypkg.sibling
    from mypkg import sibling
    from mypkg.sibling import example
    ```
    * 然而对于复杂包结构，显式相对导入也是可以接受的：

        ```
        from . import sibling
        from .sibling import example
        ```

    * 永远不要使用隐式相对导入

* 即使是脚本文件也应该可以导入。代码应该总在执行主程序前检查 `if __name__ == '__main__'`，这样当模块被导入时主程序就不会被执行[^Main]。

    ```
    def main():
          ...
    
    if __name__ == '__main__':
        main()
    ```

* 从模块导入类时，通常可以这样导入：

    ```
    from MyClass import MyClass
    from foo.bar.YourClass import YourClass
    ```

    如果导致了本地命名冲突，那么这样导入：

    ```
    import MyClass
    import foo.bar.YourClass
    ```

    即使用`MyClass.MyClass`和`foo.bar.YourClass.YourClass`

* 避免通配符导入`from <module> import *`

## 全局变量[^Global_variables]
* 避免使用全局变量
* 例外：
    * 脚本的默认选项
    * 模块级常量，例如：`PI = 3.14159`。

    * 有时使用全局变量来缓存函数所需值或返回值十分有效。
* 如果需要，全局变量应该仅在模块内部可用，并通过公共模块级函数进行访问。

## 列表推导/生成器表达式[^List_Comprehensions]

* 简单情况下使用，复杂情况下还是使用循环。

* 每个部分应单独置于一行：映射表达式、`for`语句、过滤器表达式。

* 禁止多重`for`语句或过滤器表达式。


正例：
```
result = []
for x in range(10):
  for y in range(5):
      if x * y > 10:
          result.append((x, y))

for x in xrange(5):
  for y in xrange(5):
      if x != y:
          for z in xrange(5):
              if y != z:
                  yield (x, y, z)

return ((x, complicated_transform(x))
      for x in long_generator_function(parameter)
      if x is not None)

squares = [x * x for x in range(10)]

eat(jelly_bean for jelly_bean in jelly_beans
  if jelly_bean.color == 'black')
```

反例：
```
result = [(x, y) for x in range(10) for y in range(5) if x * y > 10]

return ((x, y, z)
      for x in xrange(5)
      for y in xrange(5)
      if x != y
      for z in xrange(5)
      if y != z)
```

## 函数和方法

### 允许使用嵌套/本地/内部函数[^Nested_Local_Inner_Classes_and_Functions]
方法和函数内部可再次定义函数。

### Lambda函数[^Lambda_Functions]
* 适用于单行函数，如果代码超过60至80个字符，最好还是定义成常规（嵌套）函数。

* 对于常见操作符，使用 `operator` 模块中的函数而非Lambda函数。比如乘法操作符，使用 `operator.mul` 而非 `lambda x, y: x * y`。


### 函数或方法参数默认值[^Default_Argument_Values]
不使用可变对象作为函数或方法的参数默认值。

正例：
```
def foo(a, b=None):
    if b is None:
        b = []
```

反例：
```
def foo(a, b=[]):
    ...
def foo(a, b=time.time()):  # The time the module was loaded???
    ...
def foo(a, b=FLAGS.my_thing):  # sys.argv has not yet been parsed...
    ...
```

### 返回语句一致性[^programming-recommendations]
在函数或方法中，返回语句要么都返回某表达式，要么都不返回。

正例：
```
def foo(x):
    if x >= 0:
        return math.sqrt(x)
    else:
        return None

def bar(x):
    if x < 0:
        return None
    return math.sqrt(x)
```

反例：
```
def foo(x):
    if x >= 0:
        return math.sqrt(x)

def bar(x):
    if x < 0:
        return
    return math.sqrt(x)
```    

### 装饰器[^Function_and_Method_Decorators]
避免装饰器的外部依赖（即不要依赖文件、sockets、数据库连接等），因为装饰器运行时这些资源可能不可用。应该保证有效参数调用的装饰器在任何情况下都可成功。

## 类

### 允许使用嵌套/本地/内部类[^Nested_Local_Inner_Classes_and_Functions]
* 方法、函数或类中可再次定义类。
* 缺点：嵌套类或局部类的实例不能序列化。

### 属性[^designing-for-inheritance]
* 对于简单的公有数据，直接使用属性实现，不要使用繁琐的访问器/更改器()方法。当需要添加更多功能时，用`@property`装饰器来保持接口一致。但是注意：

    1. 装饰器只适用于新式类。
    2. 避免让属性访问产生副作用，然而缓存是允许的。
    3. 避免操作开销太大，属性调用方式容易被认为访问十分轻快。

    * 如果子类没有覆盖属性，那么属性继承可能看上去不明显。 因此使用者必须确保访问方法被间接调用，以保证子类中的重载方法被属性调用（使用模板方法设计模式）[^Properties]。
    像这样：

        ```
        import math
        
        class Square(object):
         """A square with two properties: a writable area and a read-only perimeter.
        
         To use:
         >>> sq = Square(3)
         >>> sq.area
         9
         >>> sq.perimeter
         12
         >>> sq.area = 16
         >>> sq.side
         4
         >>> sq.perimeter
         16
         """
        
         def __init__(self, side):
             self.side = side
        
         def __get_area(self):
             """Calculates the 'area' property."""
             return self.side ** 2
        
         def ___get_area(self):
             """Indirect accessor for 'area' property."""
             return self.__get_area()
        
         def __set_area(self, area):
             """Sets the 'area' property."""
             self.side = math.sqrt(area)
        
         def ___set_area(self, area):
             """Indirect setter for 'area' property."""
             self.__set_area(area)
        
         area = property(___get_area, ___set_area,
                         doc="""Gets or sets the area of the square.""")
        
         @property
         def perimeter(self):
             return self.side * 4
        ```

* 如果访问内部逻辑更复杂，或访问开销很显著，则应使用类似`get_foo()`和`set_foo()` 这样的方法[^Access_Control]。

### 类型比较[^programming-recommendations]
对象的类型比较应始终使用`isinstance()`而非直接比较类型。

正例：
```
if isinstance(obj, int):
```
反例：
```
if type(obj) is type(1):
```

### 排序[^programming-recommendations]
When implementing ordering operations with rich comparisons, it is best to implement all six operations ( `__eq__` , `__ne__` , `__lt__` , `__le__` , `__gt__` , `__ge__` ) rather than relying on other code to only exercise a particular comparison.

To minimize the effort involved, the `functools.total_ordering()` decorator provides a tool to generate missing comparison methods.

[PEP 207](https://www.python.org/dev/peps/pep-0207/) indicates that reflexivity rules _are_ assumed by Python. Thus, the interpreter may swap `y > x` with `x < y` , `y >= x` with `x <= y` , and may swap the arguments of `x == y` and `x != y` . The `sort()` and `min()` operations are guaranteed to use the `<` operator and the `max()` function uses the `>` operator. However, it is best to implement all six operations so that confusion doesn't arise in other contexts.

## 异常[^programming-recommendations]
* 这样触发异常：`raise MyException("Error message")` 或 `raise MyException`。

* 模块或包应定义自己的特定域的异常基类，此基类应从内建的`Exception`类继承，而不是`BaseException`。模块的异常基类应命名为"Error"[^Exceptions]。
 
    ```
    class Error(Exception):
    pass
    ```

* 尽量减少`try/except`块中的代码量。
 
* 不要使用 `except:` 捕获所有异常，也避免捕获 `Exception` 或 `StandardError`，除非打算重新抛出异常，或者当前已在线程最外层（需要打印错误消息）。

* 当捕获异常到一个变量时，使用`as`而非逗号。

    例如：
    ```
    try:
        raise Error
    except Error as error:
        pass
    ```

* When catching operating system errors, prefer the explicit exception hierarchy introduced in Python 3.3 over introspection of `errno` values.


## 布尔判断

* 不要用`==`或者`!=`来比较单件(singletons)，比如`None`，应该使用`is`或`is not`[^programming-recommendations]。

    * 小心使用`if x`表示语义为`if x is not None`的情况，比如判断一个默认值为`None`的变量或参数是否被设为其它值，该值在布尔语义下可能是`false`。

* 不要用`==`将一个布尔量与`true`/`false`比较[^programming-recommendations]。

    正例：
    ```
    if greeting:
    ```
    反例：
    ```
    if greeting == True:
    ```
    更糟糕：
    ```
    if greeting is True:
    ``` 

    * 如果需要区分`false`和`None`，可使用 `if not x and x is not None:`。


* 对于序列（字符串、列表、元组），利用空序列是隐式`false`的表达[^programming-recommendations]。

    正例：
    ```
    if not seq:
    if seq:
    ```
    反例：
    ```
    if len(seq):
    if not len(seq):
    ```

* 处理整数时, 使用隐式`false`可能会得不偿失（即不小心将`None`当做0来处理），可将已知为整型（且不是`len()`的返回结果）的值与0比较[^True_False_evaluations]。

    正例：
    ```
    if not users:
        print 'no users'
    
    if foo == 0:
        self.handle_zero()
    
    if i % 10 == 0:
        self.handle_multiple_of_ten()
    ```
    反例：
    ```
    if len(users) == 0:
        print 'no users'
    
    if foo is not None and not foo:
        self.handle_zero()
    
    if not i % 10:
        self.handle_multiple_of_ten()
    ```

* 使用`foo not in bar`而非`not foo in bar`[^expressions-and-statements]

* 使用`foo is not bar`而非`not foo is bar`[^programming-recommendations]


### 条件表达式[^Conditional_Expressions]

适用于单行情况(one-liners)比如`x = 1 if cond else 2`，其他情形使用完整的`if`语句。


## 文件和sockets[^Files_and_Sockets]

* 在文件和sockets（或其他类文件对象）使用完毕时，显式的关闭它。将文件对象的生命周期和文件状态绑定在一起，幻想当文件对象析构时，文件和sockets会自动关闭的想法是不现实的，原因如下：

    * 运行环境并不确保确实执行文件析构。不同Python实现采用不同的内存管理技术，比如延时垃圾回收可能会导致对象生命周期被任意无限制延长。

    * 对文件的意外引用会导致其持有时间超出预期（比如对于异常的跟踪，包含有全局变量等）。

* 使用`with`语句管理文件。
    * 无论何时获取或释放资源，上下文管理器应该经由函数或方法进行调用[^programming-recommendations]。

        正例：
        ```
        with conn.begin_transaction():
            do_stuff_in_transaction(conn)
        ```
        反例：
        ```
        with conn:
            do_stuff_in_transaction(conn)
        ```

    * 对于不支持`with`的类似文件的对象，使用 `contextlib.closing()`：

        ```
        import contextlib
        
        with contextlib.closing(urllib.urlopen("http://www.python.org/")) as front_page:
            for line in front_page:
                print line
        ```

## 字符串[^Strings]
* 不要使用`+`或`+=`循环累积连接字符串，使用`"".join()`方法。

    正例：
    ```
    items = ['<table>']
    for last_name, first_name in employee_list:
        items.append('<tr><td>%s, %s</td></tr>' % (last_name, first_name))
    items.append('</table>')
    employee_table = ''.join(items)
    ```
    反例：
    ```
    employee_table = '<table>'
    for last_name, first_name in employee_list:
        employee_table += '<tr><td>%s, %s</td></tr>' % (last_name, first_name)
    employee_table += '</table>'
    ```

* 使用`%`操作符或者`"".format()`方法格式化字符串。不过也不能完全一概而论，需要在`+`和格式化方式之间好好权衡。

    正例：
    ```
    x = a + b
    x = '%s, %s!' % (imperative, expletive)
    x = '{}, {}!'.format(imperative, expletive)
    x = 'name: %s; score: %d' % (name, n)
    x = 'name: {}; score: {}'.format(name, n)
    ```
    反例：
    ```
    x = '%s%s' % (a, b)  # use + in this case
    x = '{}{}'.format(a, b)  # use + in this case
    x = imperative + ', ' + expletive + '!'
    x = 'name: ' + name + '; score: ' + str(n)
    ```

  

## 其他

### 不要编写仅适用于特定Python实现的代码[^programming-recommendations]

比如字符串连接语句`a += b`或`a = a + b`的优化甚至在CPython中的支持也不够好，因此使用`''.join()`是更通用的方式。

### 不要依赖内建类型的原子性[^Threading]
优先使用`Queue`模块的 `Queue`类型作为线程间的数据通信方式。另外，使用`threading`模块及其锁原语(locking primitives)。正确使用条件变量从而以`threading.Condition` 取代低级锁。

### 避免使用威力过大的特性[^Power_Features]
比如：

* 元类(metaclasses)
* 字节码访问(access to bytecode)
* 任意编译(on-the-fly compilation)
* 动态继承(dynamic inheritance)
* 对象父类重定义(object reparenting)
* 导入hack(import hacks)
* 反射(reflection)
* 系统内修改(modification of system internals)
* 等等


[^Naming]: [Naming - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Naming#Naming)

[^imports-google]: [Imports - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Imports#Imports)

[^imports]: [Imports - PEP 8](https://www.python.org/dev/peps/pep-0008/#imports)

[^Main]: [Main - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Main#Main)

[^Global_variables]: [Global variables - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Global_variables#Global_variables)

[^List_Comprehensions]: [List Comprehensions - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=List_Comprehensions#List_Comprehensions)

[^Nested_Local_Inner_Classes_and_Functions]: [Nested/Local/Inner Classes and Functions - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Nested/Local/Inner_Classes_and_Functions#Nested/Local/Inner_Classes_and_Functions)

[^Lambda_Functions]: [Lambda Functions - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Lambda_Functions#Lambda_Functions)

[^Default_Argument_Values]: [Default Argument Values - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Default_Argument_Values#Default_Argument_Values)

[^programming-recommendations]: [Programming Recommendations - PEP 8](https://www.python.org/dev/peps/pep-0008/#programming-recommendations)

[^Function_and_Method_Decorators]: [Function and Method Decorators - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Function_and_Method_Decorators#Function_and_Method_Decorators)

[^designing-for-inheritance]: [Designing for inheritance - PEP 8](https://www.python.org/dev/peps/pep-0008/#designing-for-inheritance)

[^Properties]: [Properties - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Properties#Properties)

[^Access_Control]: [Access Control - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Access_Control#Access_Control)

[^Exceptions]: [Exceptions - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Coznditional_Expressions#Exceptions)

[^expressions-and-statements]: [Expressions and Statements - The Pocoo Style Guide](http://www.pocoo.org/internal/styleguide/#expressions-and-statements)

[^True_False_evaluations]: [True/False evaluations - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Conditional_Expressions#True/False_evaluations)

[^Conditional_Expressions]: [Conditional Expressions - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Conditional_Expressions#Conditional_Expressions)

[^Files_and_Sockets]: [Files and Sockets - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Conditional_Expressions#Files_and_Sockets)

[^Strings]: [Strings - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Conditional_Expressions#Strings)

[^Threading]: [Threading - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Threading#Threading)

[^Power_Features]: [Power Features - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Power_Features#Power_Features)