-- 需要 MySQL 5.6.5以上的版本
DROP DATABASE IF EXISTS blog;
CREATE DATABASE blog;
USE blog;

-- 文章表
CREATE TABLE _article(
  `article_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `article_title` VARCHAR(50) NOT NULL COMMENT '文章标题',
  `article_content` TEXT NOT NULL COMMENT '文章正文',
  `article_image` VARCHAR(511) COMMENT '文章图片',
  `read_count` INT NOT NULL DEFAULT 0 COMMENT '阅读次数',
  `tag` BIGINT NOT NULL,
  PRIMARY KEY (`article_id`),
  KEY 'idx_article_id'(`article_id`)
)ENGINE = INNODB AUTO_INCREMENT = 1000 DEFAULT CHARSET = UTF8 COMMENT = '文章表';

-- 用户表
CREATE TABLE _user(
  `user_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` VARCHAR(50) NOT NULL COMMENT '用户名',
  `user_phone` BIGINT NOT NULL COMMENT '手机号',
  `score` INT NOT NULL COMMENT '积分',
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  KEY `idx_user_phone`(`user_phone`)
)ENGINE=INNODB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='用户表';