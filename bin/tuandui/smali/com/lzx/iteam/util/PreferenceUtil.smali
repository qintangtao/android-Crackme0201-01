.class public Lcom/lzx/iteam/util/PreferenceUtil;
.super Ljava/lang/Object;
.source "PreferenceUtil.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/SharedPreferences;


# static fields
.field public static final APPROVAL_GROUP_ID:Ljava/lang/String; = "approval_group_id"

.field public static final ATTENDANCE_GROUP_ID:Ljava/lang/String; = "attendance_group_id"

.field public static final BLOCK_MODE:Ljava/lang/String; = "blockmode"

.field private static final BOOLEAN_CLASSNAME:I = 0x3

.field public static final CALL_CONNECT_VIBRATE:Ljava/lang/String; = "connect_vibrate"

.field public static final CALL_HANGUP_VIBRATE:Ljava/lang/String; = "hangup_vibrate"

.field public static final CALL_STATUS:Ljava/lang/String; = "call_status"

.field public static final CARD_RECEIVED:Ljava/lang/String; = "card_received"

.field public static final CITY_GROUP_TOTAL_COUNT:Ljava/lang/String; = "city_group_total_count"

.field public static final CLEAR_TIME:Ljava/lang/String; = "clear_time"

.field public static final CLIENT_USEID:Ljava/lang/String; = "useid"

.field private static CLOUD_2_CONTACT_FILE:Ljava/lang/String; = null

.field public static final CLOUD_GROUP_TYPE:Ljava/lang/String; = "cloud_group_type"

.field public static final CLOUD_ID_2_CONTACT_ID:Ljava/lang/String; = "cloud_id_2_contact_id"

.field public static final CLOUD_PHONE_2_USEID:Ljava/lang/String; = "cloud_phone_2_useid"

.field public static final CLOUD_PUSH_GROUPID:Ljava/lang/String; = "cloudGroupId"

.field public static final CLOUD_REGIST_USER:Ljava/lang/String; = "regist_user"

.field private static CONFIGFILENAME:Ljava/lang/String; = null

.field public static final CONTACT_COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final CONTACT_DELETE:Ljava/lang/String; = "contact_deleted"

.field public static final CONTACT_FONT_SIZE:Ljava/lang/String; = "font_size"

.field public static final CONTACT_ID_2_CLOUD_ID:Ljava/lang/String; = "contact_id_2_cloud_id"

.field public static final CONTACT_ID_2_DIST_STATUS:Ljava/lang/String; = "contact_id_2_dist_status"

.field public static final CONTACT_ID_2_TEXT_STATUS:Ljava/lang/String; = "contact_id_2_text_status"

.field public static final CONTACT_INSERT:Ljava/lang/String; = "contact_insert"

.field public static final CONTACT_INTERNATIONAL_PRFIX_CODE:Ljava/lang/String; = "international_prefix_code"

.field public static final CONTACT_IPCALL:Ljava/lang/String; = "ip_call"

.field public static final CONTACT_IPCALL2:Ljava/lang/String; = "ip_call2"

.field public static final CONTACT_IPCALL_POSTFIX:Ljava/lang/String; = "ip_call_postfix"

.field public static final CONTACT_IPCALL_POSTFIX2:Ljava/lang/String; = "ip_call_postfix2"

.field public static final CONTACT_ISDISPLAYPHOTO:Ljava/lang/String; = "displayphoto"

.field public static final CONTACT_IS_CALLBACKTOAPP:Ljava/lang/String; = "iscallback_to_app"

.field public static final CONTACT_IS_HAVESOUND:Ljava/lang/String; = "ishavesound"

.field public static final CONTACT_IS_KEYBOARDLOCK:Ljava/lang/String; = "iskeyboardlock"

.field public static final CONTACT_IS_THROWCALL:Ljava/lang/String; = "isthrow_call"

.field public static final CONTACT_KEYBOARD_LAYOUTORIENTATION:Ljava/lang/String; = "keyboard_layout_orientation"

