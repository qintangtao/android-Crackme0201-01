.class public Lcom/lzx/iteam/net/AsynHttpClient;
.super Ljava/lang/Object;
.source "AsynHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/net/AsynHttpClient$CcMsgSender;,
        Lcom/lzx/iteam/net/AsynHttpClient$ChatMsgSender;,
        Lcom/lzx/iteam/net/AsynHttpClient$EventMsgSender;,
        Lcom/lzx/iteam/net/AsynHttpClient$TalkMsgSender;,
        Lcom/lzx/iteam/net/AsynHttpClient$UserMsgSender;
    }
.end annotation


# static fields
.field public static final API_APP_ANDROID_PUSH:Ljava/lang/String; = "/api/app/android_push"

.field public static final API_APP_IN:Ljava/lang/String; = "/api/app/in"

.field public static final API_APP_OUT:Ljava/lang/String; = "/api/app/out"

.field public static final API_APP_VERSION:Ljava/lang/String; = "/api/app/version"

.field public static final API_AUTH_ACCESS:Ljava/lang/String; = "/api/auth/access"

.field public static final API_AUTH_DETAIL:Ljava/lang/String; = "/api/auth/detail"

.field public static final API_AUTH_SHIELD:Ljava/lang/String; = "/api/auth/shield"

.field public static final API_CHATGROUP_ADDMEMBER:Ljava/lang/String; = "/api/chatgroup/add_member"

.field public static final API_CHATGROUP_CREATE:Ljava/lang/String; = "/api/chatgroup/create"

.field public static final API_CHATGROUP_CREATE_SINGLE:Ljava/lang/String; = "/api/chatgroup/create_single"

.field public static final API_CHATGROUP_EXIT:Ljava/lang/String; = "/api/chatgroup/exit"

.field public static final API_CHATGROUP_INFO:Ljava/lang/String; = "/api/chatgroup/info"

.field public static final API_CHATGROUP_LIST:Ljava/lang/String; = "/api/chatgroup/list"

.field public static final API_CHATGROUP_REMOVE_MEMBER:Ljava/lang/String; = "/api/chatmember/remove"

.field public static final API_CHATGROUP_UPDATE:Ljava/lang/String; = "/api/chatgroup/update"

.field public static final API_CONTACTS_BY_TAG:Ljava/lang/String; = "/api/tags/contacts_by_tag"

.field public static final API_CONTACT_ADDLIST:Ljava/lang/String; = "/api/contact/addlist"

.field public static final API_CONTACT_DIALCOUNT:Ljava/lang/String; = "/api/contact/dialcount"

.field public static final API_CONTACT_GET:Ljava/lang/String; = "/api/contact/get"

.field public static final API_CONTACT_GETLIST:Ljava/lang/String; = "/api/contact/getlist"

.field public static final API_CONTACT_INVITE:Ljava/lang/String; = "/api/contact/invite"

.field public static final API_CONTACT_NAMECARDS:Ljava/lang/String; = "/api/contact/namecards"

.field public static final API_CONTACT_REMOVE:Ljava/lang/String; = "/api/contact/remove"

.field public static final API_CONTACT_SCANING:Ljava/lang/String; = "/api/contact/add_by_scaning"

.field public static final API_CONTACT_UPDATE:Ljava/lang/String; = "/api/contact/update"

.field public static final API_EVENT_ADD:Ljava/lang/String; = "/api/event/add"

.field public static final API_EVENT_ADD_ACTIVE:Ljava/lang/String; = "/api/event/add_active"

.field public static final API_EVENT_ADD_COMMENT:Ljava/lang/String; = "/api/event/add_comment"

.field public static final API_EVENT_ADD_MEMBERS:Ljava/lang/String; = "/api/event/add_members"

.field public static final API_EVENT_ADD_REG:Ljava/lang/String; = "/api/event/add_reg"

.field public static final API_EVENT_ADD_VOTE:Ljava/lang/String; = "/api/event/add_vote"

.field public static final API_EVENT_ATTENDANCE_ANALYSIS:Ljava/lang/String; = "/api/event/attendance/analysis"

.field public static final API_EVENT_ATTENDANCE_DEL:Ljava/lang/String; = "/api/event/attendance/del"

.field public static final API_EVENT_ATTENDANCE_DEVICES_STATUS:Ljava/lang/String; = "/api/event/attendance/devices_status"

.field public static final API_EVENT_ATTENDANCE_DO:Ljava/lang/String; = "/api/event/attendance/do"

.field public static final API_EVENT_ATTENDANCE_FACE:Ljava/lang/String; = "/api/event/attendance/face"

.field public static final API_EVENT_ATTENDANCE_GET_EXCEPTION_DEVICE:Ljava/lang/String; = "/api/event/attendance/get_exception_device"

.field public static final API_EVENT_ATTENDANCE_GROUP_DEVICES:Ljava/lang/String; = "/api/event/attendance/group_devices"

.field public static final API_EVENT_ATTENDANCE_INSERT_NEW_DEFAULT_DEVICES:Ljava/lang/String; = "/api/event/attendance/insert_new_default_devices"

.field public static final API_EVENT_ATTENDANCE_LIST:Ljava/lang/String; = "/api/event/attendance/list"

.field public static final API_EVENT_ATTENDANCE_MEMBER_LIST:Ljava/lang/String; = "/api/event/attendance/member_list"

