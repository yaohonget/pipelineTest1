# 使用官方 Tomcat 镜像作为基础镜像
FROM tomcat:9.0-jdk17

# 删除默认 webapps 里的内容
RUN rm -rf /usr/local/tomcat/webapps/*

# 复制构建后的 war 包
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# 暴露 8080 端口
EXPOSE 8080

# 启动 Tomcat
CMD ["catalina.sh", "run"]
