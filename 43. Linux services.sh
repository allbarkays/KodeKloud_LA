As per details shared by the development team, the new application release has some dependencies on the back end.

There are some packages/services that need to be installed on all app servers under Stratos Datacenter. As per requirements please perform the following steps.

   a. Install `cups` package on all the application servers.
   b. Once installed, make sure it is enabled to start during boot.


Solution:  
1. At first login on all App servers  &  Switch to  root user 
ssh tony@stapp01
    use tony password to complete ssh login

2. Switch to  root user (Optional)
sudo su -
    use tony password to complete switch

3. Run below command to install cups service package (refer you task)
yum install   cups -y

4. Start & enable the httpd service below commands
systemctl  start  cups
systemctl  enable  cups

5. Validate the task by below command 
systemctl status  cups


Note that:
I have showed only for stapp01. You have to dcomplete same in all app server stapp01,
stapp02, stapp03. 

6.  Click on Finish & Confirm to complete the task successful



Reference: https://www.nbtechsupport.co.in/2021/01/linux-services-kodekloud-engineer-task.html