.field public static final API_EVENT_ATTENDANCE_MY_DEVICES:Ljava/lang/String; = "/api/event/attendance/my_devices"

.field public static final API_EVENT_ATTENDANCE_NEW:Ljava/lang/String; = "/api/event/attendance/new"

.field public static final API_EVENT_ATTENDANCE_NOTIFICATION:Ljava/lang/String; = "/api/event/attendance/notification"

.field public static final API_EVENT_ATTENDANCE_SET_DEFAULT_DEVICES:Ljava/lang/String; = "/api/event/attendance/set_default_devices"

.field public static final API_EVENT_ATTENDANCE_SWITCH_SET_DEVICES:Ljava/lang/String; = "/api/event/attendance/switch_set_device"

.field public static final API_EVENT_ATTENDANCE_UPDATE:Ljava/lang/String; = "/api/event/attendance/update"

.field public static final API_EVENT_ATTENDANCE_USER_STATISTICS:Ljava/lang/String; = "/api/event/attendance/user_statistics"

.field public static final API_EVENT_CALENDAR_ADD:Ljava/lang/String; = "/api/event/calendar/add"

.field public static final API_EVENT_CALENDAR_ADD_MANAGERS:Ljava/lang/String; = "/api/event/calendar/add_managers"

.field public static final API_EVENT_CALENDAR_ADD_METTING:Ljava/lang/String; = "/api/event/calendar/add_meeting"

.field public static final API_EVENT_CALENDAR_DEL:Ljava/lang/String; = "/api/event/calendar/del"

.field public static final API_EVENT_CALENDAR_DEL_MANAGERS:Ljava/lang/String; = "/api/event/calendar/del_manager"

.field public static final API_EVENT_CALENDAR_DONE:Ljava/lang/String; = "/api/event/calendar/done"

.field public static final API_EVENT_CALENDAR_GET:Ljava/lang/String; = "/api/event/calendar/get"

.field public static final API_EVENT_CALENDAR_GET_MANAGERS:Ljava/lang/String; = "/api/event/calendar/get_managers"

.field public static final API_EVENT_CALENDAR_LIST:Ljava/lang/String; = "/api/event/calendar/list"

.field public static final API_EVENT_CALENDAR_STATUS:Ljava/lang/String; = "/api/event/calendar/status"

.field public static final API_EVENT_CALENDAR_UPDATE:Ljava/lang/String; = "/api/event/calendar/update"

.field public static final API_EVENT_DELETE_TEMPLATES:Ljava/lang/String; = "/api/event/del_templates"

.field public static final API_EVENT_GET:Ljava/lang/String; = "/api/event/get"

.field public static final API_EVENT_GET_COMMENT:Ljava/lang/String; = "/api/event/get_comments"

.field public static final API_EVENT_GET_TEMPLATES:Ljava/lang/String; = "/api/event/get_templates"

.field public static final API_EVENT_JOIN:Ljava/lang/String; = "/api/event/join"

.field public static final API_EVENT_LIST:Ljava/lang/String; = "/api/event/list"

.field public static final API_EVENT_LIST_BY_EVENTS:Ljava/lang/String; = "/api/event/get_list_by_events"

.field public static final API_EVENT_LIST_V2:Ljava/lang/String; = "/api/event/list_v2"

.field public static final API_EVENT_LIST_V3:Ljava/lang/String; = "/api/event/list_v3"

.field public static final API_EVENT_MAKE_TEMPLATES:Ljava/lang/String; = "/api/event/make_templates"

.field public static final API_EVENT_MEMBER:Ljava/lang/String; = "/api/event/get_members"

.field public static final API_EVENT_REG:Ljava/lang/String; = "/api/event/reg"

.field public static final API_EVENT_REMOVE:Ljava/lang/String; = "/api/event/remove"

.field public static final API_EVENT_VOTE:Ljava/lang/String; = "/api/event/vote"

.field public static final API_GROUP_ADD:Ljava/lang/String; = "/api/group/add"

.field public static final API_GROUP_ADD_MANAGER:Ljava/lang/String; = "/api/group/add_manager"

.field public static final API_GROUP_DELUSERS:Ljava/lang/String; = "/api/group/delusers"

.field public static final API_GROUP_GET:Ljava/lang/String; = "/api/group/get"

.field public static final API_GROUP_GETLIST:Ljava/lang/String; = "/api/group/list"

.field public static final API_GROUP_REMOVE:Ljava/lang/String; = "/api/group/remove"

.field public static final API_GROUP_REMOVE_MANAGER:Ljava/lang/String; = "/api/group/remove_manager"

.field public static final API_GROUP_UPDATE:Ljava/lang/String; = "/api/group/update"

.field public static final API_MSG_CHATMSG_GETHISTORY:Ljava/lang/String; = "/api/msg/get_history"

.field public static final API_MSG_CHAT_GETMSG:Ljava/lang/String; = "/api/msg/get"

.field public static final API_MSG_CHAT_SEND:Ljava/lang/String; = "/api/msg/sendg"

.field public static final API_MSG_EVENT_GETMSG:Ljava/lang/String; = "/api/msg/get_event"

.field public static final API_MSG_EVENT_GET_NEW_EVENT:Ljava/lang/String; = "/api/msg/get_new_event"

.field public static final API_PYS:Ljava/lang/String; = "/api/pys"

.field public static final API_QN_GET_CHAT_TOKEN:Ljava/lang/String; = "/api/qn/get_chat_token"