.field public static final CONTACT_KEYBOARD_PACKAGENAME:Ljava/lang/String; = "keyboard_packagename"

.field public static final CONTACT_KEYBOARD_STYLE:Ljava/lang/String; = "keyboard_style"

.field public static final CONTACT_KEYBOARD_THEMECOLOR:Ljava/lang/String; = "keyboard_themecolor"

.field public static final CONTACT_NAME_SORT:Ljava/lang/String; = "name_sort"

.field public static final CONTACT_NUMBERS:Ljava/lang/String; = "contact_numbers"

.field public static final CONTACT_ON_SDCARD:Ljava/lang/String; = "contact_on_sdcard"

.field public static final CONTACT_PRECITY_CODE:Ljava/lang/String; = "pre_city_code"

.field public static final CONTACT_SHOW_CONTENT:Ljava/lang/String; = "show_content"

.field public static final CONTACT_UPDATE:Ljava/lang/String; = "contact_updated"

.field public static final CUSTOM_EVENT:Ljava/lang/String; = "custom_event"

.field public static final DISPLAY_NAME_ONLY:Ljava/lang/String; = "display_name_only"

.field public static final EMERGENCY_MODE_TOGGLE:Ljava/lang/String; = "emergency_mode_toggle"

.field public static final END_CALL_MESSAGE:Ljava/lang/String; = "end_call_message"

.field public static final FIRST_GUIDE_SHOW_WEIBO:Ljava/lang/String; = "first_guide_show_weibo"

.field public static final FIRST_LETTER_STRING:Ljava/lang/String; = "firstletterarray"

.field public static final FIRST_START:Ljava/lang/String; = "first_started"

.field private static final FLOAT_CLASSNAME:I = 0x2

.field public static final FLOAT_WINDOW:Ljava/lang/String; = "float_window"

.field public static final GROUP_MODE:Ljava/lang/String; = "group_mode"

.field public static final GROUP_SELECTED_CITY:Ljava/lang/String; = "group_selected_city"

.field public static final GROUP_SELECTED_GROUP:Ljava/lang/String; = "group_selected_group"

.field public static final GROUP_SELECTED_NAME:Ljava/lang/String; = "group_selected_name"

.field public static final HANGUP:Ljava/lang/String; = "hangup"

.field public static final HANZI_PINYIN:Ljava/lang/String; = "hanziPinyin"

.field public static final HORI_KEYBOARD_LAST_LEFT:Ljava/lang/String; = "horiBoardLastLeft"

.field public static final HOST_NAME:Ljava/lang/String; = "hostname"

.field public static final INCOMING_CALL_2_SMS:Ljava/lang/String; = "incoming_call_2_sms"

.field public static final INCOMING_CALL_2_SMS_TOGGLE:Ljava/lang/String; = "incoming_call_2_sms_toggle"

.field private static final INTEGER_CLASSNAME:I = 0x0

.field public static final ISREDIAL:Ljava/lang/String; = "isredial"

.field public static final IS_FIRST_START:Ljava/lang/String; = "first_started"

.field public static final IS_T9:Ljava/lang/String; = "is_t9_vertial"

.field public static final IS_TWO_SIM:Ljava/lang/String; = "istwosim"

.field public static final KEYPAD_AT_RIGHT:Ljava/lang/String; = "keypad_at_right"

.field public static final LAST_CALL_CONTACTID:Ljava/lang/String; = "last_call_contactid"

.field public static final LAST_NAME_TOTAL_COUNT:Ljava/lang/String; = "last_name_total_count"

.field public static final LAST_RUN_VERSIONCODE:Ljava/lang/String; = "lastRunVersionCode"

.field public static final LATEST_VERSION:Ljava/lang/String; = "latest_version"

.field public static final LATEST_VERSION_SCHEDULE:Ljava/lang/String; = "latest_version_schedule"

.field public static final LOCAL_CLOUD_RELATIONSHIP_READY:Ljava/lang/String; = "local_cloud_relationship_ready"

.field private static final LONG_CLASSNAME:I = 0x1

.field public static final LONG_CLICK_DIAL:Ljava/lang/String; = "quick_dial"

