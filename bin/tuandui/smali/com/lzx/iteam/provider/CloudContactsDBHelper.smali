.class public Lcom/lzx/iteam/provider/CloudContactsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CloudContactsDBHelper.java"


# static fields
.field private static final CREATE_ALARM_WARN:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS alarm_warn_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, event_id TEXT, event_title TEXT, notice TEXT, alert_datetime TEXT, start_datetime TEXT, end_datetime TEXT, create_time TEXT, update_time TEXT, remark TEXT, boss_uid TEXT, delegate_user TEXT, delegater_username TEXT, address TEXT);"

.field private static final CREATE_APPROVAL_DATA:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS approval_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, my_user_id TEXT, user_id TEXT, user_name TEXT, user_image TEXT, approval_id TEXT, approval_group_id TEXT, approval_type INTEGER, approval_leave_type INTEGER, list_type INTEGER, approval_address TEXT, approval_start_time TEXT, approval_end_time TEXT, approval_start_part INTEGER, approval_end_part INTEGER, approval_day FLOAT, approval_reason TEXT, approve_admin TEXT, approve_admin_name TEXT, approve_admin_image TEXT, approval_done_time TEXT, approval_time TEXT, approval_status INTEGER);"

.field private static final CREATE_ATTENDANCE_CALENDAR:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS attendance_calendar_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, form_id TEXT, year TEXT, month TEXT, day TEXT, status TEXT, cheat TEXT, group_id TEXT, user_id TEXT);"

.field private static final CREATE_BLACKLIST_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS communication_rule (_id INTEGER PRIMARY KEY AUTOINCREMENT, phone_number TEXT NOT NULL, contact_name TEXT, pattern INTEGER NOT NULL, contact_id INTEGER );"

.field private static final CREATE_CALENDAR:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS calendar_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT, year TEXT, month TEXT, day TEXT, status TEXT, state TEXT);"

.field private static final CREATE_CHAT_GROUP:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS chatgroup_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, chatgroup_id TEXT NOT NULL, chatgroup_name TEXT NOT NULL, chatgroup_img TEXT NOT NULL, lastupdate_time TEXT ,last_msg_name TEXT,last_msg_content TEXT,user_type TEXT,creator_name TEXT,is_new TEXT,unread_count TEXT,member_count TEXT,type TEXT,is_active TEXT);"

.field private static final CREATE_CLOUD_GROUP:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS cloud_group (_id INTEGER PRIMARY KEY AUTOINCREMENT, group_id INTEGER NOT NULL, group_name TEXT, group_type INTEGER DEFAULT 0, contact_id TEXT, contact_count INTEGER DEFAULT 0, member_count INTEGER DEFAULT 0, group_img TEXT, update_time INTEGER DEFAULT 0,is_new TEXT,has_tags TEXT,user_type TEXT);"

.field private static final CREATE_CONTACT_MSG:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS contact_table ( _id INTEGER PRIMARY KEY AUTOINCREMENT, my_user_id TEXT, contact_name TEXT, contact_phone TEXT, contact_job TEXT, contact_group TEXT, contact_group_id TEXT );"

.field private static final CREATE_EVENT:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS event_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, event_id TEXT NOT NULL, event_type TEXT NOT NULL, event_name TEXT ,update_time TEXT ,user_type TEXT,has_read TEXT,create_time TEXT,user_id TEXT,user_name TEXT,member_count TEXT,event_title TEXT,content1 TEXT,init_title1 TEXT,url1 TEXT,content2 TEXT,init_title2 TEXT,url2 TEXT,content3 TEXT,init_title3 TEXT,url3 TEXT,has_read_count TEXT,attachment_thumb_image TEXT,attachment_ori_image TEXT,attachment_voice TEXT,attachment_file TEXT,reply_count TEXT,receiver TEXT,author TEXT,event_avatar TEXT,activity_time TEXT,end_time TEXT,activity_site TEXT,join_count TEXT,has_join TEXT,votes TEXT,is_qrcode TEXT,qrcode TEXT,my_userid TEXT,reply_last_name TEXT,reply_last_content TEXT,unread_count TEXT);"

.field private static final CREATE_EVENT_DRAFTS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS event_drafts_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT,event_id TEXT, event_type TEXT , event_type_name TEXT , event_title TEXT,event_receiver TEXT,event_time TEXT,content1 TEXT,init_title1 TEXT,content2 TEXT,init_title2 TEXT,content3 TEXT,init_title3 TEXT,attachment_thumb_image TEXT,attachment_ori_image TEXT,author TEXT,activity_time TEXT,end_time TEXT,is_qrcode TEXT,activity_site TEXT);"