.field public static final API_QN_GET_EVENT_TOKEN:Ljava/lang/String; = "/api/qn/get_event_token"

.field public static final API_QN_GET_GROUP_TOKEN:Ljava/lang/String; = "/api/qn/get_group_token"

.field public static final API_QN_GET_US_TOKEN:Ljava/lang/String; = "/api/qn/get_us_token"

.field public static final API_REMOVE_ATTENDANCE_MEMBER:Ljava/lang/String; = "/api/event/attendance/remove_member"

.field public static final API_TAGS_ADD:Ljava/lang/String; = "/api/tags/add"

.field public static final API_TAGS_DELETE:Ljava/lang/String; = "/api/tags/delete"

.field public static final API_TAGS_GET:Ljava/lang/String; = "/api/tags/get"

.field public static final API_TAGS_SET:Ljava/lang/String; = "/api/tags/set"

.field public static final API_TAGS_UPDATE:Ljava/lang/String; = "/api/tags/update"

.field public static final API_TALK_ADD:Ljava/lang/String; = "/api/talk/add"

.field public static final API_TALK_ADD_COMMENT:Ljava/lang/String; = "/api/talk/add_comment"

.field public static final API_TALK_DEL:Ljava/lang/String; = "/api/talk/del"

.field public static final API_TALK_DEL_REPLY:Ljava/lang/String; = "/api/talk/del_reply"

.field public static final API_TALK_DETAIL:Ljava/lang/String; = "/api/talk/detail"

.field public static final API_TALK_GET_TALK_TOKEN:Ljava/lang/String; = "/api/talk/get_talk_token"

.field public static final API_TALK_LIKE:Ljava/lang/String; = "/api/talk/like"

.field public static final API_TALK_LIST:Ljava/lang/String; = "/api/talk/list"

.field public static final API_TALK_MSG:Ljava/lang/String; = "/api/talk/msg"

.field public static final API_TALK_NEW:Ljava/lang/String; = "/api/talk/new"

.field public static final API_TALK_NEW_MSG_COUNT:Ljava/lang/String; = "/api/talk/new_msg_count"

.field public static final API_TALK_PREVIEW:Ljava/lang/String; = "/api/talk/preview"

.field public static final API_TALK_REPLY:Ljava/lang/String; = "/api/talk/reply"

.field public static final API_TALK_SELF:Ljava/lang/String; = "/api/talk/self"

.field public static final API_USER_FEED:Ljava/lang/String; = "/api/user/feed"

.field public static final API_USER_FORGETPASS:Ljava/lang/String; = "/api/user/forget_pass"

.field public static final API_USER_GOON:Ljava/lang/String; = "/api/user/goon"

.field public static final API_USER_IMAGE:Ljava/lang/String; = "/api/user/image"

.field public static final API_USER_LOGIN:Ljava/lang/String; = "/api/user/login"

.field public static final API_USER_LOGOUT:Ljava/lang/String; = "/api/user/logout"

.field public static final API_USER_MYNAMECARD:Ljava/lang/String; = "/api/user/mynamecard"

.field public static final API_USER_REGIST:Ljava/lang/String; = "/api/user/register"

.field public static final API_USER_RESETPASS:Ljava/lang/String; = "/api/user/reset_pass"

.field public static final API_USER_SEND_CODE:Ljava/lang/String; = "/api/user/send_code"

.field public static final API_USER_SEND_CODE_PASSWORD:Ljava/lang/String; = "/api/user/send_code_password"

.field public static final API_USER_STATUS:Ljava/lang/String; = "/api/user/status"

.field public static final API_USER_SYNC_CONTACYS:Ljava/lang/String; = "/api/user/sync_contacts"

.field public static final API_USER_SYNC_MESSAGE:Ljava/lang/String; = "/api/user/sync"

.field public static final DEFAULT_PAGE_SIZE:Ljava/lang/String; = "25"

.field public static final ERROR_LOCAL:I = 0x1f41

.field public static final ERROR_SERVER:I = 0x1f42

.field public static final ERROR_UNKNOWN:I = 0x1f43

.field public static final HTTP_API_CHAT_CLIENT:Ljava/lang/String; = "http://123.57.214.92:8070"

.field public static final HTTP_API_CLIENT:Ljava/lang/String; = "http://123.57.254.36:9000"

.field public static final HTTP_API_EVENT_CLIENT:Ljava/lang/String; = "http://123.57.254.36:9050"

.field public static final HTTP_API_TALK_CLIENT:Ljava/lang/String; = "http://123.57.254.36:9090"

.field public static final HTTP_API_USER_CLIENT:Ljava/lang/String; = "http://123.57.254.36:9040"

.field public static final HTTP_CHAT_CONNECT_CLIENT:Ljava/lang/String; = "http://123.57.214.92:8899"

.field public static final HTTP_HELP_ACTION:Ljava/lang/String; = "http://m.ituandui.cn/help/action.html "

.field public static final HTTP_HELP_ANNOUNCEMENT:Ljava/lang/String; = "http://m.ituandui.cn/help/announcement.html"

.field public static final HTTP_HELP_APPROVAL:Ljava/lang/String; = "http://m.ituandui.cn/help/approval.html"

.field public static final HTTP_HELP_APPROVAL_ADMIN:Ljava/lang/String; = "http://m.ituandui.cn/help/approval_admin.html"

