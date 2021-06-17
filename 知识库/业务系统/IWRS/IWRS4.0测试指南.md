            

前言

IWRS4.0的测试主要是保证在正确的随机参数下产生正确的随机结果，能够根据随机结果正确的取号，而在错误的随机参数下不能产生随即结果。

下面从IWRS主要操作流程的角度提取IWRS测试要点。

# 1. 获取branch和arm

当基础设置中分支和臂的类型是手动时，需要用户手动添加分支和臂的信息；

分支和臂的类型是自动（System）时，分支和臂的来源是EDC，不需要用户自己设置。

# 2. 设置臂和分支的参数

为Arm设置治疗代码和药物描述——从业务的角度，主要是不同的Arm采用了不同的治疗方案，为试验结束后受试者揭盲时查看。

为Branch设置Arm比例——从业务的角度，主要是不同的branch（一个branch在一个时刻只能用一个随机方案）中受试者进入不同的Arm的人数不同。——而从系统的角度，这仅是用来约束方案中限制每个block（包含block的随即方案）中的arm比例符合这个设置，或者样本（试验或site）中的arm比例符合这个设置。

# 3. 设置随机方案

在新建随机方案时，有必要说明一下不同的参数对随机方案和随机结果的影响，如下：

Branch: 一个branch在一个时刻只能启用一个随机方案

Method和Type: Type为Manual Upload时，可以采用的随机方法是Block、Stratified、Block Stratified、Complete；Type为System Generate时，可以采用的随机方法是Block、Block Stratified、Complete。

Multi-Central: Yes——试验是用于多中心的试验；No——试验是用于单中心的试验。

根据这些参数的不同，产生了14种不同方式的随机方法，如下：

## 非多中心的区组随机方法

当试验是适用于多中心/单中心的试验，且中心不是分配区组的条件，即不同中心可分配在同一个区组 中时，可以采用这种随机方法。

采用此种随机方法时，每个中心的不需设置随机样本量。如下图所示：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image002.jpg)

图 4.2.1.2.1.1

必填字段：随机方法、多中心（是/否）、受试者数量（自动从CTMS获取）、总体样本数量、随机长度、起始编号、随机种子、区组大小。

算法：总样本量（20）÷ 区组大小（4）\=5个区组

每个区组里面有4个随机号，2个号属于Arm 1，2个号属于Arm 2，因为我们在假设条件中设置的臂比例为1：1。

随机结果如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image004.jpg)

图 4.2.1.2.1.2

## 多中心的区组随机方法

当试验是适用于多中心的试验，且中心成为分配区组的条件，即不同中心不可分配在同一个区组 中时，可以采用这种随机方法。

采用此种随机方法时，每个中心的随机样本量不可超过总样本量。如下图所示：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image006.jpg)

图 4.2.1.2.2.1

必填字段：随机方法、多中心（是/否）、受试者数量（自动从CTMS获取）、总体样本数量、随机长度、起始编号、随机种子、区组大小、分层设置中的各个中心的随机人数限制。

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image007.jpg)

图 4.2.1.2.2.2

算法：总样本量（36）÷ 区组大小（4）\=9个区组

每个区组里面有4个随机号，2个号属于Arm 1，2个号属于Arm 2，因为我们在假设条件中设置的臂比例为1：1。

随机结果如下图（一个区组只能被一个中心占据）：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image009.jpg)

图 4.2.1.2.2.3

## 非多中心的分层区组随机方法

当试验是适用于多中心/单中心的试验，且中心不是分配区组的条件，即不同中心可分配在同一个区组 中，同时需要根据一些分层因素设置随机方案时，可以采用这种随机方法。

采用此种随机方法时，每个中心的不需设置随机样本量。如下图所示：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image011.jpg)

图 4.2.1.2.3.1

必填字段：随机方法、多中心（是/否）、受试者数量（自动从CTMS获取）、总体样本数量、随机长度、起始编号、随机种子、区组大小、分层设置中的随机因子及其比例的设置。

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image013.jpg)

图 4.2.1.2.3.![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image015.jpg)

图 4.2.1.2.3.3

算法：总样本量（72）÷ 区组大小（6）\=12个区组

每个区组里面有5个随机号，4个号属于Arm 3，2个号属于Arm 4，因为我们在假设条件中设置的臂比例为2：1。

随机结果如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image017.jpg)

图 4.2.1.2.3.4