.field private static final CREATE_EVENT_MODEL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS event_model_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT,event_id TEXT, event_type TEXT , event_type_name TEXT , event_title TEXT,event_receiver TEXT,event_time TEXT,content1 TEXT,init_title1 TEXT,content2 TEXT,init_title2 TEXT,content3 TEXT,init_title3 TEXT,attachment_thumb_image TEXT,attachment_ori_image TEXT);"

.field private static final CREATE_STATEDATA:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS state_table (state_id INTEGER PRIMARY KEY AUTOINCREMENT, state_text TEXT NOT NULL);"

.field private static final CREATE_TALK:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS talk_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, talk_id TEXT, user_id TEXT, user_name TEXT, user_img TEXT, talk_text TEXT, talk_thumb_image TEXT, talk_ori_image TEXT, talk_create_time TEXT, talk_update_time TEXT, talk_content_type TEXT, talk_content_key TEXT, talk_comments TEXT, talk_isPraise TEXT, talk_comments_list TEXT, talk_praises_list TEXT, talk_action TEXT);"

.field private static final CREATE_TALK_MY_MESSAGE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS talk_my_msg_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, talk_id TEXT, msg_type TEXT, msg_uid TEXT, msg_uname TEXT, talk_text TEXT, msg_uimg TEXT, msg_recv_uid TEXT, msg_recv_umane TEXT, msg_comment TEXT, msg_ctime TEXT, talk_thumb TEXT, talk_uname TEXT, talk_uimg TEXT, talk_uid TEXT, talk_time TEXT);"

.field private static final CREATE_USER_MSG:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT,user_name TEXT, user_img TEXT);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "clouddialer.db"

.field private static final DATABASE_VERSION:I = 0xa