.field public static final HTTP_HELP_APP_ATTENDANCE:Ljava/lang/String; = "http://m.ituandui.cn/app/attendance.html"

.field public static final HTTP_HELP_ATTENDANCE:Ljava/lang/String; = "http://m.ituandui.cn/help/attendance.html"

.field public static final HTTP_HELP_CALENDAR:Ljava/lang/String; = "http://m.ituandui.cn/help/calendar.html"

.field public static final HTTP_HELP_CALENDAR_TABLE:Ljava/lang/String; = "http://m.ituandui.cn/help/calendar_table.html"

.field public static final HTTP_HELP_CONTACT:Ljava/lang/String; = "http://m.ituandui.cn/help/contact.html"

.field public static final HTTP_HELP_DRAFTS:Ljava/lang/String; = "http://m.ituandui.cn/help/drafts.html"

.field public static final HTTP_HELP_EVENT:Ljava/lang/String; = "http://m.ituandui.cn/help/event.html"

.field public static final HTTP_HELP_FRIEND:Ljava/lang/String; = "http://m.ituandui.cn/help/friend.html"

.field public static final HTTP_HELP_METTING:Ljava/lang/String; = "http://m.ituandui.cn/help/metting.html"

.field public static final HTTP_HELP_NEW_TEAM:Ljava/lang/String; = "http://m.ituandui.cn/help/new_team.html"

.field public static final HTTP_HELP_TAG_TIP:Ljava/lang/String; = "http://m.ituandui.cn/help/tag_tip.html"

.field public static final HTTP_HELP_TEAM_MANAGE:Ljava/lang/String; = "http://m.ituandui.cn/help/team_manage.html"

.field public static final HTTP_HELP_VOTE:Ljava/lang/String; = "http://m.ituandui.cn/help/vote.html"

.field public static final HTTP_HELP_WORK:Ljava/lang/String; = "http://m.ituandui.cn/help/work.html"

.field public static final HTTP_OPERATION_HELP:Ljava/lang/String; = "http://123.57.214.92/app/help"

.field public static final HTTP_TEAM_DOWNLOAD:Ljava/lang/String; = "http://ituandui.cn/download"

.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_ALERT_DATETIME:Ljava/lang/String; = "alert_datetime"

.field public static final KEY_APPROCAL_ID:Ljava/lang/String; = "approval_id"

.field public static final KEY_APPROCAL_TYPE:Ljava/lang/String; = "approval_type"

.field public static final KEY_APPROVAL_ADDRESS:Ljava/lang/String; = "approval_address"

.field public static final KEY_APPROVAL_CONTACT_ID:Ljava/lang/String; = "approval_contact_id"

.field public static final KEY_APPROVAL_DAY:Ljava/lang/String; = "approval_day"

.field public static final KEY_APPROVAL_END_PART:Ljava/lang/String; = "approval_end_part"

.field public static final KEY_APPROVAL_END_TIME:Ljava/lang/String; = "approval_end_time"

.field public static final KEY_APPROVAL_GROUP_ID:Ljava/lang/String; = "approval_group_id"

.field public static final KEY_APPROVAL_HOUR:Ljava/lang/String; = "approval_hour"

.field public static final KEY_APPROVAL_LEAVE_TYPE:Ljava/lang/String; = "approval_leave_type"

.field public static final KEY_APPROVAL_MAMAGER_ADD:Ljava/lang/String; = "/api/group/add_approval_manager"

.field public static final KEY_APPROVAL_MAMAGER_LIST:Ljava/lang/String; = "/api/group/approval_manager_list"

.field public static final KEY_APPROVAL_MAMAGER_REMOVE:Ljava/lang/String; = "/api/group/remove_approval_manager"

.field public static final KEY_APPROVAL_MY_GROUPS:Ljava/lang/String; = "/api/event/approval/my_groups"

.field public static final KEY_APPROVAL_REASON:Ljava/lang/String; = "approval_reason"

.field public static final KEY_APPROVAL_START_PART:Ljava/lang/String; = "approval_start_part"

.field public static final KEY_APPROVAL_START_TIME:Ljava/lang/String; = "approval_start_time"

.field public static final KEY_APPROVE_ADMIN:Ljava/lang/String; = "approve_admin"

.field public static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final KEY_ATTACHMENT1:Ljava/lang/String; = "attachment_1"

.field public static final KEY_ATTACHMENT2:Ljava/lang/String; = "attachment_2"

.field public static final KEY_ATTACHMENT3:Ljava/lang/String; = "attachment_3"

.field public static final KEY_ATTENDANCES:Ljava/lang/String; = "attendances"

.field public static final KEY_ATTENDANCE_CALENDARS:Ljava/lang/String; = "attendance_calendars"

.field public static final KEY_ATTENDANCE_FORM_ID:Ljava/lang/String; = "attendance_form_id"

.field public static final KEY_ATTENDANCE_TYPE:Ljava/lang/String; = "attendance_type"

.field public static final KEY_ATTENDANCE_UID:Ljava/lang/String; = "attendance_uid"

.field public static final KEY_AUTH_TOKEN:Ljava/lang/String; = "sid"

.field public static final KEY_AVATAR:Ljava/lang/String; = "avatar"

.field public static final KEY_BOSS_UID:Ljava/lang/String; = "boss_uid"

.field public static final KEY_CALENDAR:Ljava/lang/String; = "calendar"

