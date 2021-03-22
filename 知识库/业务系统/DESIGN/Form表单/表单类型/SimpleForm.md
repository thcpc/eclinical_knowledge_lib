# Page
![[simpleForm.png]]

# 进入页面调用的接口
### 1. api/design/crf/form/`crf_form_id`
例子:  `http://200.200.101.115/api/design/crf/form/4`
作用: 返回表单的信息

### 2. api/design/crf/simple-form/items/`crf_form_id`
例子: `http://200.200.101.115/api/design/crf/simple-form/items/4`
作用: 返回该表单下所有Item的信息

### 3. api/design/crf/dataset/variables/`crf_form_id`
例子: `http://200.200.101.115/api/design/crf/dataset/variables/4`
作用: 返回该表单下所有变量的信息

### 4. api/design/crf/dataset/`crf_form_id`?isUnique=true
例子: `http://200.200.101.115/api/design/crf/dataset/4?isUnique=true`
作用:  返回Dataset信息

# 支持的控件
[[CheckBox]],  [[Radio]]