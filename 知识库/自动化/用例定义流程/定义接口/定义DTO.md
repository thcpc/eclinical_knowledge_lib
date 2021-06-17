# 一. DTO规范

## 1. 存放位置
根目录为dto,子目录按接口请求的路径划分
例如
请求：```http://200.200.101.38/api/admin/user```
则 package命名方式,如下图
![[Pasted image 20210614103956.png]]

## 2.命名规范
DTO 分为3种类型
* 请求类型 最后命名为xxxReqDTO
 ![[Pasted image 20210614111042.png]]
* 响应类型 最后命名为xxxRespDTO
![[Pasted image 20210614111609.png]]
* 对象类型 最后命名为DTO
该类型针对是请求或响应DTO 组合不止是标准类型，需要自定义类型的情况
![[Pasted image 20210614112548.png]]
![[Pasted image 20210614112718.png]]
最外层即1层为响应类型以RespDTO命名，其余只有DTO命名即可，请求类型同理