.field public static final MULTI_CALL_FLAG:Ljava/lang/String; = "multi_call_flag"

.field public static final MY_STATUS:Ljava/lang/String; = "my_status"

.field public static final MY_STATUS_DISTURB:Ljava/lang/String; = "my_status_disturb"

.field public static final MY_STATUS_ID:Ljava/lang/String; = "my_status_id"

.field public static final MY_STATUS_SELECTED:Ljava/lang/String; = "my_status_check"

.field public static final MY_STATUS_SYNC_DISTURB:Ljava/lang/String; = "my_status_sync_disturb"

.field public static final NAMECARD_AVATAR:Ljava/lang/String; = "avatar"

.field public static final NAMECARD_CHANGED:Ljava/lang/String; = "namecard_changed"

.field public static final NAMECARD_CONTACTID:Ljava/lang/String; = "contactid"

.field public static final NAME_CARD_NUMBER:Ljava/lang/String; = "bitset"

.field public static final NEED_WRITE_STATUS:Ljava/lang/String; = "need_write_status"

.field public static final NORMAL_CALL_FLAG:Ljava/lang/String; = "normal_call_flag"

.field public static final NORMAL_CALL_FLAG_SC:Ljava/lang/String; = "normal_call_flag_sc"

.field private static OBJECT_FILE_NAME:Ljava/lang/String; = null

.field public static final PERSISTED_CONTACT_ID:Ljava/lang/String; = "all_persist_contactId"

.field public static final PUSH_CODE:Ljava/lang/String; = "pushCode"

.field public static final ROAMING_CALL_BACK_TOGGLE:Ljava/lang/String; = "roaming_call_back_toggle"

.field public static final SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final SETTING_INIT:Ljava/lang/String; = "setting_init"

.field public static final SHARECARD_CONTACTID:Ljava/lang/String; = "share_contactid"

.field public static final SHARE_POLICY:Ljava/lang/String; = "sharepolicy"

.field public static final SHOW_PEOPLE_NO_PHONENUMBER:Ljava/lang/String; = "show_people_withphonenumber"

.field public static final SHOW_TIMES_CONTACTED:Ljava/lang/String; = "show_times_contacted"

.field public static final SHOW_WEIBO_NOT_SET:I = 0x0

.field public static final SHOW_WEIBO_SETTED:I = 0x2

.field public static final SHOW_WEIBO_TO_SHOW:I = 0x1

.field public static final SMS_FORWORD:Ljava/lang/String; = "sms_forword"

.field public static final SMS_FORWORD_TOGGLE:Ljava/lang/String; = "sms_forword_toggle"

.field public static final SMS_RECIVE:Ljava/lang/String; = "sms_recive"

.field private static final STRING_CLASSNAME:I = 0x4

.field public static final SYNC_UP_OVER:Ljava/lang/String; = "synupFlag"

.field public static final TEAM_SID:Ljava/lang/String; = "team_sid"

.field public static final TIME_EXPIRED:Ljava/lang/String; = "time_expired"

.field public static final TIME_SPINNER_SELECTED:Ljava/lang/String; = "time_spinner_selected"

.field public static final TIME_START_HOUR:Ljava/lang/String; = "time_start_hour"

.field public static final TIME_START_MINUTE:Ljava/lang/String; = "time_start_minute"

.field public static final TIME_STOP_HOUR:Ljava/lang/String; = "time_stop_hour"

.field public static final TIME_STOP_MINUTE:Ljava/lang/String; = "time_stop_minute"

.field public static final TJ_ENTRANCE:Ljava/lang/String; = "tj_entrance"

.field public static final TWO_SIM_DWONLOAD_URL:Ljava/lang/String; = "twosimdownloadurl"

.field public static final TWO_SIM_FACTORY:Ljava/lang/String; = "twosimfactory"

.field public static final TWO_SIM_MODEL:Ljava/lang/String; = "twosimmodel"

.field public static final TWO_SIM_PACKAGE:Ljava/lang/String; = "twosimpackage"

