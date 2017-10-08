+++
author = ""
date = "2016-01-01T22:56:45+08:00"
description = ""
draft = false
highlight_enabled = true
highlight_languages = ["python"]
mathjax = false
tags = ["风格规范"]
title = "Python风格规范"
categories = ["Python"]

+++

## 一致性[^a-foolish-consistency-is-the-hobgoblin-of-little-minds]
一致性很重要，但盲目追求一致更加愚不可及。

## 布局[^code-lay-out]

### 语句[^other-recommendations]
通常每条语句独占一行

正例：
```
if foo == 'blah':
    do_blah_thing()
do_one()
do_two()
do_three()
```    

反例：
```
if foo == 'blah': do_blah_thing()
do_one(); do_two(); do_three()
```

### 缩进[^indentation]
使用4个空格[^tabs-or-spaces]进行缩进

### 行宽[^maximum-line-length]
* 每行不超过80个字符
    * 如果团队达成一致，上限可提高到100个字符
* 文档字符串和注释每行不超过72个字符
* 尽量不使用反斜杠`\`连接行[^Line_length]

* 用括号进行隐式行连接[^indentation]
    * 垂直对齐换行元素，或者使用4空格的悬挂缩进(第一行无参数)：

        正例：
        ```
        # Aligned with opening delimiter.
        foo = long_function_name(var_one, var_two,
                                 var_three, var_four)
        
        # More indentation included to distinguish this from the rest.
        def long_function_name(
                var_one, var_two, var_three,
                var_four):
            print(var_one)
        
        # Hanging indents should add a level.
        foo = long_function_name(
            var_one, var_two,
            var_three, var_four)
        ```
        
        反例：
        ```
        # Arguments on first line forbidden when not using vertical alignment.
        foo = long_function_name(var_one, var_two,
            var_three, var_four)
        
        # Further indentation required as indentation is not distinguishable.
        def long_function_name(
            var_one, var_two, var_three,
            var_four):
            print(var_one)
        ```

    * 行连接时可不使用4空格缩进
    
        可选:
        ```
        # Hanging indents *may* be indented to other than 4 spaces.
        foo = long_function_name(
          var_one, var_two,
          var_three, var_four)
        ```
    
    * `if`语句换行包括但不限于以下三种风格：
        ```
        # No extra indentation.
        if (this_is_one_thing and
            that_is_another_thing):
            do_something()
        
        # Add a comment, which will provide some distinction in editors
        # supporting syntax highlighting.
        if (this_is_one_thing and
            that_is_another_thing):
            # Since both conditions are true, we can frobnicate.
            do_something()
        
        # Add some extra indentation on the conditional continuation line.
        if (this_is_one_thing
                and that_is_another_thing):
            do_something()
        ```
    
    * 多行数据构建中，右括号可
        * 与尾行数据的首个非空字符对齐：
            ```
            my_list = [
                1, 2, 3,
                4, 5, 6,
                ]
            
            result = some_function_that_takes_arguments(
                'a', 'b', 'c',
                'd', 'e', 'f',
                )
            ```
        * 也可与首行的首字符对齐：
            ```
            my_list = [
                1, 2, 3,
                4, 5, 6,
            ]
            
            result = some_function_that_takes_arguments(
                'a', 'b', 'c',
                'd', 'e', 'f',
            )
            ```
    
    * 推荐在二元运算符之后换行[^should-a-line-break-before-or-after-a-binary-operator]

        正例：
        ```
        # Yes: easy to match operators with operands
        income = (gross_wages
                  + taxable_interest
                  + (dividends - qualified_dividends)
                  - ira_deduction
                  - student_loan_interest)
        ```
        反例：
        ```
        # No: operators sit far away from their operands
        income = (gross_wages +
                  taxable_interest +
                  (dividends - qualified_dividends) -
                  ira_deduction -
                  student_loan_interest)
        ```
        
    
    * 对过长字符串使用圆括号进行隐式行连接[^Line_length]：
    ```
    x = ('This will build a very long long '
         'long long long long long long string')
    ```
    
    * 更多技巧参考 [Splitting tricky lines](https://github.com/Khan/style-guides/blob/master/style/python.md)

* 若无法使用隐式行连接，使用反斜杠`\`显式换行。比如：
    ```
    with open('/path/to/some/file/you/want/to/read') as file_1, \
         open('/path/to/some/file/being/written', 'w') as file_2:
        file_2.write(file_1.read())
    ```
    可以的话，每行与上行`.`或`=`进行对齐，或进行4空格缩进[^general-layout]：

    ```
    MyModel.query.filter(MyModel.scalar > 120) \
                 .order_by(MyModel.name.desc()) \
                 .limit(10)
    ```

    * 以下情况不换行：
        * 导入语句过长
        * 注释中URL过长[^Line_length]
    
            正例：
            ```
            # See details at
            # https://www.example.com/us/developer/documentation/api/content/v2.0/csv_file_name_extension_full_specification.html
            ```
            
            反例：
            ```
            # See details at
            # https://www.example.com/us/developer/documentation/api/content/\
            # v2.0/csv_file_name_extension_full_specification.html
            ```

### 分号[^Semicolons]
* 绝不使用分号合并多条语句至一行
* 行尾不添加分号

### 圆括号[^Parentheses]
* 有节制地使用圆括号。除非用于实现行连接，否则不要在返回语句或条件语句中使用圆括号
* 推荐使用圆括号包裹元组。

正例：
```
if foo:
    bar()