## 多中心的分层区组随机方法

当试验是适用于多中心的试验，且中心成为分配区组的条件，即不同中心不可分配在同一个区组 中，同时需要根据一些分层因素设置随机方案时，可以采用这种随机方法。

采用此种随机方法时，每个中心的随机样本量不可超过总样本量。

提示：多中心的分层区组随机方法可以应用于整个试验或每个中心——两者的区别在于：当应用于每个中心的时候每个中心设置的随机限制必须能够被分层比例除尽。

情景一：多中心的分层区组随机方法应用于整个试验。如下图所示：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image019.jpg)

图 4.2.1.2.4.1

必填字段：随机方法、多中心（是/否）、受试者数量（自动从CTMS获取）、总体样本数量、随机长度、起始编号、分层比例应用、随机种子、区组大小、分层设置中的随机因子及其比例的设置。

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image021.jpg)

图 4.2.1.2.4.2

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image023.jpg)

图 4.2.1.2.4.3

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image025.jpg)

图 4.2.1.2.4.4

算法：总样本量（12）÷ 区组大小（6）\=2个区组

每个区组里面有4个随机号，4个号属于Arm 3，2个号属于Arm 4，因为我们在假设条件中设置的臂比例为2：1。

此种情景产生的随机结果如下：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image027.jpg)

图 4.2.1.2.4.5

情景二：多中心的分层区组随机方法应用于每个中心。如下图所示：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image029.jpg)

图 4.2.1.2.4.6

必填字段：随机方法、多中心（是/否）、受试者数量（自动从CTMS获取）、总体样本数量、随机长度、起始编号、分层比例应用、随机种子、区组大小、分层设置中的随机因子及其比例的设置。

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image031.jpg)

图 4.2.1.2.4.7

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image033.jpg)

图 4.2.1.2.4.7

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image035.jpg)

图 4.2.1.2.4.8

算法：总样本量（18）÷ 区组大小（6）\=3个区组

每个区组里面有4个随机号，4个号属于Arm 3，2个号属于Arm 4，因为我们在假设条件中设置的臂比例为2：1。

此种情景产生的随机结果如下：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image037.jpg)

图 4.2.1.2.4.9

## 完全随机方法

当试验不需要适用于多中心，且随机结果不受区组的限制时，可以采用这种随机方法。

采用此种随机方法时，每个中心的不需设置随机样本量。如下图所示：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image039.jpg)

图 4.2.1.2.5.1

必填字段：随机方法、多中心（是/否）、受试者数量（自动从CTMS获取）、总体样本数量、随机长度、起始编号、随机种子。

随机结果如下图（总随机结果的臂比例为2:1，因为我们在假设条件中设置的臂比例为2:1）：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image041.jpg)

图 4.2.1.2.5.2

## 上传方式的非多中心区组分层随机

对于上传方式的区组分层随机方法，需要在进入随机方案的详情页面之后，首先设置分层信息，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image043.jpg)

图 4.2.1.2.6.1

然后上传相应的包含Block ID，SN，Arm Name，Strata，Randomization ID，Num的随机结果文件，如下图：

【注意】：随机方案在inactive状态下可以多次上传随机结果文件，且上传的随机结果文件应当是和之前的随机结果文件中的Randomization ID，Num，Block ID没有重复的数据；随机方案在inactive状态，且上传的随机结果文件没有取过号的情况下可以删除随机结果文件；点击随机结果文件链接可以将文件下载到本地。

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image045.jpg)

图 4.2.1.2.6.3

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image047.jpg)

图 4.2.1.2.6.4

拖动IWRS需要的字段正确匹配上传文件中的字段，拖动IWRS需要的臂正确匹配上传文件中的臂，拖动IWRS需要的分层条件正确匹配上传文件中的分层条件，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image049.jpg)

图 4.2.1.2.6.5

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image051.jpg)

图 4.2.1.2.6.6

然后点击确定映射关系，在提示弹窗中点击【确认】按钮，生成随机结果，确认随机结果，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image053.jpg)

图 4.2.1.2.6.6

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image055.jpg)

图 4.2.1.2.6.7

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image057.jpg)

图 4.2.1.2.6.8

## 上传方式的非多中心区组随机

