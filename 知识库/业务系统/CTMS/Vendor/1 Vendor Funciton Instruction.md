# Modules
__*Vendor相关的功能主要用于记录试验外部人员信息，其功能分布如下：*__
### 1 Library
Library是一个针对申办方的公用模板模块，其中的数据可以供所有试验使用。与Vendor相关的模块主要是Reference Data，其中需要使用的数据有Region，Country和Vendor Service Type。
##### 1.1 Reference Data-Region
Region中是地区信息，用户可以自定义。
##### 1.2 Reference Data-Country/Region
Country中是国家信息，用户可以自定义。
##### 1.3 Reference Data-Vendor Service Type
Vendor Service Type中是供应商服务类型，用户可以自定义。
### 2 Entity
##### 2.1 Vendor
Vendor中是供应商信息，用户可以自定义。
其Region，Country和Vendor Service Type的数据来源于Reference Data；Contacts数据来源于Staff。
##### 2.2 Staff
Satff中是成员信息，用户可以自定义。其Region，Country的数据来源于Reference Data。
### 3 Study Management
##### 3.1 Study Setup and Information Improvement-Role Setting
Role Setting中可以自定义角色类型，主要分为Study和Site Level，用于保存外部人员的和角色信息。
##### 3.2 Study Setup and Information Improvement-Participants
Participants可以将Staff和Role Setting中的数据进行关联，因此其主要用于存放为外部人员的角色信息和基础数据。