while x:
    x = bar()
if x and y:
    bar()
if not x:
    bar()
return foo
for (x, y) in dict.items(): ...
```
反例：
```
if (x):
    bar()
if not(x):
    bar()
return (foo)
```

### 拖尾逗号(trailing comma)[^when-to-use-trailing-commas]
* 创建单元素元组时必须使用拖尾逗号，同时推荐使用圆括号包裹。

    正例：
    ```
    FILES = ('setup.cfg',)
    ```
    反例：
    ```
    FILES = 'setup.cfg',
    ```
* 使用冗余拖尾逗号方便未来对列表值、参数值或导入项目进行扩展，而单行情况使用拖尾逗号毫无意义。

    正例：
    ```
    FILES = [
        'setup.cfg',
        'tox.ini',
        ]
    initialize(FILES,
               error=True,
               )
    ```
    反例：
    ```
    FILES = ['setup.cfg', 'tox.ini',]
    initialize(FILES, error=True,)
    ```

### 空行[^blank-lines]
* 顶级函数和类定义之间空两行
* 方法定义之间空一行
* `class`行和第一个方法定义之间空一行[^Blank_Lines]

* 有节制地使用更多空行对相关函数进行分组。
* 有节制地使用空行对函数中的代码进行逻辑分段。
* 一组相关的单行语句之间可以省略空行。

### 空格[^whitespace-in-expressions-and-statements]
* 括号内端无空格

    正例：
    ```
    spam(ham[1], {eggs: 2})
    ```
    反例：
    ```
    spam( ham[ 1 ], { eggs: 2 } )
    ```
* 右括号和拖尾逗号(trailing comma)之间无空格

    正例：
    ```
    foo = (0,)
    ```
    反例：
    ```
    bar = (0, )
    ``` 
* 逗号、分号、冒号前无空格，其后应有空格（除非在行尾）

    正例：
    ```
    if x == 4: print x, y; x, y = y, x
    ```
    反例：
    ```
    if x == 4 : print x , y ; x , y = y , x
    ```
    * 然而，若冒号作用类似二元操作符，其两侧应使用相同数量空格，除非某侧参数可省略，则对应空格同时省略。

        正例：
        ```
        ham[1:9], ham[1:9:3], ham[:9:3], ham[1::3], ham[1:9:]
        ham[lower:upper], ham[lower:upper:], ham[lower::step]
        ham[lower+offset : upper+offset]
        ham[: upper_fn(x) : step_fn(x)], ham[:: step_fn(x)]
        ham[lower + offset : upper + offset]
        ```    
    
        反例：
    
        ```
        ham[lower + offset:upper + offset]
        ham[1: 9], ham[1 :9], ham[1:9 :3]
        ham[lower : : upper]
        ham[ : upper]
        ```
* 参数列表、索引或切片的左括号前无空格

    正例：
    ```
    spam(1)
    
    dct['key'] = lst[index]
    ```
    反例：
    ```
    spam (1)
    
    dct ['key'] = lst [index]
    ```
* 勿用行间空格垂直对齐多行标记（如`:` `#` `=`等）

    正例：
    ```
    x = 1
    y = 2
    long_variable = 3
    
    dictionary = {
     "foo": 1,
     "long_name": 2,
     }
    ```    
    反例：
    ```
    x             = 1
    y             = 2
    long_variable = 3
    
    dictionary = {
     "foo"      : 1,
     "long_name": 2,
     }
    ```    
