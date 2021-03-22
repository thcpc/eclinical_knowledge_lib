

# 原型图
* ```CTMS 2021/PD/PD-Setting-Study-No```

# 3层控制
```mermaid
graph LR

A[表单是否需要Review]-->b[哪些Item需要Review是否能够Edit]-->C[指定由谁来Review]
```

# 1.  选择模板
Select a Template.
* 新增的选择模板
* 实例后切换模板(20210331 无此功能)
Clone Data For(20210331 无此功能)
# 2. PD Record need to be Reviewed
表单是否需要Review
设置PD 是否需要 review
* Yes  显示 [[PD Setting#3 Set Review Layout| Set Fields 和 Set Condition]]
* No   结束

# 3. Set Review Layout
* Set Fields  设置Item项 是否需要 Reviewed 和 Edit 
* Set Condition


### 3.2 Set Fields
哪些Item需要Review是否能够Edit
* Field name  显示Item的
* Review checkBox 设置该item是否需要review
* Edit checkBox 设置该item是否可以被编辑

Edit 可选的前置条件： Review 选择
Edit 权限控制，首先需要设置PD的可写权限(Portal中控制)，然后再根据Edit 权限来确定是否可以编辑

### 3.3 Set Condition
指定由谁来Review
* 只能显示Code List的 Question
* Set Condition应该也有版本，对应PD template(20210331未实现)