# instance fields
.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    const-string v0, "clouddialer.db"

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 316
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 317
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 321
    const-string v0, "CREATE TABLE IF NOT EXISTS cloud_group (_id INTEGER PRIMARY KEY AUTOINCREMENT, group_id INTEGER NOT NULL, group_name TEXT, group_type INTEGER DEFAULT 0, contact_id TEXT, contact_count INTEGER DEFAULT 0, member_count INTEGER DEFAULT 0, group_img TEXT, update_time INTEGER DEFAULT 0,is_new TEXT,has_tags TEXT,user_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    const-string v0, "CREATE TABLE IF NOT EXISTS communication_rule (_id INTEGER PRIMARY KEY AUTOINCREMENT, phone_number TEXT NOT NULL, contact_name TEXT, pattern INTEGER NOT NULL, contact_id INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    const-string v0, "CREATE TABLE IF NOT EXISTS state_table (state_id INTEGER PRIMARY KEY AUTOINCREMENT, state_text TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 324
    const-string v0, "CREATE TABLE IF NOT EXISTS chatgroup_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, chatgroup_id TEXT NOT NULL, chatgroup_name TEXT NOT NULL, chatgroup_img TEXT NOT NULL, lastupdate_time TEXT ,last_msg_name TEXT,last_msg_content TEXT,user_type TEXT,creator_name TEXT,is_new TEXT,unread_count TEXT,member_count TEXT,type TEXT,is_active TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    const-string v0, "CREATE TABLE IF NOT EXISTS event_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, event_id TEXT NOT NULL, event_type TEXT NOT NULL, event_name TEXT ,update_time TEXT ,user_type TEXT,has_read TEXT,create_time TEXT,user_id TEXT,user_name TEXT,member_count TEXT,event_title TEXT,content1 TEXT,init_title1 TEXT,url1 TEXT,content2 TEXT,init_title2 TEXT,url2 TEXT,content3 TEXT,init_title3 TEXT,url3 TEXT,has_read_count TEXT,attachment_thumb_image TEXT,attachment_ori_image TEXT,attachment_voice TEXT,attachment_file TEXT,reply_count TEXT,receiver TEXT,author TEXT,event_avatar TEXT,activity_time TEXT,end_time TEXT,activity_site TEXT,join_count TEXT,has_join TEXT,votes TEXT,is_qrcode TEXT,qrcode TEXT,my_userid TEXT,reply_last_name TEXT,reply_last_content TEXT,unread_count TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    const-string v0, "CREATE TABLE IF NOT EXISTS event_model_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT,event_id TEXT, event_type TEXT , event_type_name TEXT , event_title TEXT,event_receiver TEXT,event_time TEXT,content1 TEXT,init_title1 TEXT,content2 TEXT,init_title2 TEXT,content3 TEXT,init_title3 TEXT,attachment_thumb_image TEXT,attachment_ori_image TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 327
    const-string v0, "CREATE TABLE IF NOT EXISTS event_drafts_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT,event_id TEXT, event_type TEXT , event_type_name TEXT , event_title TEXT,event_receiver TEXT,event_time TEXT,content1 TEXT,init_title1 TEXT,content2 TEXT,init_title2 TEXT,content3 TEXT,init_title3 TEXT,attachment_thumb_image TEXT,attachment_ori_image TEXT,author TEXT,activity_time TEXT,end_time TEXT,is_qrcode TEXT,activity_site TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 328
    const-string v0, "CREATE TABLE IF NOT EXISTS user_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT,user_name TEXT, user_img TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 329
    const-string v0, "CREATE TABLE IF NOT EXISTS contact_table ( _id INTEGER PRIMARY KEY AUTOINCREMENT, my_user_id TEXT, contact_name TEXT, contact_phone TEXT, contact_job TEXT, contact_group TEXT, contact_group_id TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    const-string v0, "CREATE TABLE IF NOT EXISTS talk_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, talk_id TEXT, user_id TEXT, user_name TEXT, user_img TEXT, talk_text TEXT, talk_thumb_image TEXT, talk_ori_image TEXT, talk_create_time TEXT, talk_update_time TEXT, talk_content_type TEXT, talk_content_key TEXT, talk_comments TEXT, talk_isPraise TEXT, talk_comments_list TEXT, talk_praises_list TEXT, talk_action TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    const-string v0, "CREATE TABLE IF NOT EXISTS talk_my_msg_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, talk_id TEXT, msg_type TEXT, msg_uid TEXT, msg_uname TEXT, talk_text TEXT, msg_uimg TEXT, msg_recv_uid TEXT, msg_recv_umane TEXT, msg_comment TEXT, msg_ctime TEXT, talk_thumb TEXT, talk_uname TEXT, talk_uimg TEXT, talk_uid TEXT, talk_time TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 332
    const-string v0, "CREATE TABLE IF NOT EXISTS alarm_warn_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, event_id TEXT, event_title TEXT, notice TEXT, alert_datetime TEXT, start_datetime TEXT, end_datetime TEXT, create_time TEXT, update_time TEXT, remark TEXT, boss_uid TEXT, delegate_user TEXT, delegater_username TEXT, address TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    const-string v0, "CREATE TABLE IF NOT EXISTS calendar_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT, year TEXT, month TEXT, day TEXT, status TEXT, state TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 334
    const-string v0, "CREATE TABLE IF NOT EXISTS attendance_calendar_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, form_id TEXT, year TEXT, month TEXT, day TEXT, status TEXT, cheat TEXT, group_id TEXT, user_id TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 335
    const-string v0, "CREATE TABLE IF NOT EXISTS approval_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, my_user_id TEXT, user_id TEXT, user_name TEXT, user_image TEXT, approval_id TEXT, approval_group_id TEXT, approval_type INTEGER, approval_leave_type INTEGER, list_type INTEGER, approval_address TEXT, approval_start_time TEXT, approval_end_time TEXT, approval_start_part INTEGER, approval_end_part INTEGER, approval_day FLOAT, approval_reason TEXT, approve_admin TEXT, approve_admin_name TEXT, approve_admin_image TEXT, approval_done_time TEXT, approval_time TEXT, approval_status INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 340
    const-string v0, "DROP TABLE IF EXISTS cloud_group;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    const-string v0, "DROP TABLE IF EXISTS communication_rule;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    const-string v0, "DROP TABLE IF EXISTS state_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    const-string v0, "DROP TABLE IF EXISTS chatgroup_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    const-string v0, "DROP TABLE IF EXISTS event_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 345
    const-string v0, "DROP TABLE IF EXISTS event_model_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    const-string v0, "DROP TABLE IF EXISTS event_drafts_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 347
    const-string v0, "DROP TABLE IF EXISTS user_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    const-string v0, "DROP TABLE IF EXISTS contact_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    const-string v0, "DROP TABLE IF EXISTS talk_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    const-string v0, "DROP TABLE IF EXISTS talk_my_msg_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    const-string v0, "DROP TABLE IF EXISTS alarm_warn_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    const-string v0, "DROP TABLE IF EXISTS calendar_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string v0, "DROP TABLE IF EXISTS attendance_calendar_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    const-string v0, "DROP TABLE IF EXISTS approval_table;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 356
    iget-object v0, p0, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/lzx/iteam/provider/CloudContactsDBHelper;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "need_write_status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 359
    :cond_0
    return-void
.end method