* 避免随意使用拖尾空格(trailing whitespace)，其令人难以察觉，容易造成困惑：比如说反斜杠后加上拖尾空格和换行符后将失去连接下一行的功能。
* 用于指定关键字参数或默认参数值的`=`两边无空格

    正例：
    ```
    def complex(real, imag=0.0):
        return magic(r=real, i=imag)
    ```    

    反例：
    ```
    def complex(real, imag = 0.0):
        return magic(r = real, i = imag)
    ``` 

    * 当函数默认值与函数注解(Function annotations)一起使用时，`=`两边有空格。

        正例：
        ```
        def munge(sep: AnyStr = None): ...
        def munge(input: AnyStr, sep: AnyStr = None, limit=1000): ...
        ```    

        反例：
        ```
        def munge(input: AnyStr=None): ...
        def munge(input: AnyStr, limit = 1000): ...
        ```    
* 最低优先级的二元操作符两边有且仅有一个空格，两侧务必保持一致。

    正例：
    ```
    i = i + 1
    submitted += 1
    x = x*2 - 1
    hypot2 = x*x + y*y
    c = (a+b) * (a-b)
    ```    

    反例：
    ```
    i=i+1
    submitted +=1
    x = x * 2 - 1
    hypot2 = x * x + y * y
    c = (a + b) * (a - b)
    ```
*   函数注解(Function annotations)遵循一般冒号样式规则，同时用于注解返回值的`->`两边有空格。

    正例：
    ```
    def munge(input: AnyStr): ...
    def munge() -> AnyStr: ...
    ```    

    反例：
    ```
    def munge(input:AnyStr): ...
    def munge()->PosInt: ...
    ```    
* 注释中每行以一个`#`和一个空格开始。
* 注释块中每句间隔两个空格。
* 行内注释与语句至少间隔两个空格。


