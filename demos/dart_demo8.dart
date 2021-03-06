// 库的引用
// 1、import
// import语句用来导入一个库
// 后面跟一个字符串形式的Uri来指定表示要引用的库
//dart:前缀表示Dart的标准库，如dart:io、dart:html
import 'dart:math';

//当然，你也可以用相对路径或绝对路径的dart文件来引用
import 'lib/student/student.dart';

//Pub包管理系统中有很多功能强大、实用的库，可以使用前缀 package:
import 'package:args/args.dart';
// 当各个库有命名冲突的时候，可以使用as关键字来使用命名空间

import 'lib/student/student.dart' as Stu;

Stu.Student s = new Stu.Student();

// show关键字可以显示某个成员（屏蔽其他）
// hide关键字可以隐藏某个成员（显示其他）
import 'lib/student/student.dart' show Student, Person;

import 'lib/student/student.dart' hide Person;



// 2、library
// library定义这个库的名字
// 但库的名字并不影响导入，因为import语句用的是字符串Uri

library person;



// 4、export
// 你可以使用export关键字导出一个更大的库

library math;

export 'random.dart';
export 'point.dart';
// 也可以导出部分组合成一个新库

library math;

export 'random.dart' show Random;
export 'point.dart' hide Sin;


// 5、利用Pub管理自己的库
// 在第一小节中介绍了，可以用以下方法引用自己的库

// import 'lib/student/student.dart';
// 那么如果我想要用Pub来管理自己的库
// 以便引用简洁，并且可以在yaml文件中很好的控制版本信息该怎么部署？
// 下面简单总结一下

// （1）新建库student
// 其中根目录的命名为”库名-版本号“
// 根目录中包含一个yaml文件和一个lib文件夹

// ......


