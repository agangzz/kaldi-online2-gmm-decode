# kaldi-online2-gmm-decode
目前kaldi online2的解码均为wav形式，修改支持语音流的形式

# 前言
在开发过程中，发现相同的训练模型，采用online-gmm-decode-faster解码会出现一段语音流中会出现某些语音识别不成功或杂音识别成命令词的情况，尝试使用online2-wav-gmm-latgen-faster解码发现正确率提高很多，未被识别的语音段也能够识别出相应的命令词

注： 此版本是采用mips嵌入式交叉工具链编译生成的解码器
