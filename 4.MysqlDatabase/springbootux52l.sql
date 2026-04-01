/*
 Navicat Premium Dump SQL

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3306
 Source Schema         : springbootux52l

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 01/04/2026 17:52:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banjixinxi
-- ----------------------------
DROP TABLE IF EXISTS `banjixinxi`;
CREATE TABLE `banjixinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `keshi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课时',
  `xueqi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学期',
  `nianxian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '年限',
  `shangkedidian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '上课地点',
  `jiaoshigonghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `crossuserid` bigint NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint NULL DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679730201121 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '班级信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banjixinxi
-- ----------------------------
INSERT INTO `banjixinxi` VALUES (61, '2024-03-25 15:35:29', '课程名称1', '课时1', '学期1', '年限1', '上课地点1', '教师工号1', '教师姓名1', '学号1', '学生姓名1', 1, 1);
INSERT INTO `banjixinxi` VALUES (62, '2024-03-25 15:35:29', '课程名称2', '课时2', '学期2', '年限2', '上课地点2', '教师工号2', '教师姓名2', '学号2', '学生姓名2', 2, 2);
INSERT INTO `banjixinxi` VALUES (63, '2024-03-25 15:35:29', '课程名称3', '课时3', '学期3', '年限3', '上课地点3', '教师工号3', '教师姓名3', '学号3', '学生姓名3', 3, 3);
INSERT INTO `banjixinxi` VALUES (64, '2024-03-25 15:35:29', '课程名称4', '课时4', '学期4', '年限4', '上课地点4', '教师工号4', '教师姓名4', '学号4', '学生姓名4', 4, 4);
INSERT INTO `banjixinxi` VALUES (65, '2024-03-25 15:35:29', '课程名称5', '课时5', '学期5', '年限5', '上课地点5', '教师工号5', '教师姓名5', '学号5', '学生姓名5', 5, 5);
INSERT INTO `banjixinxi` VALUES (66, '2024-03-25 15:35:29', '课程名称6', '课时6', '学期6', '年限6', '上课地点6', '教师工号6', '教师姓名6', '学号6', '学生姓名6', 6, 6);
INSERT INTO `banjixinxi` VALUES (67, '2024-03-25 15:35:29', '课程名称7', '课时7', '学期7', '年限7', '上课地点7', '教师工号7', '教师姓名7', '学号7', '学生姓名7', 7, 7);
INSERT INTO `banjixinxi` VALUES (68, '2024-03-25 15:35:29', '课程名称8', '课时8', '学期8', '年限8', '上课地点8', '教师工号8', '教师姓名8', '学号8', '学生姓名8', 8, 8);
INSERT INTO `banjixinxi` VALUES (1679730201120, '2024-03-25 15:43:20', '英语语法', '20课时', '下学期', '2022年', '203教室', '22', '陈红', '11', '王强', 1679729965039, 1679730152645);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for jiaoshi
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '教师工号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jiaoshigonghao`(`jiaoshigonghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679729965040 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '教师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES (21, '2024-03-25 15:35:29', '教师工号1', '123456', 'upload/jiaoshi_touxiang1.jpg', '教师姓名1', '男', '13823888881', '773890001@qq.com');
INSERT INTO `jiaoshi` VALUES (22, '2024-03-25 15:35:29', '教师工号2', '123456', 'upload/jiaoshi_touxiang2.jpg', '教师姓名2', '男', '13823888882', '773890002@qq.com');
INSERT INTO `jiaoshi` VALUES (23, '2024-03-25 15:35:29', '教师工号3', '123456', 'upload/jiaoshi_touxiang3.jpg', '教师姓名3', '男', '13823888883', '773890003@qq.com');
INSERT INTO `jiaoshi` VALUES (24, '2024-03-25 15:35:29', '教师工号4', '123456', 'upload/jiaoshi_touxiang4.jpg', '教师姓名4', '男', '13823888884', '773890004@qq.com');
INSERT INTO `jiaoshi` VALUES (25, '2024-03-25 15:35:29', '教师工号5', '123456', 'upload/jiaoshi_touxiang5.jpg', '教师姓名5', '男', '13823888885', '773890005@qq.com');
INSERT INTO `jiaoshi` VALUES (26, '2024-03-25 15:35:29', '教师工号6', '123456', 'upload/jiaoshi_touxiang6.jpg', '教师姓名6', '男', '13823888886', '773890006@qq.com');
INSERT INTO `jiaoshi` VALUES (27, '2024-03-25 15:35:29', '教师工号7', '123456', 'upload/jiaoshi_touxiang7.jpg', '教师姓名7', '男', '13823888887', '773890007@qq.com');
INSERT INTO `jiaoshi` VALUES (28, '2024-03-25 15:35:29', '教师工号8', '123456', 'upload/jiaoshi_touxiang8.jpg', '教师姓名8', '男', '13823888888', '773890008@qq.com');
INSERT INTO `jiaoshi` VALUES (1679729965039, '2024-03-25 15:39:25', '22', '22', 'upload/1679729953301.jpeg', '陈红', '女', '13823899996', '');

-- ----------------------------
-- Table structure for kechengleixing
-- ----------------------------
DROP TABLE IF EXISTS `kechengleixing`;
CREATE TABLE `kechengleixing`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679729977806 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '课程类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kechengleixing
-- ----------------------------
INSERT INTO `kechengleixing` VALUES (31, '2024-03-25 15:35:29', '课程类型1');
INSERT INTO `kechengleixing` VALUES (32, '2024-03-25 15:35:29', '课程类型2');
INSERT INTO `kechengleixing` VALUES (33, '2024-03-25 15:35:29', '课程类型3');
INSERT INTO `kechengleixing` VALUES (34, '2024-03-25 15:35:29', '课程类型4');
INSERT INTO `kechengleixing` VALUES (35, '2024-03-25 15:35:29', '课程类型5');
INSERT INTO `kechengleixing` VALUES (36, '2024-03-25 15:35:29', '课程类型6');
INSERT INTO `kechengleixing` VALUES (37, '2024-03-25 15:35:29', '课程类型7');
INSERT INTO `kechengleixing` VALUES (38, '2024-03-25 15:35:29', '课程类型8');
INSERT INTO `kechengleixing` VALUES (1679729977805, '2024-03-25 15:39:37', '英语课程');

-- ----------------------------
-- Table structure for kechengxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kechengxinxi`;
CREATE TABLE `kechengxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `fengmian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '封面',
  `kechengleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程类型',
  `keshi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课时',
  `xuefen` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学分',
  `shangkeshijian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '上课地点',
  `xueqi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学期',
  `nianxian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '年限',
  `kechengxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '课程详情',
  `jiaoshigonghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kechengmingcheng`(`kechengmingcheng` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679730125215 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '课程信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kechengxinxi
-- ----------------------------
INSERT INTO `kechengxinxi` VALUES (41, '2024-03-25 15:35:29', '课程名称1', 'upload/kechengxinxi_fengmian1.jpg,upload/kechengxinxi_fengmian2.jpg,upload/kechengxinxi_fengmian3.jpg', '课程类型1', '课时1', '学分1', '上课时间1', '上课地点1', '上学期', '年限1', '课程详情1', '教师工号1', '教师姓名1');
INSERT INTO `kechengxinxi` VALUES (42, '2024-03-25 15:35:29', '课程名称2', 'upload/kechengxinxi_fengmian2.jpg,upload/kechengxinxi_fengmian3.jpg,upload/kechengxinxi_fengmian4.jpg', '课程类型2', '课时2', '学分2', '上课时间2', '上课地点2', '上学期', '年限2', '课程详情2', '教师工号2', '教师姓名2');
INSERT INTO `kechengxinxi` VALUES (43, '2024-03-25 15:35:29', '课程名称3', 'upload/kechengxinxi_fengmian3.jpg,upload/kechengxinxi_fengmian4.jpg,upload/kechengxinxi_fengmian5.jpg', '课程类型3', '课时3', '学分3', '上课时间3', '上课地点3', '上学期', '年限3', '课程详情3', '教师工号3', '教师姓名3');
INSERT INTO `kechengxinxi` VALUES (44, '2024-03-25 15:35:29', '课程名称4', 'upload/kechengxinxi_fengmian4.jpg,upload/kechengxinxi_fengmian5.jpg,upload/kechengxinxi_fengmian6.jpg', '课程类型4', '课时4', '学分4', '上课时间4', '上课地点4', '上学期', '年限4', '课程详情4', '教师工号4', '教师姓名4');
INSERT INTO `kechengxinxi` VALUES (45, '2024-03-25 15:35:29', '课程名称5', 'upload/kechengxinxi_fengmian5.jpg,upload/kechengxinxi_fengmian6.jpg,upload/kechengxinxi_fengmian7.jpg', '课程类型5', '课时5', '学分5', '上课时间5', '上课地点5', '上学期', '年限5', '课程详情5', '教师工号5', '教师姓名5');
INSERT INTO `kechengxinxi` VALUES (46, '2024-03-25 15:35:29', '课程名称6', 'upload/kechengxinxi_fengmian6.jpg,upload/kechengxinxi_fengmian7.jpg,upload/kechengxinxi_fengmian8.jpg', '课程类型6', '课时6', '学分6', '上课时间6', '上课地点6', '上学期', '年限6', '课程详情6', '教师工号6', '教师姓名6');
INSERT INTO `kechengxinxi` VALUES (47, '2024-03-25 15:35:29', '课程名称7', 'upload/kechengxinxi_fengmian7.jpg,upload/kechengxinxi_fengmian8.jpg,upload/kechengxinxi_fengmian9.jpg', '课程类型7', '课时7', '学分7', '上课时间7', '上课地点7', '上学期', '年限7', '课程详情7', '教师工号7', '教师姓名7');
INSERT INTO `kechengxinxi` VALUES (48, '2024-03-25 15:35:29', '课程名称8', 'upload/kechengxinxi_fengmian8.jpg,upload/kechengxinxi_fengmian9.jpg,upload/kechengxinxi_fengmian10.jpg', '课程类型8', '课时8', '学分8', '上课时间8', '上课地点8', '上学期', '年限8', '课程详情8', '教师工号8', '教师姓名8');
INSERT INTO `kechengxinxi` VALUES (1679730125214, '2024-03-25 15:42:04', '英语语法', 'upload/1679730100626.jpeg', '英语课程', '20课时', '100学分', '星期一 上午 第三节课', '203教室', '下学期', '2022年', '<p>java的教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统基于javajava的教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统基于javajava的教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统基于java</p>', '22', '陈红');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  `picture` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679730081364 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (101, '2024-03-25 15:35:29', '有梦想，就要努力去实现', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。', 'upload/news_picture1.jpg', '<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>');
INSERT INTO `news` VALUES (102, '2024-03-25 15:35:29', '又是一年毕业季', '又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。', 'upload/news_picture2.jpg', '<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>');
INSERT INTO `news` VALUES (103, '2024-03-25 15:35:29', '挫折路上，坚持常在心间', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture3.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
INSERT INTO `news` VALUES (104, '2024-03-25 15:35:29', '挫折是另一个生命的开端', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。', 'upload/news_picture4.jpg', '<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>');
INSERT INTO `news` VALUES (105, '2024-03-25 15:35:29', '你要去相信，没有到不了的明天', '有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。', 'upload/news_picture5.jpg', '<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>');
INSERT INTO `news` VALUES (106, '2024-03-25 15:35:29', '离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture6.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (107, '2024-03-25 15:35:29', 'Leave未必是一种痛苦', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture7.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (108, '2024-03-25 15:35:29', '坚持才会成功', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture8.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
INSERT INTO `news` VALUES (1679730081363, '2024-03-25 15:41:20', '系统公告', '教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统', 'upload/1679730064390.jpeg', '<p>java的教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统基于javajava的教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统基于javajava的教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统基于javajava的教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统基于javajava的教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统教务管理系统基于java</p><p><img src=\"http://localhost:8080/springbootux52l/upload/1679730079676.jpeg\"></p>');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 11, '学号1', 'xuesheng', '学生', '751950chkgbm1tt3a31tw2rpx2qiuluz', '2024-03-25 15:37:14', '2024-03-25 16:37:14');
INSERT INTO `token` VALUES (2, 21, '教师工号1', 'jiaoshi', '教师', 'rmz8gj67n2r4up0ue3uo8do255ufw92f', '2024-03-25 15:37:42', '2024-03-25 16:37:43');
INSERT INTO `token` VALUES (3, 1, 'admin', 'users', '管理员', 'p9sbj92f8xbbyyisin8z3ctz01faaz6e', '2024-03-25 15:38:41', '2024-03-25 16:43:57');
INSERT INTO `token` VALUES (4, 1679729965039, '22', 'jiaoshi', '教师', '118ou5uujg9tl4y11dhtlsrfu9729n3a', '2024-03-25 15:41:28', '2024-03-25 16:43:03');
INSERT INTO `token` VALUES (5, 1679729943783, '11', 'xuesheng', '学生', 'qv3ptprb00jrsx46fa4eua3gwht10cd2', '2024-03-25 15:42:14', '2024-03-25 16:44:17');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2024-03-25 15:35:29');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `touxiang` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '头像',
  `xueshengxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xuehao`(`xuehao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679729943784 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES (11, '2024-03-25 15:35:29', '学号1', '123456', 'upload/xuesheng_touxiang1.jpg', '学生姓名1', '男', '13823888881', '773890001@qq.com');
INSERT INTO `xuesheng` VALUES (12, '2024-03-25 15:35:29', '学号2', '123456', 'upload/xuesheng_touxiang2.jpg', '学生姓名2', '男', '13823888882', '773890002@qq.com');
INSERT INTO `xuesheng` VALUES (13, '2024-03-25 15:35:29', '学号3', '123456', 'upload/xuesheng_touxiang3.jpg', '学生姓名3', '男', '13823888883', '773890003@qq.com');
INSERT INTO `xuesheng` VALUES (14, '2024-03-25 15:35:29', '学号4', '123456', 'upload/xuesheng_touxiang4.jpg', '学生姓名4', '男', '13823888884', '773890004@qq.com');
INSERT INTO `xuesheng` VALUES (15, '2024-03-25 15:35:29', '学号5', '123456', 'upload/xuesheng_touxiang5.jpg', '学生姓名5', '男', '13823888885', '773890005@qq.com');
INSERT INTO `xuesheng` VALUES (16, '2024-03-25 15:35:29', '学号6', '123456', 'upload/xuesheng_touxiang6.jpg', '学生姓名6', '男', '13823888886', '773890006@qq.com');
INSERT INTO `xuesheng` VALUES (17, '2024-03-25 15:35:29', '学号7', '123456', 'upload/xuesheng_touxiang7.jpg', '学生姓名7', '男', '13823888887', '773890007@qq.com');
INSERT INTO `xuesheng` VALUES (18, '2024-03-25 15:35:29', '学号8', '123456', 'upload/xuesheng_touxiang8.jpg', '学生姓名8', '男', '13823888888', '773890008@qq.com');
INSERT INTO `xuesheng` VALUES (1679729943783, '2024-03-25 15:39:03', '11', '11', 'upload/1679729934846.jpeg', '王强', '男', '13823877774', '');

-- ----------------------------
-- Table structure for xueshengchengji
-- ----------------------------
DROP TABLE IF EXISTS `xueshengchengji`;
CREATE TABLE `xueshengchengji`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `xueqi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学期',
  `nianxian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '年限',
  `chengjileixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '成绩类型',
  `chengji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '成绩',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679730228067 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '学生成绩' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xueshengchengji
-- ----------------------------
INSERT INTO `xueshengchengji` VALUES (71, '2024-03-25 15:35:29', '课程名称1', '学期1', '年限1', '成绩类型1', '成绩1', '学号1', '学生姓名1', '教师工号1', '教师姓名1');
INSERT INTO `xueshengchengji` VALUES (72, '2024-03-25 15:35:29', '课程名称2', '学期2', '年限2', '成绩类型2', '成绩2', '学号2', '学生姓名2', '教师工号2', '教师姓名2');
INSERT INTO `xueshengchengji` VALUES (73, '2024-03-25 15:35:29', '课程名称3', '学期3', '年限3', '成绩类型3', '成绩3', '学号3', '学生姓名3', '教师工号3', '教师姓名3');
INSERT INTO `xueshengchengji` VALUES (74, '2024-03-25 15:35:29', '课程名称4', '学期4', '年限4', '成绩类型4', '成绩4', '学号4', '学生姓名4', '教师工号4', '教师姓名4');
INSERT INTO `xueshengchengji` VALUES (75, '2024-03-25 15:35:29', '课程名称5', '学期5', '年限5', '成绩类型5', '成绩5', '学号5', '学生姓名5', '教师工号5', '教师姓名5');
INSERT INTO `xueshengchengji` VALUES (76, '2024-03-25 15:35:29', '课程名称6', '学期6', '年限6', '成绩类型6', '成绩6', '学号6', '学生姓名6', '教师工号6', '教师姓名6');
INSERT INTO `xueshengchengji` VALUES (77, '2024-03-25 15:35:29', '课程名称7', '学期7', '年限7', '成绩类型7', '成绩7', '学号7', '学生姓名7', '教师工号7', '教师姓名7');
INSERT INTO `xueshengchengji` VALUES (78, '2024-03-25 15:35:29', '课程名称8', '学期8', '年限8', '成绩类型8', '成绩8', '学号8', '学生姓名8', '教师工号8', '教师姓名8');
INSERT INTO `xueshengchengji` VALUES (1679730228066, '2024-03-25 15:43:47', '英语语法', '下学期', '2022年', '期末成绩', '83', '11', '王强', '22', '陈红');

-- ----------------------------
-- Table structure for xueshengjiaofei
-- ----------------------------
DROP TABLE IF EXISTS `xueshengjiaofei`;
CREATE TABLE `xueshengjiaofei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaofeibianhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '缴费编号',
  `jiaofeileixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '缴费类型',
  `jiaofeijine` float NOT NULL COMMENT '缴费金额',
  `jiaofeimingxi` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '缴费明细',
  `jiaofeishijian` datetime NULL DEFAULT NULL COMMENT '缴费时间',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `ispay` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jiaofeibianhao`(`jiaofeibianhao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679730022571 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '学生缴费' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xueshengjiaofei
-- ----------------------------
INSERT INTO `xueshengjiaofei` VALUES (81, '2024-03-25 15:35:29', '1111111111', '学费', 1, '缴费明细1', '2024-03-25 15:35:29', '学号1', '学生姓名1', '未支付');
INSERT INTO `xueshengjiaofei` VALUES (82, '2024-03-25 15:35:29', '2222222222', '学费', 2, '缴费明细2', '2024-03-25 15:35:29', '学号2', '学生姓名2', '未支付');
INSERT INTO `xueshengjiaofei` VALUES (83, '2024-03-25 15:35:29', '3333333333', '学费', 3, '缴费明细3', '2024-03-25 15:35:29', '学号3', '学生姓名3', '未支付');
INSERT INTO `xueshengjiaofei` VALUES (84, '2024-03-25 15:35:29', '4444444444', '学费', 4, '缴费明细4', '2024-03-25 15:35:29', '学号4', '学生姓名4', '未支付');
INSERT INTO `xueshengjiaofei` VALUES (85, '2024-03-25 15:35:29', '5555555555', '学费', 5, '缴费明细5', '2024-03-25 15:35:29', '学号5', '学生姓名5', '未支付');
INSERT INTO `xueshengjiaofei` VALUES (86, '2024-03-25 15:35:29', '6666666666', '学费', 6, '缴费明细6', '2024-03-25 15:35:29', '学号6', '学生姓名6', '未支付');
INSERT INTO `xueshengjiaofei` VALUES (87, '2024-03-25 15:35:29', '7777777777', '学费', 7, '缴费明细7', '2024-03-25 15:35:29', '学号7', '学生姓名7', '未支付');
INSERT INTO `xueshengjiaofei` VALUES (88, '2024-03-25 15:35:29', '8888888888', '学费', 8, '缴费明细8', '2024-03-25 15:35:29', '学号8', '学生姓名8', '未支付');
INSERT INTO `xueshengjiaofei` VALUES (1679730022570, '2024-03-25 15:40:22', '1679729999786', '学费', 5200, '2022年下学期学费', '2024-03-25 15:39:59', '11', '王强', '已支付');

-- ----------------------------
-- Table structure for xueshengxuanke
-- ----------------------------
DROP TABLE IF EXISTS `xueshengxuanke`;
CREATE TABLE `xueshengxuanke`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `keshi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课时',
  `kechengleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程类型',
  `xueqi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学期',
  `nianxian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '年限',
  `shangkedidian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '上课地点',
  `jiaoshigonghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `shenqingshijian` datetime NULL DEFAULT NULL COMMENT '申请时间',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `crossuserid` bigint NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint NULL DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679730152646 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '学生选课' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xueshengxuanke
-- ----------------------------
INSERT INTO `xueshengxuanke` VALUES (51, '2024-03-25 15:35:29', '课程名称1', '课时1', '课程类型1', '学期1', '年限1', '上课地点1', '教师工号1', '教师姓名1', '2024-03-25 15:35:29', '学号1', '学生姓名1', 1, 1, '是', '');
INSERT INTO `xueshengxuanke` VALUES (52, '2024-03-25 15:35:29', '课程名称2', '课时2', '课程类型2', '学期2', '年限2', '上课地点2', '教师工号2', '教师姓名2', '2024-03-25 15:35:29', '学号2', '学生姓名2', 2, 2, '是', '');
INSERT INTO `xueshengxuanke` VALUES (53, '2024-03-25 15:35:29', '课程名称3', '课时3', '课程类型3', '学期3', '年限3', '上课地点3', '教师工号3', '教师姓名3', '2024-03-25 15:35:29', '学号3', '学生姓名3', 3, 3, '是', '');
INSERT INTO `xueshengxuanke` VALUES (54, '2024-03-25 15:35:29', '课程名称4', '课时4', '课程类型4', '学期4', '年限4', '上课地点4', '教师工号4', '教师姓名4', '2024-03-25 15:35:29', '学号4', '学生姓名4', 4, 4, '是', '');
INSERT INTO `xueshengxuanke` VALUES (55, '2024-03-25 15:35:29', '课程名称5', '课时5', '课程类型5', '学期5', '年限5', '上课地点5', '教师工号5', '教师姓名5', '2024-03-25 15:35:29', '学号5', '学生姓名5', 5, 5, '是', '');
INSERT INTO `xueshengxuanke` VALUES (56, '2024-03-25 15:35:29', '课程名称6', '课时6', '课程类型6', '学期6', '年限6', '上课地点6', '教师工号6', '教师姓名6', '2024-03-25 15:35:29', '学号6', '学生姓名6', 6, 6, '是', '');
INSERT INTO `xueshengxuanke` VALUES (57, '2024-03-25 15:35:29', '课程名称7', '课时7', '课程类型7', '学期7', '年限7', '上课地点7', '教师工号7', '教师姓名7', '2024-03-25 15:35:29', '学号7', '学生姓名7', 7, 7, '是', '');
INSERT INTO `xueshengxuanke` VALUES (58, '2024-03-25 15:35:29', '课程名称8', '课时8', '课程类型8', '学期8', '年限8', '上课地点8', '教师工号8', '教师姓名8', '2024-03-25 15:35:29', '学号8', '学生姓名8', 8, 8, '是', '');
INSERT INTO `xueshengxuanke` VALUES (1679730152645, '2024-03-25 15:42:31', '英语语法', '20课时', '英语课程', '下学期', '2022年', '203教室', '22', '陈红', '2024-03-25 15:42:29', '11', '王强', 1679729943783, 1679730125214, '是', '同意选课');

-- ----------------------------
-- Table structure for zonghexinxi
-- ----------------------------
DROP TABLE IF EXISTS `zonghexinxi`;
CREATE TABLE `zonghexinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `suozaibanji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '所在班级',
  `yuanxi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '院系',
  `banzhuren` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '班主任',
  `sushehao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `ruxueriqi` date NULL DEFAULT NULL COMMENT '入学日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1679730050404 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '综合信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zonghexinxi
-- ----------------------------
INSERT INTO `zonghexinxi` VALUES (91, '2024-03-25 15:35:29', '学号1', '学生姓名1', '所在班级1', '院系1', '班主任1', '宿舍号1', '2024-03-25');
INSERT INTO `zonghexinxi` VALUES (92, '2024-03-25 15:35:29', '学号2', '学生姓名2', '所在班级2', '院系2', '班主任2', '宿舍号2', '2024-03-25');
INSERT INTO `zonghexinxi` VALUES (93, '2024-03-25 15:35:29', '学号3', '学生姓名3', '所在班级3', '院系3', '班主任3', '宿舍号3', '2024-03-25');
INSERT INTO `zonghexinxi` VALUES (94, '2024-03-25 15:35:29', '学号4', '学生姓名4', '所在班级4', '院系4', '班主任4', '宿舍号4', '2024-03-25');
INSERT INTO `zonghexinxi` VALUES (95, '2024-03-25 15:35:29', '学号5', '学生姓名5', '所在班级5', '院系5', '班主任5', '宿舍号5', '2024-03-25');
INSERT INTO `zonghexinxi` VALUES (96, '2024-03-25 15:35:29', '学号6', '学生姓名6', '所在班级6', '院系6', '班主任6', '宿舍号6', '2024-03-25');
INSERT INTO `zonghexinxi` VALUES (97, '2024-03-25 15:35:29', '学号7', '学生姓名7', '所在班级7', '院系7', '班主任7', '宿舍号7', '2024-03-25');
INSERT INTO `zonghexinxi` VALUES (98, '2024-03-25 15:35:29', '学号8', '学生姓名8', '所在班级8', '院系8', '班主任8', '宿舍号8', '2024-03-25');
INSERT INTO `zonghexinxi` VALUES (1679730050403, '2024-03-25 15:40:50', '11', '王强', '英语一班', '英语', '张三', '305女生宿舍', '2022-09-01');

SET FOREIGN_KEY_CHECKS = 1;
