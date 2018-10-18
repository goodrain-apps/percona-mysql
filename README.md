| 应用名称 | Mysql                                                     |
| -------- | --------------------------------------------------------- |
| 简述     | 基于Percona分支制作的Mysql单节点应用，支持全量mysql配置。 |
| 版本列表 | 5.5.61 5.6.41 5.7.23                                      |
| 源码地址 | https://github.com/goodrain-apps/percona-mysql.git        |
| 社区地址 | http://t.goodrain.com/t/percona-mysql/494                 |

## 关于Percona XtraDB

Percona XtraDB 是 InnoDB 存储引擎的增强版，被设计用来更好的使用更新计算机硬件系统的性能，同时还包含有一些在高性能环境下的新特性。XtraDB 存储引擎是完全的向下兼容，在 MariaDB 中，XtraDB 存储引擎被标识为”ENGINE=InnoDB”，这个与 InnoDB 是一样的，所以你可以直接用XtraDB 替换掉 InnoDB 而不会产生任何问题。Percona XtraDB 包含有所有 InnoDB’s 健壮性，可依赖的 ACID 兼容设计和高级 MVCC 架构。XtraDB 在 InnoDB 的坚实基础上构建，使 XtraDB 具有更多的特性，更好调用，更多的参数指标和更多的扩展。从实践的角度来看，XtraDB 被设计用来在多核心的条件下更有效的使用内存和更加方便，更加可用。新的特性被用来降低 InnoDB 的局限性。性能层面，XtraDB与内置的MySQL 5.1 InnoDB 引擎相比，它每分钟可处理2.7倍的事务。

Percona Server由领先的MySQL咨询公司Percona发布。Percona Server是一款独立的数据库产品，其可以完全与MySQL兼容，可以在不更改代码的情况了下将存储引擎更换成XtraDB 。

Percona团队的最终声明是“Percona Server是由Oracle发布的最接近官方MySQL Enterprise发行版的版本”，因此与其他更改了大量基本核心MySQL代码的分支有所区别。Percona Server的一个缺点是他们自己管理代码，不接受外部开发人员的贡献，以这种方式确保他们对产品中所包含功能的控制。

官网地址：<http://www.percona.com/>

## 关于配置

当前应用支持基于环境变量对Mysql配置文件进行配置，配置规则如下：

例如设置环境变量： MYSQLC_MYSQLD_PORT = 3306

生成配置文件如下：

```
[mysqld]
 port = 3306
```

其他配置类似，此功能基于[https://github.com/barnettZQG/env2file](https://github.com/barnettZQG/env2file)实现。

## 关于扩展

安装本应用，你可以用于创建Mysql主从集群或直接用于业务系统。本应用基于Rainbond平台发布，内部连接方式通过环境变量 `MYSQL_HOST` `MYSQL_PORT` `MYSQL_USER ` `MYSQL_PASSWORD` `MYSQL_DATABASE`定义。