.field public static final KEY_CALENDAR_BOSS_UID:Ljava/lang/String; = "boss_uid"

.field public static final KEY_CALENDAR_DATE:Ljava/lang/String; = "month"

.field public static final KEY_CALENDAR_DAY:Ljava/lang/String; = "day"

.field public static final KEY_CALENDAR_DONE:Ljava/lang/String; = "done"

.field public static final KEY_CALENDAR_STATE:Ljava/lang/String; = "state"

.field public static final KEY_CALENDAR_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_CC_CODE:Ljava/lang/String; = "code"

.field public static final KEY_CC_DATA:Ljava/lang/String; = "data"

.field public static final KEY_CHAT_GROUP_ID:Ljava/lang/String; = "chat_group_id"

.field public static final KEY_CHAT_GROUP_IMG:Ljava/lang/String; = "chat_group_img"

.field public static final KEY_CHAT_GROUP_NAME:Ljava/lang/String; = "chat_group_name"

.field public static final KEY_CLIENT_TYPE:Ljava/lang/String; = "client_type"

.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_CONTACTS_LIST:Ljava/lang/String; = "contacts_list"

.field public static final KEY_CONTACTS_NUM:Ljava/lang/String; = "contacts_num"

.field public static final KEY_CONTACT_CLOUD_NAMECARD:Ljava/lang/String; = "contact_namecard"

.field public static final KEY_CONTACT_COMPANY:Ljava/lang/String; = "contact_company"

.field public static final KEY_CONTACT_COUNT:Ljava/lang/String; = "contact_count"

.field public static final KEY_CONTACT_DIALCOUNT:Ljava/lang/String; = "contact_dialcount"

.field public static final KEY_CONTACT_EMAIL:Ljava/lang/String; = "contact_email"

.field public static final KEY_CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final KEY_CONTACT_IDS:Ljava/lang/String; = "contact_ids"

.field public static final KEY_CONTACT_IMAGE:Ljava/lang/String; = "contact_image"

.field public static final KEY_CONTACT_JOB:Ljava/lang/String; = "contact_job"

.field public static final KEY_CONTACT_LANDLINE:Ljava/lang/String; = "contact_landline"

.field public static final KEY_CONTACT_NAME:Ljava/lang/String; = "contact_name"

.field public static final KEY_CONTACT_NAMECARD:Ljava/lang/String; = "contact_namecard"

.field public static final KEY_CONTACT_PHONE:Ljava/lang/String; = "contact_phone"

.field public static final KEY_CONTACT_PHONENUMBER:Ljava/lang/String; = "contact_phoneNumber"

.field public static final KEY_CONTACT_REMARKS:Ljava/lang/String; = "contact_remarks"

.field public static final KEY_CONTACT_SHORT_TAGS:Ljava/lang/String; = "short_tag_name"

.field public static final KEY_CONTACT_STATUS:Ljava/lang/String; = "contact_status"

.field public static final KEY_CONTACT_STRUCTURE:Ljava/lang/String; = "contact_structure"

.field public static final KEY_CONTACT_TAGS:Ljava/lang/String; = "contact_tags"

.field public static final KEY_CONTACT_URL:Ljava/lang/String; = "contact_url"

.field public static final KEY_CONTACT_USERS:Ljava/lang/String; = "contact_users"

.field public static final KEY_CONTACT_WORK:Ljava/lang/String; = "jobtitle"

.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_CREATOR_UID:Ljava/lang/String; = "creator_uid"

.field public static final KEY_CTIME:Ljava/lang/String; = "ctime"

.field public static final KEY_CURRENT_CONTACT_ID:Ljava/lang/String; = "current_contact_id"

.field public static final KEY_DELETE_CONTACT_ID:Ljava/lang/String; = "del_contact_id"

.field public static final KEY_DEL_USER_ID:Ljava/lang/String; = "del_user_id"

.field public static final KEY_DEVIATION:Ljava/lang/String; = "deviation"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final KEY_DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final KEY_DEVICE_NO:Ljava/lang/String; = "device_no"

.field public static final KEY_DEVICE_NUMBER:Ljava/lang/String; = "device_number"

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final KEY_END_DATETIME:Ljava/lang/String; = "end_datetime"

.field public static final KEY_END_WORK_TIME:Ljava/lang/String; = "end_work_time"

.field public static final KEY_EVENT_ACTIVITE_ADDRESS:Ljava/lang/String; = "event_address"

.field public static final KEY_EVENT_ACTIVITE_TIME:Ljava/lang/String; = "event_date"

.field public static final KEY_EVENT_ADDRESS:Ljava/lang/String; = "event_address"

.field public static final KEY_EVENT_APPROVAL_ACTION:Ljava/lang/String; = "/api/event/approval/action"

.field public static final KEY_EVENT_APPROVAL_DEL:Ljava/lang/String; = "/api/event/approval/del"

.field public static final KEY_EVENT_APPROVAL_DETAIL:Ljava/lang/String; = "/api/event/approval/detail"

.field public static final KEY_EVENT_APPROVAL_LIST:Ljava/lang/String; = "/api/event/approval/list"

.field public static final KEY_EVENT_APPROVAL_NEW:Ljava/lang/String; = "/api/event/approval/new"

.field public static final KEY_EVENT_APPROVAL_TODO:Ljava/lang/String; = "/api/event/approval/todo"