### Shebang[^Shebang_Line]
根据 [PEP-394](http://www.python.org/dev/peps/pep-0394/)，程序的main文件应该以 `#!/usr/bin/python2` 或 `#!/usr/bin/python3` 开始。

### 编码[^source-file-encoding]
模块文件的头部包含UTF-8编码声明

```
# -*- coding: utf-8 -*-
```

### 导入[^imports]
* 每个导入独占一行

    正例： 
    ```
    import os
    import sys
    ```

    反例：
    ```
    import sys, os
    ```

    * 但这样是允许的：
        
        ```
        from subprocess import Popen, PIPE
        ``` 
* 导入应总置于文件顶部，位于模块注释和文档字符串之后，模块全局变量和常量之前。
* 导入应按照最通用到最不通用的顺序分组：

    1. 标准库导入
    2. 第三方库导入
    3. 应用程序特定导入

    * 分组之间放置空行
    * 每组分组中，应根据每个模块的完整包路径按字典序排序，忽略大小写[^imports-google]。

### 模块级元数据[^module-level-dunder-names]

* 诸如`__all__`、`__author__`、`__version__`等元数据应置于文档字符串之后以及除`from __future__ import`以外的所有导入之前。

* Python要求`from __future__ import`导入必须放置在除文档字符串以外的所有代码之前。

比如：
```
"""This is the example module.

This module does stuff.
"""

from __future__ import barry_as_FLUFL

__all__ = ['a', 'b', 'c']
__version__ = '0.1'
__author__ = 'Cardinal Biggles'

import os
import sys
```

## 字符串[^string-quotes]

* 在同一文件中，保持使用字符串引号的一致性。使用单引号`'`或双引号`"`引用字符串，并在同一文件中沿用。在字符串内可以使用另外一种引号，以避免在字符串中使用`\`。

* 文档字符串必须使用三重双引号`"""`([PEP-257](https://www.python.org/dev/peps/pep-0257/))。

* 多行字符串使用三重双引号`"""`而非三重单引号`'''`。当且仅当项目中使用单引号`'`来引用字符串时，才可能会使用三重`'''`为非文档字符串的多行字符串进行引用。不过要注意，通常用隐式行连接更清晰，因为多行字符串与代码其他部分的缩进方式不一致。

## 注释[^comments]
* 注释应该由完整的句子构成
* 单短语或单句注释首字母应大写，除非其开头为一以小写字母起始的标识符（永远不要修改标识符的大小写）。
* 短注释末尾句号可以省略
* 注释句间间隔两空格
* 除非极其确信，否则使用英语进行注释
* 英文写作请参照《[风格的要素](https://book.douban.com/subject/1451400/)》
* 绝不要描述代码。永远假设阅读代码的人比你更懂Python，他只是不知道你的代码要做什么。

### 使用注释块还是行内注释[^comments-google]
* 对于复杂的操作，应在其操作开始前写上若干行注释
* 对于非一目了然的代码，应在其行尾添加注释

```
# We use a weighted dictionary search to find out where i is in
# the array.  We extrapolate position based on the largest num
# in the array and the array size and then do binary search to
# get the exact number.

if i & (i-1) == 0:        # true iff i is a power of 2
```

### 注释块[^block-comments]
* 注释块通常应用于紧随其后的一些（或全部）代码，且缩进层次与这些代码相同。
* 注释块中每行以`#`和一个空格开始（除非其为注释内缩进文本）。

* 注释块通常由一个或多个由完整句子构成的段落组成，每句应以句号结束。
* 注释块内使用空注释行分割段落

### 行内注释[^inline-comments]
* 行内注释是和语句在同一行的注释
* 有节制地使用行内注释
* 行内注释应和语句至少间隔两个空格
* 行内注释应以`#`和一个空格开始

* 若语意明确，则行内注释是不必要的，不要这样做：
    ```
    x = x + 1                 # Increment x
    ```
    
    但有时这样是有效的：
    ```
    x = x + 1                 # Compensate for border
    ```


### TODO注释[^TODO_Comments]
* TODO注释开头为全大写"TODO"字符串，紧跟着是用括号括起来的你的名字、Email地址或其它标识符。 随后是一个可选的冒号。接着必须有一行注释，解释要做什么。
    例如：

    ```
    # TODO(kl@gmail.com): Use a "*" here for string repetition.
    # TODO(Zeke) Change this to use relations.
    ```
* 如果你的TODO是“将来做某事”的形式，那么请确保其包含了一个指定的日期（“2009年11月解决”）或者一个特定的事件（“等到所有的客户端都可以处理XML请求就移除这些代码”）。


### 文档字符串[^documentation-strings]
* 遵循 [PEP-257](http://www.python.org/dev/peps/pep-0257/)
* 为所有公共模块、函数、类和方法编写文档字符串。文档字符串对非公开方法不是必需的，但应该有一个描述该方法作用的注释，此注释应在`def`行后。

* 多行文档字符串应这样组织：
    * 首先是一行以句号、问号或惊叹号结尾的概述。 
    * 接着是一个空行。
    * 最后是文档字符串剩下的部分，它应该与首行第一个引号对齐。

    ```
    """Return a foobang
    
    Optional plotz says to frobnicate the bizbaz first.
    """
    ```
* 单行文档字符串结尾`"""`可在同一行。

#### 函数和方法以及生成器[^comments-google]
文档字符串是必需的，除非：

* 外部不可见
* 极其短小
* 简单明了

关于函数的各方面应在特定的小节中进行描述记录，每节应该以一个标题行开始，标题行以冒号结尾。 除标题行外，小节的其他内容应缩进两空格。若该函数为装饰器，则文档中应明确说明[^Function_and_Method_Decorators]。

* `Args:`
    
    列出每个参数的名字，并在名字后使用一个冒号和一个空格分隔对该参数的描述。如果描述太长超过行宽上限，使用2或4空格悬挂缩进（与文件其他部分保持一致）。描述应该包括所需的类型和含义。如果一个函数接受`*foo`（可变长度参数列表）或者`**bar` (任意关键字参数), 应该详细列出`*foo`和`**bar`

* `Returns:` 或 `Yields:`（用于生成器)
    
    描述返回值的类型和语义。若函数返回`None`，此部分可省略。

* `Raises:`
    
    列出与接口有关的所有异常。

例如：
```
def fetch_bigtable_rows(big_table, keys, other_silly_variable=None):
    """Fetches rows from a Bigtable.

    Retrieves rows pertaining to the given keys from the Table instance
    represented by big_table.  Silly things may happen if
    other_silly_variable is not None.

    Args:
        big_table: An open Bigtable Table instance.
        keys: A sequence of strings representing the key of each table row
            to fetch.
        other_silly_variable: Another optional variable, that has a much
            longer name than the other args, and which does nothing.

    Returns:
        A dict mapping keys to the corresponding table row data
        fetched. Each row is represented as a tuple of strings. For
        example:

        {'Serak': ('Rigel VII', 'Preparer'),
         'Zim': ('Irk', 'Invader'),
         'Lrrr': ('Omicron Persei 8', 'Emperor')}

        If a key from the keys argument is missing from the dictionary,
        then that row was not found in the table.

    Raises:
        IOError: An error occurred accessing the bigtable.Table object.
    """
    pass
```

#### 类[^comments-google]
类应该在其定义下有一段描述该类的文档字符串。 如果类有公共属性，那么文档中应该有一个描述属性的小节，并且遵循函数参数文档的格式。

例如：
```
class SampleClass(object):
    """Summary of class here.

    Longer class information....
    Longer class information....

    Attributes:
        likes_spam: A boolean indicating if we like SPAM or not.
        eggs: An integer count of the eggs we have laid.
    """

    def __init__(self, likes_spam=False):
        """Inits SampleClass with blah."""
        self.likes_spam = likes_spam
        self.eggs = 0

    def public_method(self):
        """Performs operation blah."""
```

如果使用注释编写类属性的文档，在`#`符号后添加一个冒号`:`[^comments-pocoo]:
```
class User(object):
    #: the name of the user as unicode string
    name = Column(String)
    #: the sha1 hash of the password + inline salt
    pw_hash = Column(String)
```


## 命名[^naming-conventions]

### 覆盖原则[^overriding-principle]
作为API的命名应该遵循使用惯例而非实现惯例。

### 应该避免的名称[^names-to-avoid]
* 单字符名称
    * 除了计数器和迭代器
    * 永远不要用单字符"l"、"O"或"I"
* 带连字符`-`的包/模块名[^Naming]

* 双下划线开头并结尾的名称（Python保留，例如`__init__`）[^Naming]

### 惯例[^descriptive-naming-styles]
* `_single_leading_underscore`：单下划线开头表示模块变量或函数是受保护的（`import * from`时不会包含）。

* `single_trailing_underscore_`：单下划线结尾用于避免与Python关键词冲突。

* `__double_leading_underscore`：双下划线开头的实例变量或方法表示类内私有， 无法直接访问此方式命名的属性。

* `__double_leading_and_trailing_underscore__`：双下划线开头且双下划线结尾表示存在于用户控制的(user-controlled)命名空间的特殊(magic) 对象或属性。比如`__init__`、`__import__`和 `__file__`等。永远不要创建此命名，仅根据文档进行使用。


### 模块名和包名[^package-and-module-names]
* 模块名使用简短的全小写命名，可包含下划线
* 不鼓励包名使用下划线

### 类名[^class-names]
类名为首字母大写单词串(CapWords)

### Type variable names[^type-variable-names]

Names of type variables introduced in [PEP 484](https://www.python.org/dev/peps/pep-0484/) should normally use CapWords preferring short names: `T` , `AnyStr` , `Num` . It is recommended to add suffixes `_co` or `_contra` to the variables used to declare covariant or contravariant behavior correspondingly. Examples:
```
from typing import TypeVar

VT_co = TypeVar('VT_co', covariant=True)
KT_contra = TypeVar('KT_contra', contravariant=True)
```

### 异常名[^exception-names]
* 与类命名约定一致
* 如果异常为Error，使用后缀"Error"

### 全局变量名[^global-variable-names]
* 与函数命名约定一致

### 函数名[^function-names]
* 全小写命名，可包含下划线
* 驼峰式命名仅被允许用于这种风格已占优势的情况（如: threading.py) 以便保持后向兼容

#### 函数和方法的参数[^function-and-method-arguments]

* 类方法：`cls`为第一个参数

* 实例方法：`self`为第一个参数

* `property`函数中使用匿名函数时，匿名函数的第一个参数可用`x`替代，例如：`display_name = property(lambda x: x.real_name or x.username)`[^naming-conventions]。

### 方法名和实例变量[^method-names-and-instance-variables]
* 全小写命名，可包含下划线
* 如果类`Foo`有一个属性名为 `__a`，不能以`Foo.__a`直接访问该属性 (可通过`Foo._Foo__a`访问)。 通常，双前导下划线应该只用来避免与可被继承的类中的属性发生命名冲突。

* 预编译的正则表达式命名方式为`name_re`[^naming-conventions-pocoo]。

### 常量[^constants]
全大写命名，可包含下划线

### 总结[^naming]
|Type|Public|Internal|
|--- |--- |--- |
|Modules|`module_name`|`_module_name`|
|Packages|`package_name`||
|Classes|`ClassName`|`_ClassName`|
|Exceptions|`ExceptionName`||
|Functions|`function_name()`|`_function_name()`|
|Global/Class Constants|`GLOBAL_CONSTANT_NAME`|`_GLOBAL_CONSTANT_NAME`|
|Global/Class Variables|`global_var_name`|`_global_var_name`|
|Instance Variables|`instance_var_name`|`_instance_var_name` (protected) or `__instance_var_name` (private)|
|Method Names|`method_name()`|`_method_name()` (protected) or `__method_name()` (private)|
|Function/Method Parameters|`function_parameter_name`||
|Local Variables|`local_var_name`||



[^a-foolish-consistency-is-the-hobgoblin-of-little-minds]: [A Foolish Consistency is the Hobgoblin of Little Minds - PEP 8](https://www.python.org/dev/peps/pep-0008/#a-foolish-consistency-is-the-hobgoblin-of-little-minds)

[^code-lay-out]: [Code lay-out - PEP 8](https://www.python.org/dev/peps/pep-0008/#code-lay-out)

[^other-recommendations]: [Other Recommendations - PEP 8](https://www.python.org/dev/peps/pep-0008/#other-recommendations)

[^indentation]: [Indentation - PEP 8](https://www.python.org/dev/peps/pep-0008/#indentation)

[^tabs-or-spaces]: [Tabs or Spaces? - PEP 8](https://www.python.org/dev/peps/pep-0008/#tabs-or-spaces)

[^maximum-line-length]: [Maximum Line Length - PEP 8](https://www.python.org/dev/peps/pep-0008/#maximum-line-length)

[^Line_length]: [Line length - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Line_length#Line_length)

[^should-a-line-break-before-or-after-a-binary-operator]: [Should a line break before or after a binary operator? - PEP 8](https://www.python.org/dev/peps/pep-0008/#should-a-line-break-before-or-after-a-binary-operator)

[^general-layout]: [General Layout - The Pocoo Style Guide](http://www.pocoo.org/internal/styleguide/#general-layout)

[^Semicolons]: [Semicolons - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?#Semicolons)

[^Parentheses]: [Parentheses - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Parentheses#Parentheses)

[^when-to-use-trailing-commas]: [When to use trailing commas - PEP 8](https://www.python.org/dev/peps/pep-0008/#when-to-use-trailing-commas)

[^blank-lines]: [Blank Lines - PEP 8](https://www.python.org/dev/peps/pep-0008/#blank-lines)

[^Blank_Lines]: [Blank Lines - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Blank_Lines#Blank_Lines)

[^whitespace-in-expressions-and-statements]: [Whitespace in Expressions and Statements - PEP 8](https://www.python.org/dev/peps/pep-0008/#whitespace-in-expressions-and-statements)

[^Shebang_Line]: [Shebang Line - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Shebang_Line#Shebang_Line)

[^source-file-encoding]: [Source File Encoding - PEP 8](https://www.python.org/dev/peps/pep-0008/#source-file-encoding)

[^imports]: [Imports - PEP 8](https://www.python.org/dev/peps/pep-0008/#imports)

[^imports-google]: [Imports - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Imports#Imports)

[^module-level-dunder-names]: [Module level dunder names - PEP 8](https://www.python.org/dev/peps/pep-0008/#module-level-dunder-names)

[^string-quotes]: [String Quotes - PEP 8](https://www.python.org/dev/peps/pep-0008/#string-quotes)

[^comments]: [Comments - PEP 8](https://www.python.org/dev/peps/pep-0008/#comments)

[^comments-google]: [Comments - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Comments#Comments)

[^Function_and_Method_Decorators]: [Function and Method Decorators - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Function_and_Method_Decorators#Function_and_Method_Decorators)

[^block-comments]: [Block Comments - PEP 8](https://www.python.org/dev/peps/pep-0008/#block-comments)

[^inline-comments]: [Inline Comments - PEP 8](https://www.python.org/dev/peps/pep-0008/#inline-comments)

[^TODO_Comments]: [TODO Comments - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=TODO_Comments#TODO_Comments)

[^documentation-strings]: [Documentation Strings - PEP 8](https://www.python.org/dev/peps/pep-0008/#documentation-strings)

[^comments-pocoo]: [Comments - The Pocoo Style Guide](http://www.pocoo.org/internal/styleguide/#comments)

[^naming-conventions]: [Naming Conventions - PEP 8](https://www.python.org/dev/peps/pep-0008/#naming-conventions)

[^overriding-principle]: [Overriding Principle - PEP 8](https://www.python.org/dev/peps/pep-0008/#overriding-principle)

[^names-to-avoid]: [Names to Avoid - PEP 8](https://www.python.org/dev/peps/pep-0008/#names-to-avoid)

[^Naming]: [Naming - Google Python Style Guide](https://google.github.io/styleguide/pyguide.html?showone=Naming#Naming)

[^descriptive-naming-styles]: [Descriptive: Naming Styles - PEP 8](https://www.python.org/dev/peps/pep-0008/#descriptive-naming-styles)

[^naming-conventions-pocoo]: [Naming Conventions - The Pocoo Style Guide](http://www.pocoo.org/internal/styleguide/#naming-conventions)

[^package-and-module-names]: [Package and Module Names - PEP 8](https://www.python.org/dev/peps/pep-0008/#package-and-module-names)

[^class-names]: [Class Names - PEP 8](https://www.python.org/dev/peps/pep-0008/#class-names)

[^type-variable-names]: [Type variable names - PEP 8](https://www.python.org/dev/peps/pep-0008/#type-variable-names)

[^exception-names]: [Exception Names - PEP 8](https://www.python.org/dev/peps/pep-0008/#exception-names)

[^global-variable-names]: [Global Variable Names - PEP 8](https://www.python.org/dev/peps/pep-0008/#global-variable-names)

[^function-names]: [Function Names - PEP 8](https://www.python.org/dev/peps/pep-0008/#function-names)

[^function-and-method-arguments]: [Function and method arguments - PEP 8](https://www.python.org/dev/peps/pep-0008/#function-and-method-arguments)

[^method-names-and-instance-variables]: [Method Names and Instance Variables - PEP 8](https://www.python.org/dev/peps/pep-0008/#method-names-and-instance-variables)

[^constants]: [Constants - PEP 8](https://www.python.org/dev/peps/pep-0008/#constants)
