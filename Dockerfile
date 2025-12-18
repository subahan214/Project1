# Use official Tomcat with OpenJDK 11
FROM tomcat:9.0-jdk11-openjdk

# Remove default webapps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file
COPY Project1_fixed.war /usr/local/tomcat/webapps/ROOT.war

# Copy static resources (CSS, images, JSP)
COPY css /usr/local/tomcat/webapps/ROOT/css
COPY images /usr/local/tomcat/webapps/ROOT/images
COPY index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp

# Optional: Disable container memory settings for Java
ENV JAVA_OPTS="-XX:-UseContainerSupport"

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
