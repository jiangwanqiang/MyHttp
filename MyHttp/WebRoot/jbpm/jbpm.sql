DROP TABLE album;
CREATE TABLE album ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, name varchar(30) COMMENT '相册名称', description varchar(400) COMMENT '相册描述', photo varchar(100), photoSize int(11) COMMENT '照片数目', userId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE album_copy;
CREATE TABLE album_copy ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, name varchar(30) COMMENT '相册名称', description varchar(400) COMMENT '相册描述', photo varchar(100), photoSize int(11) COMMENT '照片数目', userId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE album_copy1;
CREATE TABLE album_copy1 ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, name varchar(30) COMMENT '相册名称', description varchar(400) COMMENT '相册描述', photo varchar(100), photoSize int(11) COMMENT '照片数目', userId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE album_copy2;
CREATE TABLE album_copy2 ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, name varchar(30) COMMENT '相册名称', description varchar(400) COMMENT '相册描述', photo varchar(100), photoSize int(11) COMMENT '照片数目', userId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE app;
CREATE TABLE app ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, updateTime datetime, flag bit(1), name varchar(50), url varchar(100), sequence int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE bc_order;
CREATE TABLE bc_order ( obid int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID', ob_salerid varchar(100) COMMENT '卖方ID', ob_saler varchar(100) COMMENT '卖方名称', ob_buyerid varchar(100) COMMENT '买方ID', ob_buyer varchar(100) COMMENT '买方名称', ob_productid varchar(100) COMMENT '商品ID', ob_productname varchar(100) COMMENT '商品ID', ob_temproductid varchar(100) COMMENT '临时商品ID', ob_temproductname varchar(100) COMMENT '临时商品名称', ob_ordertime datetime COMMENT '订单生成时间', ob_status varchar(100) COMMENT '订单状态 00 未确认 01 已确认 02已付款 03已分配车间 04 生产完毕待配货 05 已配货 06 已完成', ob_logisticid varchar(100) COMMENT '物流表ID', ob_creatorid varchar(50) COMMENT '订单创建人ID', ob_creatorName varchar(50) COMMENT '订单创建人名称', PRIMARY KEY USING BTREE (obid) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE blog;
CREATE TABLE blog ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, updateTime datetime, title varchar(100) NOT NULL, content text, commentSize int(11), count int(11), userId int(11), categoryId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE blog_comment;
CREATE TABLE blog_comment ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, name varchar(100), content varchar(400), ip varchar(20), im varchar(50), email varchar(50), website varchar(50), userId int(11), blogId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE board;
CREATE TABLE board ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, name varchar(100) COMMENT '版块名称', description varchar(400) COMMENT '板块描述', sequence int(11) COMMENT '序号', PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE category;
CREATE TABLE category ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, updateTime datetime, name varchar(20), remark varchar(200), sequence tinyint(2), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE feedback;
CREATE TABLE feedback ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, title varchar(200), content varchar(800), reply varchar(800), state int(11), username varchar(50), ip varchar(20), im varchar(50), phone varchar(50), email varchar(50), website varchar(50), replyId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE info;
CREATE TABLE info ( id int(11) NOT NULL AUTO_INCREMENT, type varchar(20), url varchar(50), title varchar(200), content text, enable bit(1), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE jbpm_action;
CREATE TABLE jbpm_action ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, class char(1) NOT NULL, NAME_ varchar(255), ISPROPAGATIONALLOWED_ bit(1), ACTIONEXPRESSION_ varchar(255), ISASYNC_ bit(1), REFERENCEDACTION_ bigint(20), ACTIONDELEGATION_ bigint(20), EVENT_ bigint(20), PROCESSDEFINITION_ bigint(20), TIMERNAME_ varchar(255), DUEDATE_ varchar(255), REPEAT_ varchar(255), TRANSITIONNAME_ varchar(255), TIMERACTION_ bigint(20), EXPRESSION_ mediumtext, EVENTINDEX_ int(11), EXCEPTIONHANDLER_ bigint(20), EXCEPTIONHANDLERINDEX_ int(11), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_bytearray;
CREATE TABLE jbpm_bytearray ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, NAME_ varchar(255), FILEDEFINITION_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_byteblock;
CREATE TABLE jbpm_byteblock ( PROCESSFILE_ bigint(20) NOT NULL, BYTES_ blob, INDEX_ int(11) NOT NULL, PRIMARY KEY USING BTREE (PROCESSFILE_, INDEX_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_comment;
CREATE TABLE jbpm_comment ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, VERSION_ int(11) NOT NULL, ACTORID_ varchar(255), TIME_ datetime, MESSAGE_ mediumtext, TOKEN_ bigint(20), TASKINSTANCE_ bigint(20), TOKENINDEX_ int(11), TASKINSTANCEINDEX_ int(11), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_decisionconditions;
CREATE TABLE jbpm_decisionconditions ( DECISION_ bigint(20) NOT NULL, TRANSITIONNAME_ varchar(255), EXPRESSION_ varchar(255), INDEX_ int(11) NOT NULL, PRIMARY KEY USING BTREE (DECISION_, INDEX_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_delegation;
CREATE TABLE jbpm_delegation ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASSNAME_ mediumtext, CONFIGURATION_ mediumtext, CONFIGTYPE_ varchar(255), PROCESSDEFINITION_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_event;
CREATE TABLE jbpm_event ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, EVENTTYPE_ varchar(255), TYPE_ char(1), GRAPHELEMENT_ bigint(20), PROCESSDEFINITION_ bigint(20), NODE_ bigint(20), TRANSITION_ bigint(20), TASK_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_exceptionhandler;
CREATE TABLE jbpm_exceptionhandler ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, EXCEPTIONCLASSNAME_ text, TYPE_ char(1), GRAPHELEMENT_ bigint(20), PROCESSDEFINITION_ bigint(20), GRAPHELEMENTINDEX_ int(11), NODE_ bigint(20), TRANSITION_ bigint(20), TASK_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_id_group;
CREATE TABLE jbpm_id_group ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASS_ char(1) NOT NULL, NAME_ varchar(255), TYPE_ varchar(255), PARENT_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_id_membership;
CREATE TABLE jbpm_id_membership ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASS_ char(1) NOT NULL, NAME_ varchar(255), ROLE_ varchar(255), USER_ bigint(20), GROUP_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_id_permissions;
CREATE TABLE jbpm_id_permissions ( ENTITY_ bigint(20) NOT NULL, CLASS_ varchar(255), NAME_ varchar(255), ACTION_ varchar(255) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_id_user;
CREATE TABLE jbpm_id_user ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASS_ char(1) NOT NULL, NAME_ varchar(255), EMAIL_ varchar(255), PASSWORD_ varchar(255), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_log;
CREATE TABLE jbpm_log ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASS_ char(1) NOT NULL, INDEX_ int(11), DATE_ datetime, TOKEN_ bigint(20), PARENT_ bigint(20), MESSAGE_ mediumtext, EXCEPTION_ mediumtext, ACTION_ bigint(20), NODE_ bigint(20), ENTER_ datetime, LEAVE_ datetime, DURATION_ bigint(20), NEWLONGVALUE_ bigint(20), TRANSITION_ bigint(20), CHILD_ bigint(20), SOURCENODE_ bigint(20), DESTINATIONNODE_ bigint(20), VARIABLEINSTANCE_ bigint(20), OLDBYTEARRAY_ bigint(20), NEWBYTEARRAY_ bigint(20), OLDDATEVALUE_ datetime, NEWDATEVALUE_ datetime, OLDDOUBLEVALUE_ double, NEWDOUBLEVALUE_ double, OLDLONGIDCLASS_ varchar(255), OLDLONGIDVALUE_ bigint(20), NEWLONGIDCLASS_ varchar(255), NEWLONGIDVALUE_ bigint(20), OLDSTRINGIDCLASS_ varchar(255), OLDSTRINGIDVALUE_ varchar(255), NEWSTRINGIDCLASS_ varchar(255), NEWSTRINGIDVALUE_ varchar(255), OLDLONGVALUE_ bigint(20), OLDSTRINGVALUE_ mediumtext, NEWSTRINGVALUE_ mediumtext, TASKINSTANCE_ bigint(20), TASKACTORID_ varchar(255), TASKOLDACTORID_ varchar(255), SWIMLANEINSTANCE_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_message;
CREATE TABLE jbpm_message ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASS_ char(1) NOT NULL, DESTINATION_ varchar(255), EXCEPTION_ mediumtext, ISSUSPENDED_ bit(1), TOKEN_ bigint(20), TEXT_ varchar(255), ACTION_ bigint(20), NODE_ bigint(20), TRANSITIONNAME_ varchar(255), TASKINSTANCE_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_moduledefinition;
CREATE TABLE jbpm_moduledefinition ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASS_ char(1) NOT NULL, NAME_ mediumtext, PROCESSDEFINITION_ bigint(20), STARTTASK_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_moduleinstance;
CREATE TABLE jbpm_moduleinstance ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASS_ char(1) NOT NULL, PROCESSINSTANCE_ bigint(20), TASKMGMTDEFINITION_ bigint(20), NAME_ varchar(255), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_node;
CREATE TABLE jbpm_node ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASS_ char(1) NOT NULL, NAME_ varchar(255), PROCESSDEFINITION_ bigint(20), ISASYNC_ bit(1), ACTION_ bigint(20), SUPERSTATE_ bigint(20), SUBPROCESSDEFINITION_ bigint(20), DECISIONEXPRESSION_ varchar(255), DECISIONDELEGATION bigint(20), SIGNAL_ int(11), CREATETASKS_ bit(1), ENDTASKS_ bit(1), NODECOLLECTIONINDEX_ int(11), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_pooledactor;
CREATE TABLE jbpm_pooledactor ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, ACTORID_ varchar(255), SWIMLANEINSTANCE_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_processdefinition;
CREATE TABLE jbpm_processdefinition ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, NAME_ varchar(255), VERSION_ int(11), ISTERMINATIONIMPLICIT_ bit(1), STARTSTATE_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_processinstance;
CREATE TABLE jbpm_processinstance ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, VERSION_ int(11) NOT NULL, START_ datetime, END_ datetime, ISSUSPENDED_ bit(1), PROCESSDEFINITION_ bigint(20), ROOTTOKEN_ bigint(20), SUPERPROCESSTOKEN_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_runtimeaction;
CREATE TABLE jbpm_runtimeaction ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, VERSION_ int(11) NOT NULL, EVENTTYPE_ varchar(255), TYPE_ char(1), GRAPHELEMENT_ bigint(20), PROCESSINSTANCE_ bigint(20), ACTION_ bigint(20), PROCESSINSTANCEINDEX_ int(11), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_swimlane;
CREATE TABLE jbpm_swimlane ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, NAME_ varchar(255), ACTORIDEXPRESSION_ varchar(255), POOLEDACTORSEXPRESSION_ varchar(255), ASSIGNMENTDELEGATION_ bigint(20), TASKMGMTDEFINITION_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_swimlaneinstance;
CREATE TABLE jbpm_swimlaneinstance ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, NAME_ varchar(255), ACTORID_ varchar(255), SWIMLANE_ bigint(20), TASKMGMTINSTANCE_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_task;
CREATE TABLE jbpm_task ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, NAME_ varchar(255), PROCESSDEFINITION_ bigint(20), DESCRIPTION_ mediumtext, ISBLOCKING_ bit(1), ISSIGNALLING_ bit(1), DUEDATE_ varchar(255), ACTORIDEXPRESSION_ varchar(255), POOLEDACTORSEXPRESSION_ varchar(255), TASKMGMTDEFINITION_ bigint(20), TASKNODE_ bigint(20), STARTSTATE_ bigint(20), ASSIGNMENTDELEGATION_ bigint(20), SWIMLANE_ bigint(20), TASKCONTROLLER_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_taskactorpool;
CREATE TABLE jbpm_taskactorpool ( TASKINSTANCE_ bigint(20) NOT NULL, POOLEDACTOR_ bigint(20) NOT NULL, PRIMARY KEY USING BTREE (TASKINSTANCE_, POOLEDACTOR_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_taskcontroller;
CREATE TABLE jbpm_taskcontroller ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, TASKCONTROLLERDELEGATION_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_taskinstance;
CREATE TABLE jbpm_taskinstance ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASS_ char(1) NOT NULL, NAME_ varchar(255), DESCRIPTION_ mediumtext, ACTORID_ varchar(255), CREATE_ datetime, START_ datetime, END_ datetime, DUEDATE_ datetime, PRIORITY_ int(11), ISCANCELLED_ bit(1), ISSUSPENDED_ bit(1), ISOPEN_ bit(1), ISSIGNALLING_ bit(1), ISBLOCKING_ bit(1), TASK_ bigint(20), TOKEN_ bigint(20), SWIMLANINSTANCE_ bigint(20), TASKMGMTINSTANCE_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_timer;
CREATE TABLE jbpm_timer ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, NAME_ varchar(255), DUEDATE_ datetime, REPEAT_ varchar(255), TRANSITIONNAME_ varchar(255), EXCEPTION_ mediumtext, ISSUSPENDED_ bit(1), ACTION_ bigint(20), TOKEN_ bigint(20), PROCESSINSTANCE_ bigint(20), TASKINSTANCE_ bigint(20), GRAPHELEMENTTYPE_ varchar(255), GRAPHELEMENT_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_token;
CREATE TABLE jbpm_token ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, VERSION_ int(11) NOT NULL, NAME_ varchar(255), START_ datetime, END_ datetime, NODEENTER_ datetime, NEXTLOGINDEX_ int(11), ISABLETOREACTIVATEPARENT_ bit(1), ISTERMINATIONIMPLICIT_ bit(1), ISSUSPENDED_ bit(1), NODE_ bigint(20), PROCESSINSTANCE_ bigint(20), PARENT_ bigint(20), SUBPROCESSINSTANCE_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_tokenvariablemap;
CREATE TABLE jbpm_tokenvariablemap ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, TOKEN_ bigint(20), CONTEXTINSTANCE_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_transition;
CREATE TABLE jbpm_transition ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, NAME_ varchar(255), PROCESSDEFINITION_ bigint(20), FROM_ bigint(20), TO_ bigint(20), FROMINDEX_ int(11), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_variableaccess;
CREATE TABLE jbpm_variableaccess ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, VARIABLENAME_ varchar(255), ACCESS_ varchar(255), MAPPEDNAME_ varchar(255), PROCESSSTATE_ bigint(20), TASKCONTROLLER_ bigint(20), INDEX_ int(11), SCRIPT_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jbpm_variableinstance;
CREATE TABLE jbpm_variableinstance ( ID_ bigint(20) NOT NULL AUTO_INCREMENT, CLASS_ char(1) NOT NULL, NAME_ varchar(255), CONVERTER_ char(1), TOKEN_ bigint(20), TOKENVARIABLEMAP_ bigint(20), PROCESSINSTANCE_ bigint(20), BYTEARRAYVALUE_ bigint(20), DATEVALUE_ datetime, DOUBLEVALUE_ double, LONGIDCLASS_ varchar(255), LONGVALUE_ bigint(20), STRINGIDCLASS_ varchar(255), STRINGVALUE_ varchar(255), TASKINSTANCE_ bigint(20), PRIMARY KEY USING BTREE (ID_) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE jira;
CREATE TABLE jira ( id int(11) NOT NULL AUTO_INCREMENT, claimtype varchar(50), questen varchar(255), questenremark varchar(1000), addTime datetime, level varchar(100) COMMENT '版块名称', testNo varchar(100) COMMENT '板块描述', tester varchar(100) COMMENT '序号', status char(10) COMMENT '序号', devremark char(100) COMMENT '序号', PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE photo;
CREATE TABLE photo ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, name varchar(50), description varchar(400), img varchar(100), commentSize int(11), albumId int(11), userId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE photo_comment;
CREATE TABLE photo_comment ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, content varchar(400), userId int(11), photoId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE post;
CREATE TABLE post ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, startTime datetime, endTime datetime, title varchar(200), content text, enabled bit(1), userId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE product;
CREATE TABLE product ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, name varchar(100), content text, img varchar(100), sequence int(11), enabled bit(1), productCategoryId int(11), userId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE product_category;
CREATE TABLE product_category ( id int(11) NOT NULL AUTO_INCREMENT, name varchar(20), description varchar(400), sequence int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE prplregist;
CREATE TABLE prplregist ( registno char(22) NOT NULL, lflag char(2), businessid decimal(19,0), accidentno char(22), reportdate date, reporthour char(8), reportorname varchar(20), reportornumber varchar(20), reportormobile varchar(20), linkername varchar(20), phonenumber varchar(20), linkermobile varchar(20), relationship varchar(3), mercyflag varchar(3), damagedate date, damagehour char(8), damagecode varchar(3), damagename varchar(40), damagetypecode varchar(3), damagetypename varchar(20), damageareacode varchar(3), damageareaname varchar(20), damageaddresstype varchar(3), damageaddress varchar(120), checkaddress varchar(120), reportaddress varchar(120), checkareacode varchar(10), obligation char(1), lossitemtypes varchar(60), qdcasetype varchar(3), compensorname varchar(30), compensorcode varchar(10), operatorcode char(10), operatorcomcode char(8), firstregcode char(10), firstregcomcode char(8), makecom char(8), inputtime datetime, ciindemduty decimal(8,4), claimstatus char(1), claimtype varchar(3), cancelflag char(1), submitnumber int(11), tpflag char(2), tpdisposeflag char(1), validflag char(1), remark varchar(255), flag char(10), inserttimeforhis datetime, operatetimeforhis datetime, PRIMARY KEY USING BTREE (registno) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE prpltask;
CREATE TABLE prpltask ( id int(11) NOT NULL AUTO_INCREMENT, taskid char(10), taskname tinytext, usercode tinytext, duration tinytext, PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE qingjia;
CREATE TABLE qingjia ( id int(11) NOT NULL AUTO_INCREMENT, content varchar(255), userId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE role;
CREATE TABLE role ( id int(11) NOT NULL AUTO_INCREMENT, name varchar(20), description varchar(64), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE saa_class;
CREATE TABLE saa_class ( classcode char(3) NOT NULL, classname char(40), classename varchar(40), validstatus char(1) NOT NULL ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE saa_risk;
CREATE TABLE saa_risk ( riskcode char(3) NOT NULL, riskcname char(50), riskename varchar(60), classcode char(3), validstatus char(1) NOT NULL ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
DROP TABLE service;
CREATE TABLE service ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime NOT NULL, updateTime datetime, title varchar(40) NOT NULL, content text, img varchar(50), sequence int(11), serviceTypeId int(11), userId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE service_type;
CREATE TABLE service_type ( id int(11) NOT NULL AUTO_INCREMENT, name varchar(20), remark varchar(400), sequence int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE thumb;
CREATE TABLE thumb ( id int(11) NOT NULL AUTO_INCREMENT, name varchar(100), description varchar(400), width int(11), height int(11), model varchar(20), enabled bit(1), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE thumb_img;
CREATE TABLE thumb_img ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, name varchar(100), description varchar(500), img varchar(100), origImg varchar(100), type varchar(100), width int(11), height int(11), enabled bit(1), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE topic;
CREATE TABLE topic ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime NOT NULL, updateTime datetime, title varchar(200) NOT NULL, content text, commentSize int(11), count int(11), tip bit(1), userId int(11), boardId int(11), state int(11), enabled bit(1), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE topic_comment;
CREATE TABLE topic_comment ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, name varchar(100), content varchar(400), ip datetime, userId int(11), topicId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE twitter;
CREATE TABLE twitter ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, type varchar(20), content varchar(400), commentSize int(11), userId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE twitter_comment;
CREATE TABLE twitter_comment ( id int(11) NOT NULL AUTO_INCREMENT, addTime datetime, content varchar(400), userId int(11), twitterId int(11), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE user;
CREATE TABLE user ( id int(11) NOT NULL AUTO_INCREMENT, version int(11), addTime datetime, updateTime datetime, email varchar(100) NOT NULL, username varchar(20) NOT NULL, password varchar(50) NOT NULL, nickname varchar(20), photo varchar(50), realname varchar(20), age int(11), male bit(1), birthday date, constellation tinyint(2), birthAttrib tinyint(2), marital tinyint(1), bloodType tinyint(1), hobby varchar(50), intro text, account_expired bit(1), account_locked bit(1), credentials_expired bit(1), account_enabled bit(1), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE user_role;
CREATE TABLE user_role ( user_id int(11) NOT NULL, role_id int(11) NOT NULL, PRIMARY KEY USING BTREE (user_id, role_id) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE userinfo;
CREATE TABLE userinfo ( id int(11) NOT NULL AUTO_INCREMENT, password varchar(255), username varchar(255), PRIMARY KEY USING BTREE (id) ) ENGINE=InnoDB DEFAULT CHARSET=gbk;
ALTER TABLE jbpm_action ADD CONSTRAINT FK_ACTION_ACTNDEL FOREIGN KEY (ACTIONDELEGATION_) REFERENCES jbpm_delegation (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_action ADD CONSTRAINT FK_ACTION_EVENT FOREIGN KEY (EVENT_) REFERENCES jbpm_event (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_action ADD CONSTRAINT FK_ACTION_EXPTHDL FOREIGN KEY (EXCEPTIONHANDLER_) REFERENCES jbpm_exceptionhandler (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_action ADD CONSTRAINT FK_ACTION_PROCDEF FOREIGN KEY (PROCESSDEFINITION_) REFERENCES jbpm_processdefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_action ADD CONSTRAINT FK_ACTION_REFACT FOREIGN KEY (REFERENCEDACTION_) REFERENCES jbpm_action (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_action ADD CONSTRAINT FK_CRTETIMERACT_TA FOREIGN KEY (TIMERACTION_) REFERENCES jbpm_action (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_bytearray ADD CONSTRAINT FK_BYTEARR_FILDEF FOREIGN KEY (FILEDEFINITION_) REFERENCES jbpm_moduledefinition (ID_);
ALTER TABLE jbpm_byteblock ADD CONSTRAINT FK_BYTEBLOCK_FILE FOREIGN KEY (PROCESSFILE_) REFERENCES jbpm_bytearray (ID_);
ALTER TABLE jbpm_comment ADD CONSTRAINT FK_COMMENT_TOKEN FOREIGN KEY (TOKEN_) REFERENCES jbpm_token (ID_) ;
ALTER TABLE jbpm_comment ADD CONSTRAINT FK_COMMENT_TSK FOREIGN KEY (TASKINSTANCE_) REFERENCES jbpm_taskinstance (ID_);
ALTER TABLE jbpm_decisionconditions ADD CONSTRAINT FK_DECCOND_DEC FOREIGN KEY (DECISION_) REFERENCES jbpm_node (ID_);
ALTER TABLE jbpm_delegation ADD CONSTRAINT FK_DELEGATION_PRCD FOREIGN KEY (PROCESSDEFINITION_) REFERENCES jbpm_processdefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_event ADD CONSTRAINT FK_EVENT_NODE FOREIGN KEY (NODE_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_event ADD CONSTRAINT FK_EVENT_PROCDEF FOREIGN KEY (PROCESSDEFINITION_) REFERENCES jbpm_processdefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_event ADD CONSTRAINT FK_EVENT_TASK FOREIGN KEY (TASK_) REFERENCES jbpm_task (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_event ADD CONSTRAINT FK_EVENT_TRANS FOREIGN KEY (TRANSITION_) REFERENCES jbpm_transition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_id_group ADD CONSTRAINT FK_ID_GRP_PARENT FOREIGN KEY (PARENT_) REFERENCES jbpm_id_group (ID_);
ALTER TABLE jbpm_id_membership ADD CONSTRAINT FK_ID_MEMSHIP_GRP FOREIGN KEY (GROUP_) REFERENCES jbpm_id_group (ID_) ;
ALTER TABLE jbpm_id_membership ADD CONSTRAINT FK_ID_MEMSHIP_USR FOREIGN KEY (USER_) REFERENCES jbpm_id_user (ID_);
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_ACTION FOREIGN KEY (ACTION_) REFERENCES jbpm_action (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_CHILDTOKEN FOREIGN KEY (CHILD_) REFERENCES jbpm_token (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_DESTNODE FOREIGN KEY (DESTINATIONNODE_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_NEWBYTES FOREIGN KEY (NEWBYTEARRAY_) REFERENCES jbpm_bytearray (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_NODE FOREIGN KEY (NODE_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_OLDBYTES FOREIGN KEY (OLDBYTEARRAY_) REFERENCES jbpm_bytearray (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_PARENT FOREIGN KEY (PARENT_) REFERENCES jbpm_log (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_SOURCENODE FOREIGN KEY (SOURCENODE_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_SWIMINST FOREIGN KEY (SWIMLANEINSTANCE_) REFERENCES jbpm_swimlaneinstance (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_TASKINST FOREIGN KEY (TASKINSTANCE_) REFERENCES jbpm_taskinstance (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_TOKEN FOREIGN KEY (TOKEN_) REFERENCES jbpm_token (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_TRANSITION FOREIGN KEY (TRANSITION_) REFERENCES jbpm_transition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_log ADD CONSTRAINT FK_LOG_VARINST FOREIGN KEY (VARIABLEINSTANCE_) REFERENCES jbpm_variableinstance (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_message ADD CONSTRAINT FK_CMD_ACTION FOREIGN KEY (ACTION_) REFERENCES jbpm_action (ID_) ;
ALTER TABLE jbpm_message ADD CONSTRAINT FK_CMD_NODE FOREIGN KEY (NODE_) REFERENCES jbpm_node (ID_) ;
ALTER TABLE jbpm_message ADD CONSTRAINT FK_CMD_TASKINST FOREIGN KEY (TASKINSTANCE_) REFERENCES jbpm_taskinstance (ID_) ;
ALTER TABLE jbpm_message ADD CONSTRAINT FK_MSG_TOKEN FOREIGN KEY (TOKEN_) REFERENCES jbpm_token (ID_);
ALTER TABLE jbpm_moduledefinition ADD CONSTRAINT FK_MODDEF_PROCDEF FOREIGN KEY (PROCESSDEFINITION_) REFERENCES jbpm_processdefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_moduledefinition ADD CONSTRAINT FK_TSKDEF_START FOREIGN KEY (STARTTASK_) REFERENCES jbpm_task (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_moduleinstance ADD CONSTRAINT FK_MODINST_PRCINST FOREIGN KEY (PROCESSINSTANCE_) REFERENCES jbpm_processinstance (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_moduleinstance ADD CONSTRAINT FK_TASKMGTINST_TMD FOREIGN KEY (TASKMGMTDEFINITION_) REFERENCES jbpm_moduledefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_node ADD CONSTRAINT FK_DECISION_DELEG FOREIGN KEY (DECISIONDELEGATION) REFERENCES jbpm_delegation (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_node ADD CONSTRAINT FK_NODE_ACTION FOREIGN KEY (ACTION_) REFERENCES jbpm_action (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_node ADD CONSTRAINT FK_NODE_PROCDEF FOREIGN KEY (PROCESSDEFINITION_) REFERENCES jbpm_processdefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_node ADD CONSTRAINT FK_NODE_SUPERSTATE FOREIGN KEY (SUPERSTATE_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_node ADD CONSTRAINT FK_PROCST_SBPRCDEF FOREIGN KEY (SUBPROCESSDEFINITION_) REFERENCES jbpm_processdefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_pooledactor ADD CONSTRAINT FK_POOLEDACTOR_SLI FOREIGN KEY (SWIMLANEINSTANCE_) REFERENCES jbpm_swimlaneinstance (ID_);
ALTER TABLE jbpm_processdefinition ADD CONSTRAINT FK_PROCDEF_STRTSTA FOREIGN KEY (STARTSTATE_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_processinstance ADD CONSTRAINT FK_PROCIN_PROCDEF FOREIGN KEY (PROCESSDEFINITION_) REFERENCES jbpm_processdefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_processinstance ADD CONSTRAINT FK_PROCIN_ROOTTKN FOREIGN KEY (ROOTTOKEN_) REFERENCES jbpm_token (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_processinstance ADD CONSTRAINT FK_PROCIN_SPROCTKN FOREIGN KEY (SUPERPROCESSTOKEN_) REFERENCES jbpm_token (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_runtimeaction ADD CONSTRAINT FK_RTACTN_ACTION FOREIGN KEY (ACTION_) REFERENCES jbpm_action (ID_) ;
ALTER TABLE jbpm_runtimeaction ADD CONSTRAINT FK_RTACTN_PROCINST FOREIGN KEY (PROCESSINSTANCE_) REFERENCES jbpm_processinstance (ID_);
ALTER TABLE jbpm_swimlane ADD CONSTRAINT FK_SWL_ASSDEL FOREIGN KEY (ASSIGNMENTDELEGATION_) REFERENCES jbpm_delegation (ID_) ;
ALTER TABLE jbpm_swimlane ADD CONSTRAINT FK_SWL_TSKMGMTDEF FOREIGN KEY (TASKMGMTDEFINITION_) REFERENCES jbpm_moduledefinition (ID_);
ALTER TABLE jbpm_swimlaneinstance ADD CONSTRAINT FK_SWIMLANEINST_SL FOREIGN KEY (SWIMLANE_) REFERENCES jbpm_swimlane (ID_) ;
ALTER TABLE jbpm_swimlaneinstance ADD CONSTRAINT FK_SWIMLANEINST_TM FOREIGN KEY (TASKMGMTINSTANCE_) REFERENCES jbpm_moduleinstance (ID_);
ALTER TABLE jbpm_task ADD CONSTRAINT FK_TASK_ASSDEL FOREIGN KEY (ASSIGNMENTDELEGATION_) REFERENCES jbpm_delegation (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_task ADD CONSTRAINT FK_TASK_PROCDEF FOREIGN KEY (PROCESSDEFINITION_) REFERENCES jbpm_processdefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_task ADD CONSTRAINT FK_TASK_STARTST FOREIGN KEY (STARTSTATE_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_task ADD CONSTRAINT FK_TASK_SWIMLANE FOREIGN KEY (SWIMLANE_) REFERENCES jbpm_swimlane (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_task ADD CONSTRAINT FK_TASK_TASKMGTDEF FOREIGN KEY (TASKMGMTDEFINITION_) REFERENCES jbpm_moduledefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_task ADD CONSTRAINT FK_TASK_TASKNODE FOREIGN KEY (TASKNODE_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_task ADD CONSTRAINT FK_TSK_TSKCTRL FOREIGN KEY (TASKCONTROLLER_) REFERENCES jbpm_taskcontroller (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_taskactorpool ADD CONSTRAINT FK_TASKACTPL_TSKI FOREIGN KEY (TASKINSTANCE_) REFERENCES jbpm_taskinstance (ID_) ;
ALTER TABLE jbpm_taskactorpool ADD CONSTRAINT FK_TSKACTPOL_PLACT FOREIGN KEY (POOLEDACTOR_) REFERENCES jbpm_pooledactor (ID_);
ALTER TABLE jbpm_taskcontroller ADD CONSTRAINT FK_TSKCTRL_DELEG FOREIGN KEY (TASKCONTROLLERDELEGATION_) REFERENCES jbpm_delegation (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_taskinstance ADD CONSTRAINT FK_TASKINST_SLINST FOREIGN KEY (SWIMLANINSTANCE_) REFERENCES jbpm_swimlaneinstance (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_taskinstance ADD CONSTRAINT FK_TASKINST_TASK FOREIGN KEY (TASK_) REFERENCES jbpm_task (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_taskinstance ADD CONSTRAINT FK_TASKINST_TMINST FOREIGN KEY (TASKMGMTINSTANCE_) REFERENCES jbpm_moduleinstance (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_taskinstance ADD CONSTRAINT FK_TASKINST_TOKEN FOREIGN KEY (TOKEN_) REFERENCES jbpm_token (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_timer ADD CONSTRAINT FK_TIMER_ACTION FOREIGN KEY (ACTION_) REFERENCES jbpm_action (ID_) ;
ALTER TABLE jbpm_timer ADD CONSTRAINT FK_TIMER_PRINST FOREIGN KEY (PROCESSINSTANCE_) REFERENCES jbpm_processinstance (ID_) ;
ALTER TABLE jbpm_timer ADD CONSTRAINT FK_TIMER_TOKEN FOREIGN KEY (TOKEN_) REFERENCES jbpm_token (ID_) ;
ALTER TABLE jbpm_timer ADD CONSTRAINT FK_TIMER_TSKINST FOREIGN KEY (TASKINSTANCE_) REFERENCES jbpm_taskinstance (ID_);
ALTER TABLE jbpm_token ADD CONSTRAINT FK_TOKEN_NODE FOREIGN KEY (NODE_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_token ADD CONSTRAINT FK_TOKEN_PARENT FOREIGN KEY (PARENT_) REFERENCES jbpm_token (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_token ADD CONSTRAINT FK_TOKEN_PROCINST FOREIGN KEY (PROCESSINSTANCE_) REFERENCES jbpm_processinstance (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_token ADD CONSTRAINT FK_TOKEN_SUBPI FOREIGN KEY (SUBPROCESSINSTANCE_) REFERENCES jbpm_processinstance (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_tokenvariablemap ADD CONSTRAINT FK_TKVARMAP_CTXT FOREIGN KEY (CONTEXTINSTANCE_) REFERENCES jbpm_moduleinstance (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_tokenvariablemap ADD CONSTRAINT FK_TKVARMAP_TOKEN FOREIGN KEY (TOKEN_) REFERENCES jbpm_token (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_transition ADD CONSTRAINT FK_TRANSITION_FROM FOREIGN KEY (FROM_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_transition ADD CONSTRAINT FK_TRANSITION_TO FOREIGN KEY (TO_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_transition ADD CONSTRAINT FK_TRANS_PROCDEF FOREIGN KEY (PROCESSDEFINITION_) REFERENCES jbpm_processdefinition (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_variableaccess ADD CONSTRAINT FK_VARACC_PROCST FOREIGN KEY (PROCESSSTATE_) REFERENCES jbpm_node (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_variableaccess ADD CONSTRAINT FK_VARACC_SCRIPT FOREIGN KEY (SCRIPT_) REFERENCES jbpm_action (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_variableaccess ADD CONSTRAINT FK_VARACC_TSKCTRL FOREIGN KEY (TASKCONTROLLER_) REFERENCES jbpm_taskcontroller (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_variableinstance ADD CONSTRAINT FK_BYTEINST_ARRAY FOREIGN KEY (BYTEARRAYVALUE_) REFERENCES jbpm_bytearray (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_variableinstance ADD CONSTRAINT FK_VARINST_PRCINST FOREIGN KEY (PROCESSINSTANCE_) REFERENCES jbpm_processinstance (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_variableinstance ADD CONSTRAINT FK_VARINST_TK FOREIGN KEY (TOKEN_) REFERENCES jbpm_token (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_variableinstance ADD CONSTRAINT FK_VARINST_TKVARMP FOREIGN KEY (TOKENVARIABLEMAP_) REFERENCES jbpm_tokenvariablemap (ID_) ON UPDATE CASCADE;
ALTER TABLE jbpm_variableinstance ADD CONSTRAINT FK_VAR_TSKINST FOREIGN KEY (TASKINSTANCE_) REFERENCES jbpm_taskinstance (ID_) ON UPDATE CASCADE;