.field public static final KEY_EVENT_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final KEY_EVENT_AUTHOR:Ljava/lang/String; = "author"

.field public static final KEY_EVENT_CONTENT:Ljava/lang/String; = "event_content"

.field public static final KEY_EVENT_CONTENTS:Ljava/lang/String; = "event_contents"

.field public static final KEY_EVENT_DATE_TIME:Ljava/lang/String; = "end_datetime"

.field public static final KEY_EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final KEY_EVENT_IDS:Ljava/lang/String; = "event_ids"

.field public static final KEY_EVENT_INIT_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_EVENT_INIT_TITLE:Ljava/lang/String; = "init_title"

.field public static final KEY_EVENT_IS_QRCODE:Ljava/lang/String; = "is_qrcode"

.field public static final KEY_EVENT_MEMBERS:Ljava/lang/String; = "recv_members"

.field public static final KEY_EVENT_NAME:Ljava/lang/String; = "event_templ_name"

.field public static final KEY_EVENT_START_TIME:Ljava/lang/String; = "start_datetime"

.field public static final KEY_EVENT_TEMP_NAME:Ljava/lang/String; = "event_temp_name"

.field public static final KEY_EVENT_TIME:Ljava/lang/String; = "event_time"

.field public static final KEY_EVENT_TITLE:Ljava/lang/String; = "event_title"

.field public static final KEY_EVENT_TMP_ID:Ljava/lang/String; = "event_tmp_id"

.field public static final KEY_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field public static final KEY_EVENT_UIDS:Ljava/lang/String; = "init_recv_uids"

.field public static final KEY_EVENT_VOTE_OPTION:Ljava/lang/String; = "option"

.field public static final KEY_FLAG:Ljava/lang/String; = "flag"

.field public static final KEY_GID:Ljava/lang/String; = "gid"

.field public static final KEY_GROUP_DESC:Ljava/lang/String; = "group_desc"

.field public static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final KEY_GROUP_IDS:Ljava/lang/String; = "group_ids"

.field public static final KEY_GROUP_IMG:Ljava/lang/String; = "group_img"

.field public static final KEY_GROUP_NAME:Ljava/lang/String; = "group_name"

.field public static final KEY_GROUP_TYPE:Ljava/lang/String; = "group_type"

.field public static final KEY_GRP:Ljava/lang/String; = "grp"

.field public static final KEY_HAS_TAG:Ljava/lang/String; = "has_tag"

.field public static final KEY_HAS_TAGS:Ljava/lang/String; = "has_tags"

.field public static final KEY_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_IS_ALL:Ljava/lang/String; = "is_all"

.field public static final KEY_IS_CLEAR:Ljava/lang/String; = "is_clear"

.field public static final KEY_IS_CREATOR:Ljava/lang/String; = "is_creator"

.field public static final KEY_IS_MSG_NOTE:Ljava/lang/String; = "is_msg_note"

.field public static final KEY_IS_NEW:Ljava/lang/String; = "is_new"

.field public static final KEY_IS_NOTIFICATION:Ljava/lang/String; = "is_notification"

.field public static final KEY_IS_OPEN:Ljava/lang/String; = "is_open"

.field public static final KEY_KEY:Ljava/lang/String; = "key"

.field public static final KEY_KEYS:Ljava/lang/String; = "keys"

.field public static final KEY_KEY_COUNT:Ljava/lang/String; = "key_count"

.field public static final KEY_KEY_START_LOCATION:Ljava/lang/String; = "key_startLocation"

.field public static final KEY_KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final KEY_MANAGER:Ljava/lang/String; = "manager"

.field public static final KEY_MANAGERS:Ljava/lang/String; = "managers"

.field public static final KEY_MANAGER_CONTACT_ID:Ljava/lang/String; = "manager_contact_id"

.field public static final KEY_MEMBERS:Ljava/lang/String; = "members"

.field public static final KEY_MEMBER_COUNT:Ljava/lang/String; = "member_count"

.field public static final KEY_MONTH:Ljava/lang/String; = "month"

.field public static final KEY_MSG_IDS:Ljava/lang/String; = "mids"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_NEW_PASSWORD:Ljava/lang/String; = "new_password"

.field public static final KEY_NEW_PHONE:Ljava/lang/String; = "phone"

.field public static final KEY_NEW_START_DATETIME:Ljava/lang/String; = "new_start_datetime"

.field public static final KEY_NEW_USEID:Ljava/lang/String; = "user_id"

.field public static final KEY_OLD_PASSWORD:Ljava/lang/String; = "raw_password"

.field public static final KEY_OLD_START_DATETIME:Ljava/lang/String; = "old_start_datetime"

.field public static final KEY_ORDER_NUM:Ljava/lang/String; = "order_num"

.field public static final KEY_PAGEINDEX:Ljava/lang/String; = "pageindex"

.field public static final KEY_PAGESIZE:Ljava/lang/String; = "pagesize"

.field public static final KEY_PASS:Ljava/lang/String; = "password"

.field public static final KEY_PATH:Ljava/lang/String; = "path"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone_number"

.field public static final KEY_PHONES:Ljava/lang/String; = "users"

.field public static final KEY_PHONE_PURVIEW:Ljava/lang/String; = "phone_purview"

.field public static final KEY_RECV_USER_ID:Ljava/lang/String; = "recv_user_id"

.field public static final KEY_REMARK:Ljava/lang/String; = "remark"