.field public static final TWO_SIM_TYPE:Ljava/lang/String; = "twosimtype"

.field public static final TX_WEIBO_SECRET:Ljava/lang/String; = "tx_weibo_secret"

.field public static final TX_WEIBO_TOKEN:Ljava/lang/String; = "tx_weibo_token"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_PASS:Ljava/lang/String; = "user_pass"

.field public static final USER_PHONE:Ljava/lang/String; = "user_phone"

.field public static final USE_STATUS_SMS:Ljava/lang/String; = "use_status_sms"

.field public static final VERTICAL_KEYBOARD_LAST_TOP:Ljava/lang/String; = "verticalBoardLastTop"

.field public static final VIP_GROUP_ALL_CONTACTS:I = 0x3ea

.field public static final VIP_GROUP_EVERYBODY:I = 0x3eb

.field public static final VIP_GROUP_EVERYBODY_BLOCK:I = 0x3e9

.field public static final VIP_GROUP_GROUP_IDS:Ljava/lang/String; = "vip_group_group_ids"

.field public static final VIP_GROUP_MODE:Ljava/lang/String; = "vip_group_mode"

.field public static final VIP_GROUP_USER_GROUP:I = 0x3e8

.field private static sPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCloudObjectPreference:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;

.field private mListenerForKey:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mObjectPreference:Landroid/content/SharedPreferences;

.field private mPreference:Landroid/content/SharedPreferences;

.field private maptypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    const-string v0, "config"

    sput-object v0, Lcom/lzx/iteam/util/PreferenceUtil;->CONFIGFILENAME:Ljava/lang/String;

    .line 258
    const-string v0, "contacts"

    sput-object v0, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    .line 260
    const-string v0, "cloud_2_contact_file"

    sput-object v0, Lcom/lzx/iteam/util/PreferenceUtil;->CLOUD_2_CONTACT_FILE:Ljava/lang/String;

    .line 292
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const-string v0, "PreferenceUtil"

    iput-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->TAG:Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->maptypes:Ljava/util/Map;

    .line 302
    iput-object p1, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mContext:Landroid/content/Context;

    .line 306
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/lzx/iteam/util/PreferenceUtil;->CONFIGFILENAME:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    .line 309
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 310
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->maptypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->maptypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->maptypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->maptypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->maptypes:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mListenerForKey:Ljava/util/concurrent/ConcurrentHashMap;

    .line 318
    return-void
.end method

.method private ensureCloudPreference()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mCloudObjectPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/lzx/iteam/util/PreferenceUtil;->CLOUD_2_CONTACT_FILE:Ljava/lang/String;

    .line 628
    const/4 v2, 0x0

    .line 627
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mCloudObjectPreference:Landroid/content/SharedPreferences;

    .line 630
    :cond_0
    return-void
.end method

.method private ensurePreference()V
    .locals 3

    .prologue
    .line 833
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mObjectPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mObjectPreference:Landroid/content/SharedPreferences;

    .line 836
    :cond_0
    return-void
.end method