对于上传方式的区组随机方法，需要在进入随机方案的详情页面之后，首先设置分层信息及其比例，然后上传相应的包含Block，SN，Arm Name，Randomization ID的随机结果文件，拖动IWRS需要的字段正确匹配上传文件中的字段，拖动IWRS需要的臂正确匹配上传文件中的臂，然后点击确定映射关系，在提示弹窗中点击【确认】按钮，生成随机结果，确认随机结果，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image059.jpg)

图 4.2.1.2.7.1

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image061.jpg)

图 4.2.1.2.7.2

## 上传方式的非多中心分层随机

对于上传方式的区组分层随机方法，需要在进入随机方案的详情页面之后，首先设置分层信息及其比例，然后上传相应的包含Arm Name，Strata，Randomization ID的随机结果文件，拖动IWRS需要的字段正确匹配上传文件中的字段，拖动IWRS需要的臂正确匹配上传文件中的臂，拖动IWRS需要的分层条件正确匹配上传文件中的分层条件，然后点击确定映射关系，在提示弹窗中点击【确认】按钮，生成随机结果，确认随机结果，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image063.jpg)

图 4.2.1.2.8.1

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image065.jpg)

图 4.2.1.2.8.2

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image067.jpg)

图 4.2.1.2.8.3

## 上传方式的非多中心完全随机

对于上传方式的区组分层随机方法，需要在进入随机方案的详情页面之后，首先设置分层信息及其比例，然后上传相应的包含Arm Name， Randomization ID的随机结果文件，拖动IWRS需要的字段正确匹配上传文件中的字段，拖动IWRS需要的臂正确匹配上传文件中的臂，然后点击确定映射关系，在提示弹窗中点击【确认】按钮，生成随机结果，确认随机结果，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image069.jpg)

图 4.2.1.2.9.1

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image071.jpg)

图 4.2.1.2.9.2

## 上传方式的多中心区组分层随机

对于上传方式的区组分层随机方法，需要在进入随机方案的详情页面之后，首先设置分层信息及其比例，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image072.jpg)

图 4.2.1.2.6.1

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image074.jpg)

图 4.2.1.2.6.2

然后上传相应的包含Block，SN，Arm Name，Strata，Randomization ID，Site的随机结果文件，拖动相应的字段匹配后，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image076.jpg)

图 4.2.1.2.6.5

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image078.jpg)

图 4.2.1.2.6.6

然后点击确定映射关系，在提示弹窗中点击【确认】按钮，生成随机结果，确认随机结果，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image080.jpg)

## 上传方式的多中心区组随机

对于上传方式的区组随机方法，需要在进入随机方案的详情页面之后，首先设置分层信息及其比例，然后上传相应的包含Block，SN，Arm Name，Randomization ID的随机结果文件，拖动IWRS需要的字段正确匹配上传文件中的字段，拖动IWRS需要的臂正确匹配上传文件中的臂，然后点击确定映射关系，在提示弹窗中点击【确认】按钮，生成随机结果，确认随机结果，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image081.jpg)

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image082.jpg)

图 4.2.1.2.7.1

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image083.jpg)

图 4.2.1.2.7.2

## 上传方式的多中心分层随机

对于上传方式的区组分层随机方法，需要在进入随机方案的详情页面之后，首先设置分层信息及其比例，然后上传相应的包含Arm Name，Strata，Randomization ID的随机结果文件，拖动IWRS需要的字段正确匹配上传文件中的字段，拖动IWRS需要的臂正确匹配上传文件中的臂，拖动IWRS需要的分层条件正确匹配上传文件中的分层条件，然后点击确定映射关系，在提示弹窗中点击【确认】按钮，生成随机结果，确认随机结果，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image084.jpg)

图 4.2.1.2.8.1

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image085.jpg)

图 4.2.1.2.8.2

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image086.jpg)

图 4.2.1.2.8.3

## 上传方式的多中心完全随机

对于上传方式的区组分层随机方法，需要在进入随机方案的详情页面之后，首先设置分层信息及其比例，然后上传相应的包含Arm Name， Randomization ID的随机结果文件，拖动IWRS需要的字段正确匹配上传文件中的字段，拖动IWRS需要的臂正确匹配上传文件中的臂，然后点击确定映射关系，在提示弹窗中点击【确认】按钮，生成随机结果，确认随机结果，如下图：

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image087.jpg)

图 4.2.1.2.9.1

![](file:///C:\Users\yuanling.tan\AppData\Local\Temp\msohtmlclip1\03\clip_image088.jpg)

图 4.2.1.2.9.2