.field public static final KEY_REPLY_TXT:Ljava/lang/String; = "reply_txt"

.field public static final KEY_REPLY_UID:Ljava/lang/String; = "reply_uid"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_RESULT_MSG:Ljava/lang/String; = "msg"

.field public static final KEY_SET_TYPE:Ljava/lang/String; = "set_type"

.field public static final KEY_SET_UID:Ljava/lang/String; = "set_uid"

.field public static final KEY_SET_USER_ID:Ljava/lang/String; = "set_user_id"

.field public static final KEY_SEX:Ljava/lang/String; = "sex"

.field public static final KEY_SID:Ljava/lang/String; = "sid"

.field public static final KEY_START_DATETIME:Ljava/lang/String; = "start_datetime"

.field public static final KEY_START_WORK_TIME:Ljava/lang/String; = "start_work_time"

.field public static final KEY_STRUCTURE_CHILD_COUNT:Ljava/lang/String; = "child_count"

.field public static final KEY_STRUCTURE_CONTACT_COUNT:Ljava/lang/String; = "contact_count"

.field public static final KEY_STRUCTURE_GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final KEY_STRUCTURE_ID:Ljava/lang/String; = "id"

.field public static final KEY_STRUCTURE_NAME:Ljava/lang/String; = "name"

.field public static final KEY_STRUCTURE_PATH:Ljava/lang/String; = "path"

.field public static final KEY_STRUCTURE_PID:Ljava/lang/String; = "pid"

.field public static final KEY_TAGS:Ljava/lang/String; = "tags"

.field public static final KEY_TAG_ID:Ljava/lang/String; = "tag_id"

.field public static final KEY_TAG_NAME:Ljava/lang/String; = "tag_name"

.field public static final KEY_TAG_PATH:Ljava/lang/String; = "tag_path"

.field public static final KEY_TALK_ABOUT_ID:Ljava/lang/String; = "talk_about_id"

.field public static final KEY_TALK_ID:Ljava/lang/String; = "talk_id"

.field public static final KEY_TALK_USER_ID:Ljava/lang/String; = "talk_user_id"

.field public static final KEY_TEXT:Ljava/lang/String; = "text"

.field public static final KEY_TMP_EVENT_ID:Ljava/lang/String; = "tmp_event_id"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_TYPE_CONTACT_NAME:I = 0x0

.field public static final KEY_TYPE_CONTACT_REMARKS:I = 0x1

.field public static final KEY_UPDATE:Ljava/lang/String; = "update"

.field public static final KEY_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final KEY_USER_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_USER_COMPANY:Ljava/lang/String; = "company"

.field public static final KEY_USER_EDIT_TYPE:Ljava/lang/String; = "edit_type"

.field public static final KEY_USER_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final KEY_USER_IDS:Ljava/lang/String; = "user_ids"

.field public static final KEY_USER_JOB:Ljava/lang/String; = "job"

.field public static final KEY_USER_LANDLINE:Ljava/lang/String; = "landline"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "user_name"

.field public static final KEY_USER_PHONE:Ljava/lang/String; = "user_phone"

.field public static final KEY_USER_PHOTO:Ljava/lang/String; = "file"

.field public static final KEY_USER_TYPE:Ljava/lang/String; = "user_type"

.field public static final KEY_VERIFY_CODE:Ljava/lang/String; = "verify_code"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_WORK_DATE:Ljava/lang/String; = "work_date"

.field public static final KEY_W_TYPE:Ljava/lang/String; = "w_type"

.field public static final KEY_YEAR:Ljava/lang/String; = "year"

.field public static final SYNC_CHANNEL_HAVE_TWOSIM_PLUGIN:I = 0x2718

.field private static final TAG:Ljava/lang/String; = "AsyncHttpClient"

.field public static entity:Lorg/apache/http/entity/StringEntity;

.field private static sAsynHttpClient:Lcom/lzx/iteam/net/AsynHttpClient;

.field private static sHttpclient:Lorg/apache/http/client/HttpClient;


# instance fields
.field private mChatSender:Lcom/lzx/iteam/net/AsynHttpClient$ChatMsgSender;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEventSender:Lcom/lzx/iteam/net/AsynHttpClient$EventMsgSender;

.field private mPostSender:Lcom/lzx/iteam/net/AsynHttpClient$CcMsgSender;

.field private mTalkSender:Lcom/lzx/iteam/net/AsynHttpClient$TalkMsgSender;