.method private getCloudObject(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->ensureCloudPreference()V

    .line 634
    iget-object v1, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mCloudObjectPreference:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    const-class v1, Lcom/lzx/iteam/util/PreferenceUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lzx/iteam/util/PreferenceUtil;->sPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/PreferenceUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/util/PreferenceUtil;->sPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 298
    :cond_0
    sget-object v0, Lcom/lzx/iteam/util/PreferenceUtil;->sPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->ensurePreference()V

    .line 848
    iget-object v2, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mObjectPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 851
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 852
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .prologue
    .line 429
    iget-object v2, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 431
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 433
    invoke-direct {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->ensurePreference()V

    .line 434
    iget-object v2, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mObjectPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 435
    .local v1, "objectEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 436
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 437
    return-void
.end method

.method public clearLocalGid()V
    .locals 3

    .prologue
    .line 363
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "local_gid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 365
    :cond_0
    return-void
.end method

.method public clearObjectAll()V
    .locals 2

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->ensurePreference()V

    .line 442
    iget-object v1, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mObjectPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 443
    .local v0, "objectEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 444
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 445
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsObject(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->ensurePreference()V

    .line 840
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mObjectPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const/4 v0, 0x1

    .line 843
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delCloudContact()V
    .locals 2

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->ensureCloudPreference()V

    .line 640
    iget-object v1, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mCloudObjectPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 641
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 642
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 643
    return-void
.end method

.method public delObject(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 879
    iget-object v2, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 880
    .local v0, "MyPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 883
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 884
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 885
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 887
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v1, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public deletePerson(J)V
    .locals 7
    .param p1, "contactId"    # J

    .prologue
    .line 690
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 693
    .local v0, "MyPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 696
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 697
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 700
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public deletePerson(Ljava/lang/String;)V
    .locals 5
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 705
    iget-object v2, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 706
    .local v0, "MyPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 709
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 710
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 711
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 713
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "classtype":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 469
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "classname":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/util/PreferenceUtil;->maptypes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 471
    .local v2, "type":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 473
    .local v1, "result":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 475
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 497
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 477
    .restart local v1    # "result":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 478
    .local v1, "result":Ljava/lang/Integer;
    goto :goto_0

    .line 480
    .local v1, "result":Ljava/lang/Object;
    :pswitch_1
    iget-object v3, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v3, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 481
    .local v1, "result":Ljava/lang/Long;
    goto :goto_0

    .line 483
    .local v1, "result":Ljava/lang/Object;
    :pswitch_2
    iget-object v3, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 484
    .local v1, "result":Ljava/lang/Float;
    goto :goto_0

    .line 486
    .local v1, "result":Ljava/lang/Object;
    :pswitch_3
    iget-object v3, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 487
    .local v1, "result":Ljava/lang/Boolean;
    goto :goto_0

    .line 489
    .local v1, "result":Ljava/lang/Object;
    :pswitch_4
    iget-object v3, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->ensurePreference()V

    .line 872
    iget-object v1, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mObjectPreference:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 549
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getByteArray(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 654
    sget-object v0, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCloudContact(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "ret":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const/4 v1, 0x0

    .line 621
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->objectWithString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 554
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getGidStr()Ljava/lang/String;
    .locals 9

    .prologue
    .line 368
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "local_gid"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 370
    const-string v7, ""

    .line 390
    :goto_0
    return-object v7

    .line 373
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 376
    .local v4, "fw":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    .end local v4    # "fw":Ljava/io/FileReader;
    .local v5, "fw":Ljava/io/FileReader;
    const/4 v1, -0x1

    .line 378
    .local v1, "count":I
    const/16 v7, 0x64

    :try_start_1
    new-array v0, v7, [C

    .line 379
    .local v0, "bc":[C
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 385
    if-eqz v5, :cond_4

    .line 386
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 390
    .end local v0    # "bc":[C
    .end local v1    # "count":I
    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    :cond_1
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 380
    .end local v4    # "fw":Ljava/io/FileReader;
    .restart local v0    # "bc":[C
    .restart local v1    # "count":I
    .restart local v5    # "fw":Ljava/io/FileReader;
    :cond_2
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 382
    .end local v0    # "bc":[C
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 383
    .end local v1    # "count":I
    .end local v5    # "fw":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "fw":Ljava/io/FileReader;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 385
    if-eqz v4, :cond_1

    .line 386
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 387
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 384
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 385
    :goto_4
    if-eqz v4, :cond_3

    .line 386
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 388
    :cond_3
    :goto_5
    throw v7

    .line 387
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fw":Ljava/io/FileReader;
    .restart local v0    # "bc":[C
    .restart local v1    # "count":I
    .restart local v5    # "fw":Ljava/io/FileReader;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    goto :goto_2

    .line 384
    .end local v0    # "bc":[C
    .end local v4    # "fw":Ljava/io/FileReader;
    .restart local v5    # "fw":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileReader;
    .restart local v4    # "fw":Ljava/io/FileReader;
    goto :goto_4

    .line 382
    .end local v1    # "count":I
    :catch_4
    move-exception v2

    goto :goto_3
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 564
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 861
    sget-object v1, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "ret":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    const/4 v1, 0x0

    .line 866
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->objectWithString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getPerson(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 5
    .param p1, "contactId"    # J

    .prologue
    .line 658
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getByteArray(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "personString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 661
    .local v1, "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    :try_start_0
    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 662
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 663
    .local v0, "array":[B
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->parseFrom([B)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 670
    .end local v0    # "array":[B
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 665
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getPerson(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 4
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getByteArray(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, "personString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 677
    .local v1, "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    :try_start_0
    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 678
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 679
    .local v0, "array":[B
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->parseFrom([B)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 686
    .end local v0    # "array":[B
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 681
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getPreference()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    .local p2, "arg1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v3, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mListenerForKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 522
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    if-nez v0, :cond_1

    .line 528
    :cond_0
    return-void

    .line 523
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 524
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 526
    .local v2, "listener":Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCloudContactListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->ensureCloudPreference()V

    .line 592
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mCloudObjectPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 593
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 575
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Ljava/lang/String;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 503
    iget-object v1, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mListenerForKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 504
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v1, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mListenerForKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeInLocalGroup(Ljava/lang/String;)V
    .locals 6
    .param p1, "gid"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getGidStr()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "idStr":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "idArr":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-lt v0, v4, :cond_0

    .line 335
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->saveGidStr(Ljava/lang/String;)V

    .line 336
    return-void

    .line 330
    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 402
    const/4 v2, 0x0

    .line 403
    .local v2, "result":Z
    iget-object v3, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 405
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 406
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 421
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 425
    :goto_1
    return v2

    .line 407
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 408
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 409
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 410
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 411
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 412
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 413
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 414
    check-cast p2, Ljava/lang/String;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 416
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4
    const-string v3, "PreferenceUtil"

    const-string v4, "Editor put error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    .end local p2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 423
    .local v1, "error":Ljava/lang/StackOverflowError;
    const-string v3, "PreferenceUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "save: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public saveByteArray(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 646
    sget-object v0, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public saveCloudContact(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 603
    invoke-static {p2}, Lcom/lzx/iteam/util/StringUtil;->stringWithObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "ret":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->ensureCloudPreference()V

    .line 606
    iget-object v3, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mCloudObjectPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 608
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 610
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public saveGidStr(Ljava/lang/String;)V
    .locals 6
    .param p1, "gidStr"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "local_gid"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    const/4 v2, 0x0

    .line 350
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 356
    if-eqz v3, :cond_3

    .line 357
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v2, v3

    .line 360
    .end local v3    # "fw":Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 354
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    if-eqz v2, :cond_1

    .line 357
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 358
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 355
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 356
    :goto_2
    if-eqz v2, :cond_2

    .line 357
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 359
    :cond_2
    :goto_3
    throw v4

    .line 358
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_0

    .line 355
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 353
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public saveObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 584
    invoke-static {p2}, Lcom/lzx/iteam/util/StringUtil;->stringWithObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "ret":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    sget-object v1, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_0
    return-void
.end method

.method public saveObjectSring(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 650
    sget-object v0, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public savePerson(JLcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)V
    .locals 3
    .param p1, "contactId"    # J
    .param p3, "person"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    .prologue
    .line 716
    invoke-virtual {p3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/util/PreferenceUtil;->getPerson(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/util/PreferenceUtil;->deletePerson(J)V

    .line 720
    :cond_0
    sget-object v1, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method public savePerson(JLcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;)V
    .locals 19
    .param p1, "contactId"    # J
    .param p3, "memory"    # Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;

    .prologue
    .line 725
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v3

    .line 726
    .local v3, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->fullName:Ljava/lang/String;

    if-nez v14, :cond_0

    .line 727
    const-string v14, ""

    move-object/from16 v0, p3

    iput-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->fullName:Ljava/lang/String;

    .line 729
    :cond_0
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setDisplayName(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 730
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->photoId:J

    invoke-virtual {v3, v14, v15}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setPhotoId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 731
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->rawId:J

    invoke-virtual {v3, v14, v15}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setRawId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 732
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->organization:Ljava/lang/String;

    if-nez v14, :cond_1

    .line 733
    const-string v14, ""

    move-object/from16 v0, p3

    iput-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->organization:Ljava/lang/String;

    .line 735
    :cond_1
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->organization:Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setOrganization(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 737
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->email:Ljava/lang/String;

    if-nez v14, :cond_2

    .line 738
    const-string v14, ""

    move-object/from16 v0, p3

    iput-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->email:Ljava/lang/String;

    .line 740
    :cond_2
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->email:Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 742
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->fuzzyString:Ljava/lang/String;

    if-nez v14, :cond_3

    .line 743
    const-string v14, ""

    move-object/from16 v0, p3

    iput-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->fuzzyString:Ljava/lang/String;

    .line 745
    :cond_3
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->fuzzyString:Ljava/lang/String;

    invoke-virtual {v3, v14}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setFuzzyString(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 747
    move-object/from16 v0, p3

    iget v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->contactedNumber:I

    invoke-virtual {v3, v14}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setContactedNumber(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 748
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->version:J

    invoke-virtual {v3, v14, v15}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setVersion(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 750
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumber:Ljava/util/ArrayList;

    if-eqz v14, :cond_5

    .line 751
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumber:Ljava/util/ArrayList;

    .line 752
    .local v10, "phoneNumber":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_9

    .line 759
    .end local v10    # "phoneNumber":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumberArea:Ljava/util/ArrayList;

    if-eqz v14, :cond_7

    .line 760
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumberArea:Ljava/util/ArrayList;

    .line 761
    .local v11, "phoneNumberArea":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_a

    .line 769
    .end local v11    # "phoneNumberArea":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->groupIdSet:Ljava/util/HashSet;

    if-eqz v14, :cond_8

    .line 770
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->groupIdSet:Ljava/util/HashSet;

    .line 771
    .local v6, "hashIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 772
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_b

    .line 778
    .end local v6    # "hashIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_8
    invoke-virtual {v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v8

    .line 779
    .local v8, "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-virtual {v8}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->toString()Ljava/lang/String;

    move-result-object v13

    .line 781
    .local v13, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->parseFrom([B)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_3
    invoke-virtual {v8}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->toByteArray()[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    .line 790
    .local v12, "result":Ljava/lang/String;
    sget-object v14, Lcom/lzx/iteam/util/PreferenceUtil;->OBJECT_FILE_NAME:Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v12}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void

    .line 752
    .end local v8    # "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .end local v12    # "result":Ljava/lang/String;
    .end local v13    # "str":Ljava/lang/String;
    .restart local v10    # "phoneNumber":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 753
    .local v9, "phoneElement":Ljava/lang/String;
    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 754
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v15

    invoke-virtual {v15, v9}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->setNumber(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addPhone(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto :goto_0

    .line 761
    .end local v9    # "phoneElement":Ljava/lang/String;
    .end local v10    # "phoneNumber":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "phoneNumberArea":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 762
    .local v2, "areaElement":Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 763
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v15

    invoke-virtual {v15, v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->setArea(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addPhoneNumberArea(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto :goto_1

    .line 773
    .end local v2    # "areaElement":Ljava/lang/String;
    .end local v11    # "phoneNumberArea":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "hashIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 774
    .local v5, "groupId":Ljava/lang/Long;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->setGroupId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addGroupIdSet(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto :goto_2

    .line 784
    .end local v5    # "groupId":Ljava/lang/Long;
    .end local v6    # "hashIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v8    # "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .restart local v13    # "str":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 786
    .local v4, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v4}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_3
.end method

.method public unregisterCloudContactListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->ensureCloudPreference()V

    .line 597
    iget-object v0, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mCloudObjectPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 598
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 580
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Ljava/lang/String;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 514
    iget-object v1, p0, Lcom/lzx/iteam/util/PreferenceUtil;->mListenerForKey:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 515
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 518
    :cond_0
    return-void
.end method