.field private mUserSender:Lcom/lzx/iteam/net/AsynHttpClient$UserMsgSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/net/AsynHttpClient;->entity:Lorg/apache/http/entity/StringEntity;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x4e20

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mContext:Landroid/content/Context;

    .line 504
    const-string v6, "connectivity"

    .line 503
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mCm:Landroid/net/ConnectivityManager;

    .line 506
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 507
    .local v3, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 508
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 509
    iget-object v6, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 510
    .local v1, "cookieSyncManager":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 511
    new-instance v0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;

    const-string v6, "http://123.57.254.36:9000"

    invoke-direct {v0, v6}, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, "cookieStore":Lorg/apache/http/client/CookieStore;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 513
    .local v2, "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 514
    sput-object v2, Lcom/lzx/iteam/net/AsynHttpClient;->sHttpclient:Lorg/apache/http/client/HttpClient;

    .line 515
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "AsyncHttpClient"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 516
    .local v5, "senderThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 517
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 518
    .local v4, "looper":Landroid/os/Looper;
    new-instance v6, Lcom/lzx/iteam/net/AsynHttpClient$CcMsgSender;

    invoke-direct {v6, v4}, Lcom/lzx/iteam/net/AsynHttpClient$CcMsgSender;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mPostSender:Lcom/lzx/iteam/net/AsynHttpClient$CcMsgSender;

    .line 519
    new-instance v6, Lcom/lzx/iteam/net/AsynHttpClient$ChatMsgSender;

    invoke-direct {v6, v4}, Lcom/lzx/iteam/net/AsynHttpClient$ChatMsgSender;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mChatSender:Lcom/lzx/iteam/net/AsynHttpClient$ChatMsgSender;

    .line 520
    new-instance v6, Lcom/lzx/iteam/net/AsynHttpClient$TalkMsgSender;

    invoke-direct {v6, v4}, Lcom/lzx/iteam/net/AsynHttpClient$TalkMsgSender;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mTalkSender:Lcom/lzx/iteam/net/AsynHttpClient$TalkMsgSender;

    .line 521
    new-instance v6, Lcom/lzx/iteam/net/AsynHttpClient$UserMsgSender;

    invoke-direct {v6, v4}, Lcom/lzx/iteam/net/AsynHttpClient$UserMsgSender;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mUserSender:Lcom/lzx/iteam/net/AsynHttpClient$UserMsgSender;

    .line 522
    new-instance v6, Lcom/lzx/iteam/net/AsynHttpClient$EventMsgSender;

    invoke-direct {v6, v4}, Lcom/lzx/iteam/net/AsynHttpClient$EventMsgSender;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mEventSender:Lcom/lzx/iteam/net/AsynHttpClient$EventMsgSender;

    .line 523
    return-void
.end method

.method static synthetic access$0()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/lzx/iteam/net/AsynHttpClient;->sHttpclient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 526
    sget-object v0, Lcom/lzx/iteam/net/AsynHttpClient;->sAsynHttpClient:Lcom/lzx/iteam/net/AsynHttpClient;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lcom/lzx/iteam/net/AsynHttpClient;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/AsynHttpClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/net/AsynHttpClient;->sAsynHttpClient:Lcom/lzx/iteam/net/AsynHttpClient;

    .line 529
    :cond_0
    sget-object v0, Lcom/lzx/iteam/net/AsynHttpClient;->sAsynHttpClient:Lcom/lzx/iteam/net/AsynHttpClient;

    return-object v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 603
    const/4 v1, 0x0

    .line 605
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 610
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    return-object v2

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 610
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v2, "?"

    goto :goto_1
.end method

.method private isConnected()Z
    .locals 2

    .prologue
    .line 615
    iget-object v1, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 616
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 617
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V
    .locals 3
    .param p1, "absMsg"    # Lcom/lzx/iteam/net/CcMsgStructure;

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    const/16 v1, 0x1f41

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/lzx/iteam/net/CcMsgStructure;->onError(ILjava/lang/Object;)V

    .line 541
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mPostSender:Lcom/lzx/iteam/net/AsynHttpClient$CcMsgSender;

    invoke-virtual {v1}, Lcom/lzx/iteam/net/AsynHttpClient$CcMsgSender;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 539
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 540
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public execChatHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V
    .locals 3
    .param p1, "ccMsgStructure"    # Lcom/lzx/iteam/net/CcMsgStructure;

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    const/16 v1, 0x1f41

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/lzx/iteam/net/CcMsgStructure;->onError(ILjava/lang/Object;)V

    .line 567
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mChatSender:Lcom/lzx/iteam/net/AsynHttpClient$ChatMsgSender;

    invoke-virtual {v1}, Lcom/lzx/iteam/net/AsynHttpClient$ChatMsgSender;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 565
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 566
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V
    .locals 3
    .param p1, "ccMsgStructure"    # Lcom/lzx/iteam/net/CcMsgStructure;

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    const/16 v1, 0x1f41

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/lzx/iteam/net/CcMsgStructure;->onError(ILjava/lang/Object;)V

    .line 597
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mEventSender:Lcom/lzx/iteam/net/AsynHttpClient$EventMsgSender;

    invoke-virtual {v1}, Lcom/lzx/iteam/net/AsynHttpClient$EventMsgSender;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 595
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 596
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V
    .locals 3
    .param p1, "absMsg"    # Lcom/lzx/iteam/net/CcMsgStructure;

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    const/16 v1, 0x1f41

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/lzx/iteam/net/CcMsgStructure;->onError(ILjava/lang/Object;)V

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mTalkSender:Lcom/lzx/iteam/net/AsynHttpClient$TalkMsgSender;

    invoke-virtual {v1}, Lcom/lzx/iteam/net/AsynHttpClient$TalkMsgSender;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 549
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 550
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V
    .locals 3
    .param p1, "ccMsgStructure"    # Lcom/lzx/iteam/net/CcMsgStructure;

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    const/16 v1, 0x1f41

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/lzx/iteam/net/CcMsgStructure;->onError(ILjava/lang/Object;)V

    .line 582
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/net/AsynHttpClient;->mUserSender:Lcom/lzx/iteam/net/AsynHttpClient$UserMsgSender;

    invoke-virtual {v1}, Lcom/lzx/iteam/net/AsynHttpClient$UserMsgSender;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 580
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
