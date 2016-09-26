.class public Lcom/lzx/iteam/CloudDialerActivity;
.super Lcom/lzx/iteam/BaseActivity;
.source "CloudDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;,
        Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;,
        Lcom/lzx/iteam/CloudDialerActivity$CloudCompartor;,
        Lcom/lzx/iteam/CloudDialerActivity$ListStatus;,
        Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;,
        Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lzx$iteam$CloudDialerActivity$ListStatus:[I = null

.field public static final CLOUD_SEARCH_IDLE:I = 0x64

.field public static final CLOUD_SEARCH_MSG:I = 0xc8

.field public static final CLOUD_SEARCH_PENDING_SEND:I = 0x65

.field public static final CLOUD_SEARCH_SEND_OUT:I = 0x66

.field public static final DATA:Ljava/lang/String; = "DATA"

.field public static final DISPLAY_GROUP_BUTTON_ALLCONTACTS:J = -0x65L

.field public static final DISPLAY_GROUP_BUTTON_NOGROUP:J = -0x66L

.field public static final ERROR_PARSE:I = 0x3e9

.field private static final MSG_ADD_RECEIVER_TO_EVENT:I = 0xbc1

.field private static final MSG_CHATGROUP_ADD:I = 0xbbd

.field private static final MSG_CHATGROUP_ADD_MEMBER:I = 0xbc2

.field private static final MSG_CONTACT_ADDLIST:I = 0xbba

.field private static final MSG_CONTACT_APPEND_LIST:I = 0xbbb

.field public static final MSG_CONTACT_GETLIST:I = 0xbb8

.field private static final MSG_GET_NAMECARD:I = 0x6fd

.field private static final MSG_GROUP_CONTACT:I = 0xbb9

.field private static final MSG_GROUP_DELETE_MEMBER:I = 0xbc0

.field private static final MSG_GROUP_MANAGER:I = 0xbbf

.field private static final MSG_SCHEDULE_ADD_MANAGER:I = 0xbc3

.field private static final MSG_SET_CONTACT:I = 0xbbe

.field public static final RAW_CONTACTS_WHERE:Ljava/lang/String; = "data1=? and mimetype=\'vnd.android.cursor.item/group_membership\'"

.field public static final RAW_PROJECTION:[Ljava/lang/String;

.field private static final REQ_DOWNLOAD_SKIN:I = 0x12c

.field public static final STARTUP_TRACE:Z

.field public static instance:Lcom/lzx/iteam/CloudDialerActivity;

.field public static isShowChange:Z

.field public static isSingleChoose:Z

.field public static mBatchOperationType:I

.field public static mIsLoad:Z

.field public static mKeyBoardMainContainer:Landroid/widget/LinearLayout;

.field public static mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

.field public static mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

.field public static recordintent:Landroid/content/Intent;

.field public static sCloudSearch:I

.field public static selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;


# instance fields
.field public final MSG_ADD_CONTACTS:I

.field private arg1:I

.field private arg2:I

.field private attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

.field changebundle:Landroid/os/Bundle;

.field public chatContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;"
        }
    .end annotation
.end field

.field chatGroupId:Ljava/lang/String;

.field chatGroupName:Ljava/lang/String;

.field public chooseelement:Lcom/lzx/iteam/treeview/Element;

.field public clickPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public contactCount:I

.field public contactId:Ljava/lang/String;

.field contactedPeople:I

.field public currentPosition:I

.field eventHint1:Ljava/lang/String;

.field eventHint2:Ljava/lang/String;

.field eventHint3:Ljava/lang/String;

.field eventId:Ljava/lang/String;

.field eventPart1:Ljava/lang/String;

.field eventPart2:Ljava/lang/String;

.field eventPart3:Ljava/lang/String;

.field eventReceiver:Ljava/lang/String;

.field eventTheme:Ljava/lang/String;

.field eventTmpId:Ljava/lang/String;

.field eventTypeId:Ljava/lang/String;

.field eventTypeName:Ljava/lang/String;

.field private flagSize:I

.field gid:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public groupImg:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field public groupType:I

.field handler:Landroid/os/Handler;

.field private horizonShadow:Landroid/graphics/drawable/GradientDrawable;

.field private horizonShadowView:Landroid/view/View;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private volatile isLeftAnimation:Z

.field isNote:Ljava/lang/String;

.field private volatile isRightAnimation:Z

.field public isTextLoad:Z

.field ivChange:Landroid/widget/ImageView;

.field private leftShadow:Landroid/graphics/drawable/GradientDrawable;

.field private leftShadowView:Landroid/view/View;

.field llChange:Landroid/widget/LinearLayout;

.field public lockPlayerId:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mAddContactsWin:Landroid/widget/PopupWindow;

.field private mAllContactId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundQueryHandler:Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;

.field private mBatchOperitonTitle:Landroid/widget/TextView;

.field private mBatchOpertionLayout:Landroid/widget/LinearLayout;

.field private mBtnCancel:Landroid/widget/TextView;

.field private mBtnSend:Landroid/widget/TextView;

.field private mBundle:Landroid/os/Bundle;

.field public mCbSelectAll:Landroid/widget/CheckBox;

.field private mCheckBoxStatus:I

.field public mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field public mCloudGid:J

.field public mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

.field public mCloudHandler:Landroid/os/Handler;

.field private mCloudUser:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

.field private mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsListView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field public mCurrentPage:I

.field private mDialog:Landroid/app/Dialog;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mEventData:Lcom/lzx/iteam/bean/EventListData;

.field private mFirstQuery:Z

.field public mFontSizeValue:I

.field private mGroupID:Ljava/lang/Long;

.field private mHandler:Landroid/os/Handler;

.field private mHelpSlipKey:Landroid/widget/ImageView;

.field private mHelpStructureAdd:Landroid/widget/ImageView;

.field public mHelpStructureEdit:Landroid/widget/ImageView;

.field public mHorizSkin:Lcom/lzx/iteam/bean/SkinHorizData;

.field public mIfBatchOperation:Z

.field public mIfShowPeopleNoPhone:Z

.field public mInputTextQwerty:Ljava/lang/String;

.field public mInputTextT9:Ljava/lang/String;

.field private mIsAddGroupMember:Z

.field private mIsCreate:Z

.field private mIsDisplayUnderPanel:Z

.field private mIsHaveTone:I

.field public mIsKeyBoardLock:Z

.field public mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

.field public mKeyboardOri:I

.field private mKeyboardThemeColor:I

.field public mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

.field private mKeypadAtRight:Z

.field private mKeypadHoriContainer:Landroid/view/View;

.field private mKeypadVertContainer:Landroid/view/View;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutSelectAll:Landroid/widget/LinearLayout;

.field private mListDownY:F

.field private mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

.field public mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

.field private mLlHelp:Landroid/widget/LinearLayout;

.field private mLoading:Z

.field public mLongClickDial:Z

.field private mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

.field private mMainTitle:Landroid/view/View;

.field private mMemberCount:Ljava/lang/String;

.field mMessenger:Landroid/os/Messenger;

.field private mNull:Landroid/widget/TextView;

.field private mOrderContactsWin:Landroid/widget/PopupWindow;

.field private mPassGroup:Lcom/lzx/iteam/bean/CloudGroup;

.field public mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

.field public mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mProgressWaitDlg:Landroid/app/ProgressDialog;

.field private mSelectedListContactId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mShaker:Lcom/lzx/iteam/util/ShakeListener;

.field public mShareContactId:J

.field public mShareName:Ljava/lang/String;

.field public mSharePhone:Ljava/lang/String;

.field private mShowContent:I

.field private mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;

.field public mShowTimesContacted:Z

.field public mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

.field private mSkinListAdapter:Lcom/lzx/iteam/adapter/SkinListAdapter;

.field public mSortByProperty:I

.field private mTabSelectAll:Landroid/widget/LinearLayout;

.field private mText:Ljava/lang/String;

.field public mTextWatcher:Landroid/text/TextWatcher;

.field public mTextWatcherQwerty:Landroid/text/TextWatcher;

.field private mTitleBarNormalMode:Landroid/widget/RelativeLayout;

.field private mTitleBarSelectMode:Landroid/widget/RelativeLayout;

.field public mTreeFrag:Lcom/lzx/iteam/TreeFrag;

.field private mTvListName:Landroid/widget/TextView;

.field private mTvTitleBack:Landroid/widget/LinearLayout;

.field private mUid:Ljava/lang/String;

.field private mUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalPadScrollView:Lcom/lzx/iteam/widget/VerticalKeyPadScrollLayout;

.field private mainTitle:Landroid/widget/TextView;

.field private obj:Ljava/lang/Object;

.field public player:Lcom/lzx/iteam/widget/Mp3Player;

.field private progress:I

.field private rightShadow:Landroid/graphics/drawable/GradientDrawable;

.field private rightShadowView:Landroid/view/View;

.field public rootcontactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;"
        }
    .end annotation
.end field

.field showDepartment:Z

.field public tagCount:Ljava/lang/String;

.field public tagId:Ljava/lang/String;

.field public tagName:Ljava/lang/String;

.field public tagPath:Ljava/lang/String;

.field usechange:Z

.field userType:Ljava/lang/String;

.field public whileLock:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$lzx$iteam$CloudDialerActivity$ListStatus()[I
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->$SWITCH_TABLE$com$lzx$iteam$CloudDialerActivity$ListStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->values()[Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    invoke-virtual {v1}, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    invoke-virtual {v1}, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_GROUP_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    invoke-virtual {v1}, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity;->$SWITCH_TABLE$com$lzx$iteam$CloudDialerActivity$ListStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    sput-boolean v2, Lcom/lzx/iteam/CloudDialerActivity;->isShowChange:Z

    .line 146
    sput-boolean v3, Lcom/lzx/iteam/CloudDialerActivity;->mIsLoad:Z

    .line 172
    sput v2, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 1439
    const/16 v0, 0x64

    sput v0, Lcom/lzx/iteam/CloudDialerActivity;->sCloudSearch:I

    .line 3532
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 5202
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 5203
    const-string v1, "raw_contact_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    .line 5202
    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity;->RAW_PROJECTION:[Ljava/lang/String;

    .line 5208
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/lzx/iteam/BaseActivity;-><init>()V

    .line 70
    const/16 v0, 0x12

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mFontSizeValue:I

    .line 98
    iput-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsKeyBoardLock:Z

    .line 99
    iput-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z

    .line 113
    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mEventData:Lcom/lzx/iteam/bean/EventListData;

    .line 117
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardThemeColor:I

    .line 125
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardOri:I

    .line 137
    const-string v0, "lock"

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->lockPlayerId:Ljava/lang/String;

    .line 145
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsDisplayUnderPanel:Z

    .line 149
    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinListAdapter:Lcom/lzx/iteam/adapter/SkinListAdapter;

    .line 154
    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 155
    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTextWatcherQwerty:Landroid/text/TextWatcher;

    .line 166
    iput-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfBatchOperation:Z

    .line 167
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfShowPeopleNoPhone:Z

    .line 169
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mFirstQuery:Z

    .line 174
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCheckBoxStatus:I

    .line 176
    const/4 v0, 0x7

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->MSG_ADD_CONTACTS:I

    .line 178
    iput-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->isTextLoad:Z

    .line 203
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 204
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsCreate:Z

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactList:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CloudDialerActivity$1;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    .line 1400
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    .line 1648
    iput-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    .line 3038
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->usechange:Z

    .line 3516
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3517
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3518
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3519
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3520
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3521
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagPath:Ljava/lang/String;

    .line 3522
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupImg:Ljava/lang/String;

    .line 3524
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 3529
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    .line 3533
    iput-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLoading:Z

    .line 4400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;

    .line 4402
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    .line 4405
    iput-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->whileLock:Z

    .line 4406
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactedPeople:I

    .line 4407
    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    .line 4415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;

    .line 5525
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->progress:I

    .line 5526
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->flagSize:I

    .line 5527
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->arg1:I

    .line 5528
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->arg2:I

    .line 5529
    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->obj:Ljava/lang/Object;

    .line 5530
    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CloudDialerActivity$2;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->handler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/CloudDialerActivity;Z)V
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsAddGroupMember:Z

    return-void
.end method

.method static synthetic access$12(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->initIntentData()V

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/CloudDialerActivity;ZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1741
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$14(Lcom/lzx/iteam/CloudDialerActivity;)I
    .locals 1

    .prologue
    .line 5526
    iget v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->flagSize:I

    return v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/CloudDialerActivity;I)V
    .locals 0

    .prologue
    .line 5526
    iput p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->flagSize:I

    return-void
.end method

.method static synthetic access$16(Lcom/lzx/iteam/CloudDialerActivity;)I
    .locals 1

    .prologue
    .line 5527
    iget v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->arg1:I

    return v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/CloudDialerActivity;)I
    .locals 1

    .prologue
    .line 5528
    iget v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->arg2:I

    return v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5529
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/CloudDialerActivity;I)V
    .locals 0

    .prologue
    .line 5527
    iput p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->arg1:I

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/TwiceTextChoiceView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/CloudDialerActivity;I)V
    .locals 0

    .prologue
    .line 5528
    iput p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->arg2:I

    return-void
.end method

.method static synthetic access$21(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5529
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->obj:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$22(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    .locals 1

    .prologue
    .line 4403
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    return-object v0
.end method

.method static synthetic access$24(Lcom/lzx/iteam/CloudDialerActivity;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 5777
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->addChatGroupContactList(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$25(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMemberCount:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Lcom/lzx/iteam/CloudDialerActivity;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 5922
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->addMemberToChatGroup(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$27(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/EventListData;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mEventData:Lcom/lzx/iteam/bean/EventListData;

    return-object v0
.end method

.method static synthetic access$28(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$29(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5832
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->addReceiverToEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$30(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5790
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->setGroupContact(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$31(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5805
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->setGroupManager(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$32(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5819
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->deleteGroupMember(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$33(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5939
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->addScheduleManager(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$34(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/bean/AttendanceData;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    return-object v0
.end method

.method static synthetic access$35(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5957
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->addApprovalManager(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$36(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 5699
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->uploadCloudContact(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$37(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mUsers:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$38(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$39(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLayoutSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 4415
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$41(Lcom/lzx/iteam/CloudDialerActivity;)Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mFirstQuery:Z

    return v0
.end method

.method static synthetic access$42(Lcom/lzx/iteam/CloudDialerActivity;Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mFirstQuery:Z

    return-void
.end method

.method static synthetic access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 4400
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$44(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 4401
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSelectedListContactId:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$45(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 4401
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSelectedListContactId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$46(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$47(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 4415
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$48(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$49(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/contactssearch/ResultListManager;
    .locals 1

    .prologue
    .line 4407
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$50(Lcom/lzx/iteam/CloudDialerActivity;Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 1508
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->textChanged(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$51(Lcom/lzx/iteam/CloudDialerActivity;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z

    return v0
.end method

.method static synthetic access$52(Lcom/lzx/iteam/CloudDialerActivity;)Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->isLeftAnimation:Z

    return v0
.end method

.method static synthetic access$53(Lcom/lzx/iteam/CloudDialerActivity;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->isRightAnimation:Z

    return v0
.end method

.method static synthetic access$54(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    return-object v0
.end method

.method static synthetic access$55(Lcom/lzx/iteam/CloudDialerActivity;Z)V
    .locals 0

    .prologue
    .line 2385
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->controlDisplayImageButtonForT9OrAllwords(Z)V

    return-void
.end method

.method static synthetic access$56(Lcom/lzx/iteam/CloudDialerActivity;Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z

    return-void
.end method

.method static synthetic access$57(Lcom/lzx/iteam/CloudDialerActivity;Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->isLeftAnimation:Z

    return-void
.end method

.method static synthetic access$58(Lcom/lzx/iteam/CloudDialerActivity;Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->isRightAnimation:Z

    return-void
.end method

.method static synthetic access$59(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 4160
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method static synthetic access$60(Lcom/lzx/iteam/CloudDialerActivity;Z)V
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsCreate:Z

    return-void
.end method

.method static synthetic access$61(Lcom/lzx/iteam/CloudDialerActivity;F)V
    .locals 0

    .prologue
    .line 4404
    iput p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListDownY:F

    return-void
.end method

.method static synthetic access$62(Lcom/lzx/iteam/CloudDialerActivity;)F
    .locals 1

    .prologue
    .line 4404
    iget v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListDownY:F

    return v0
.end method

.method static synthetic access$64(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 4409
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$65(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 5762
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/CloudDialerActivity;->addContactList(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/CloudDialerActivity;Z)V
    .locals 0

    .prologue
    .line 3533
    iput-boolean p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLoading:Z

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 5524
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mProgressWaitDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMemberCount:Ljava/lang/String;

    return-object v0
.end method

.method private addApprovalManager(Ljava/lang/String;)V
    .locals 6
    .param p1, "users"    # Ljava/lang/String;

    .prologue
    .line 5958
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5959
    .local v2, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    .line 5960
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5959
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5961
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "group_id"

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5962
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "current_contact_id"

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5963
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "contact_ids"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5964
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    const/16 v4, 0xbc3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5965
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 5966
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v3, "approval_leader_add"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5967
    const-string v3, "/api/group/add_approval_manager"

    iput-object v3, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 5968
    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 5969
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 5970
    return-void
.end method

.method private addChatGroupContactList(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 5778
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5779
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 5780
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5779
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5781
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_users"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5782
    new-instance v0, Lcom/lzx/iteam/net/GetChatGroupMsg;

    .line 5783
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    const/16 v3, 0xbbd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    .line 5782
    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/GetChatGroupMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 5784
    .local v0, "getChatGroupMsg":Lcom/lzx/iteam/net/GetChatGroupMsg;
    const-string v2, "/api/chatgroup/create"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mApi:Ljava/lang/String;

    .line 5785
    iput-object v1, v0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mParams:Ljava/util/List;

    .line 5786
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 5787
    return-void
.end method

.method private addContactList(Ljava/lang/String;I)V
    .locals 6
    .param p1, "contactListStr"    # Ljava/lang/String;
    .param p2, "totalSize"    # I

    .prologue
    .line 5763
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5764
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 5765
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5764
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5766
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-wide v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5767
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contacts_list"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5768
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contacts_num"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5769
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5770
    new-instance v0, Lcom/lzx/iteam/net/AddContactListMsg;

    .line 5771
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    const/16 v3, 0xbba

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5770
    invoke-direct {v0, v2, p2}, Lcom/lzx/iteam/net/AddContactListMsg;-><init>(Landroid/os/Message;I)V

    .line 5772
    .local v0, "addContactList":Lcom/lzx/iteam/net/AddContactListMsg;
    const-string v2, "/api/contact/addlist"

    iput-object v2, v0, Lcom/lzx/iteam/net/AddContactListMsg;->mApi:Ljava/lang/String;

    .line 5773
    iput-object v1, v0, Lcom/lzx/iteam/net/AddContactListMsg;->mParams:Ljava/util/List;

    .line 5774
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 5775
    return-void
.end method

.method private addMemberToChatGroup(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "users"    # Lorg/json/JSONArray;

    .prologue
    .line 5923
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5924
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 5925
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5924
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5926
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "chat_group_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->chatGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5927
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_users"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5928
    new-instance v0, Lcom/lzx/iteam/net/ChatGroupAddMemberMsg;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    const/16 v3, 0xbc2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/ChatGroupAddMemberMsg;-><init>(Landroid/os/Message;)V

    .line 5929
    .local v0, "getMsg":Lcom/lzx/iteam/net/ChatGroupAddMemberMsg;
    const-string v2, "/api/chatgroup/add_member"

    iput-object v2, v0, Lcom/lzx/iteam/net/ChatGroupAddMemberMsg;->mApi:Ljava/lang/String;

    .line 5930
    iput-object v1, v0, Lcom/lzx/iteam/net/ChatGroupAddMemberMsg;->mParams:Ljava/util/List;

    .line 5931
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 5932
    return-void
.end method

.method private addReceiverToEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "eventReceiver"    # Ljava/lang/String;

    .prologue
    .line 5833
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    const/16 v3, 0xbc1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 5834
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5835
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 5836
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5835
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5837
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5838
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_type"

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventTypeId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5839
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "recv_members"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5840
    const-string v2, "/api/event/add_members"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 5841
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 5842
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 5843
    return-void
.end method

.method private addScheduleManager(Ljava/lang/String;)V
    .locals 6
    .param p1, "users"    # Ljava/lang/String;

    .prologue
    .line 5940
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5941
    .local v2, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    .line 5942
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5941
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5943
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "managers"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5944
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    const/16 v4, 0xbc3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5945
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 5946
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v3, "schedule_manager"

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5947
    const-string v3, "/api/event/calendar/add_managers"

    iput-object v3, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 5948
    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 5949
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 5950
    return-void
.end method

.method private controlDisplayImageButtonForT9OrAllwords(Z)V
    .locals 1
    .param p1, "isRight"    # Z

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/KeyboardVertFrag;->controlDisplayImageButtonForT9OrAllwords(Z)V

    .line 2387
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->updateShadow(IZ)V

    .line 2388
    return-void
.end method

.method private deleteGroupMember(Ljava/lang/String;)V
    .locals 5
    .param p1, "contactIds"    # Ljava/lang/String;

    .prologue
    .line 5820
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    const/16 v3, 0xbc0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 5821
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5822
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 5823
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5822
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5824
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5825
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_ids"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5826
    const-string v2, "/api/group/delusers"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 5827
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 5828
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 5829
    return-void
.end method

.method private freshCloudContactFromResult(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 4133
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 4136
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    .line 4137
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshCloudContact()V

    .line 4139
    :cond_0
    return-void
.end method

.method private getSkinData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/SkinDirData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4363
    new-instance v0, Lcom/lzx/iteam/skin/GetSkinResource;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/skin/GetSkinResource;-><init>(Landroid/content/Context;)V

    .line 4364
    .local v0, "gr":Lcom/lzx/iteam/skin/GetSkinResource;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinDir(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private initIntentData()V
    .locals 12

    .prologue
    const/4 v2, 0x2

    const-wide/16 v10, -0x1

    const/16 v5, 0xbb8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1109
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1111
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "structure_tag_click"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    .line 1114
    :cond_0
    const-string v0, "local_contact_list"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1116
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1117
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1118
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTvListName:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1375
    :cond_1
    :goto_0
    return-void

    .line 1119
    :cond_2
    const-string v0, "cloud_contact_list"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1120
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    if-nez v0, :cond_3

    .line 1121
    new-instance v0, Lcom/lzx/iteam/contactssearch/ResultListManager;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowContent:I

    invoke-direct {v0, p0, v1, v2}, Lcom/lzx/iteam/contactssearch/ResultListManager;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/widget/ListView;I)V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    .line 1125
    :cond_3
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1130
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1131
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1132
    const-string v0, "tag_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1133
    const-string v0, "tag_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1134
    const-string v0, "group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1135
    const-string v0, "contact_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1136
    const-string v0, "group_img"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupImg:Ljava/lang/String;

    .line 1137
    const-string v0, "group_type"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupType:I

    .line 1138
    const-string v0, "group_type"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " cloud get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const-string v0, "user_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1140
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "create_type"

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1141
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1142
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1143
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setCurrentContactId(Ljava/lang/String;)V

    .line 1144
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1145
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1147
    :cond_5
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1149
    :cond_6
    const-string v0, "share_contact"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1150
    const-string v0, "name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShareName:Ljava/lang/String;

    .line 1151
    const-string v0, "phone"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSharePhone:Ljava/lang/String;

    .line 1152
    const-string v0, "contactId"

    invoke-virtual {v7, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShareContactId:J

    .line 1153
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1154
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1155
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1156
    :cond_7
    const-string v0, "create_group_import_contact"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1157
    const-string v0, "group_id"

    invoke-virtual {v7, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1158
    .local v8, "groudId":J
    const-class v0, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudGroup;

    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 1159
    invoke-virtual {p0, v8, v9}, Lcom/lzx/iteam/CloudDialerActivity;->addContactToGroupDirect(J)V

    goto/16 :goto_0

    .line 1160
    .end local v8    # "groudId":J
    :cond_8
    const-string v0, "set_structure_group_contact"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1161
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1162
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1166
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1167
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "contact_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1168
    const-string v0, "tag_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1169
    const-string v0, "intent_tag_name"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1170
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1171
    const-string v0, "group_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1172
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1173
    const-string v0, "tag_path"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagPath:Ljava/lang/String;

    .line 1174
    const-string v0, "group_name"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1176
    const-string v0, "clickPosition"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    .line 1177
    const-string v0, "currentPosition"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    .line 1178
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1179
    const-string v0, "selectedContact"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->chatContacts:Ljava/util/ArrayList;

    .line 1180
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1182
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_9
    const-string v0, "structure_add_local_member"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1183
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1184
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1185
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1186
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 1187
    iput-boolean v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsCreate:Z

    .line 1188
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1189
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1190
    const-string v0, "group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1191
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    goto/16 :goto_0

    .line 1192
    :cond_a
    const-string v0, "contact_detail_page_share"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1193
    const-string v0, "name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShareName:Ljava/lang/String;

    .line 1194
    const-string v0, "phone"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSharePhone:Ljava/lang/String;

    .line 1195
    const-string v0, "contactId"

    invoke-virtual {v7, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShareContactId:J

    .line 1196
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1197
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1198
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1199
    :cond_b
    const-string v0, "manage_add_manager"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1200
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1203
    const-string v0, "tag_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1204
    const-string v0, "intent_tag_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1205
    const-string v0, "tag_count"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1206
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1207
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1208
    const-string v0, "group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1209
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1210
    const-string v0, "contact_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1211
    const-string v0, "create_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1213
    const-string v0, "-1"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1214
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :goto_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1216
    :cond_c
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1220
    :cond_d
    const-string v0, "manage_delete_member"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1221
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1224
    const-string v0, "tag_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1225
    const-string v0, "intent_tag_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1226
    const-string v0, "tag_count"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1227
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1228
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1229
    const-string v0, "group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1230
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1231
    const-string v0, "contact_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1232
    const-string v0, "create_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1234
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1235
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :goto_2
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1237
    :cond_e
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1241
    :cond_f
    const-string v0, "events_add_receiver"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1242
    const-string v0, "event_msg"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBundle:Landroid/os/Bundle;

    .line 1243
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "event_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mEventData:Lcom/lzx/iteam/bean/EventListData;

    .line 1244
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mEventData:Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventReceiver:Ljava/lang/String;

    .line 1257
    const-string v0, "local"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "where"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1258
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1259
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1260
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 1261
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1263
    :cond_10
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1265
    const-string v0, "tag_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1266
    const-string v0, "tag_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1267
    const-string v0, "tag_count"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1268
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1269
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1270
    const-string v0, "group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1271
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1272
    const-string v0, "contact_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1273
    const-string v0, "user_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1274
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1277
    :cond_11
    const-string v0, "create_chat_group"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1278
    const-string v0, "chat_group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->chatGroupId:Ljava/lang/String;

    .line 1279
    const-string v0, "chat_group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->chatGroupName:Ljava/lang/String;

    .line 1280
    const-string v0, "user_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1281
    const-string v0, "is_note"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->isNote:Ljava/lang/String;

    .line 1282
    const-string v0, "local"

    const-string v1, "where"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1283
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1284
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1285
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 1286
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1288
    :cond_12
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1290
    const-string v0, "tag_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1291
    const-string v0, "tag_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1292
    const-string v0, "tag_count"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1293
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1294
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1295
    const-string v0, "group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1296
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1297
    const-string v0, "contact_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1298
    const-string v0, "user_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1299
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1302
    :cond_13
    const-string v0, "event_add_receiver"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1303
    const-string v0, "event_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventId:Ljava/lang/String;

    .line 1304
    const-string v0, "event_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventTypeId:Ljava/lang/String;

    .line 1305
    const-string v0, "local"

    const-string v1, "where"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1306
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1307
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1308
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 1309
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1311
    :cond_14
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1313
    const-string v0, "tag_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1314
    const-string v0, "tag_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1315
    const-string v0, "tag_count"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1316
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1317
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1318
    const-string v0, "group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1319
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1320
    const-string v0, "contact_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1321
    const-string v0, "user_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1322
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1325
    :cond_15
    const-string v0, "schedule_manager_add"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1326
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1328
    const-string v0, "tag_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1329
    const-string v0, "tag_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1330
    const-string v0, "tag_count"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1331
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1332
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1333
    const-string v0, "group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1334
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1335
    const-string v0, "contact_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1336
    const-string v0, "user_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1337
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1340
    :cond_16
    const-string v0, "attendance_member_add"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1341
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1343
    const-string v0, "tag_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1344
    const-string v0, "tag_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1345
    const-string v0, "tag_count"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1346
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1347
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1348
    const-string v0, "group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1349
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1350
    const-string v0, "contact_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1351
    const-string v0, "user_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1352
    const-string v0, "attendanceData"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    .line 1353
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1355
    :cond_17
    const-string v0, "approval_leader_add"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1356
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1362
    const-string v0, "tag_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1363
    const-string v0, "tag_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1364
    const-string v0, "tag_count"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1365
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1366
    const-string v0, "group_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1367
    const-string v0, "group_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1368
    const-string v0, "contact_count"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1369
    const-string v0, "contact_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1370
    const-string v0, "user_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1371
    const-string v0, "groupData"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudGroup;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 1372
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, "0"

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0
.end method

.method private initListManager(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4633
    .local v0, "contactIds":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    new-instance v1, Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v2, p0, v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;-><init>(Landroid/view/LayoutInflater;Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    .line 4641
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    if-nez v1, :cond_0

    .line 4642
    new-instance v1, Lcom/lzx/iteam/contactssearch/ResultListManager;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowContent:I

    invoke-direct {v1, p0, v2, v3}, Lcom/lzx/iteam/contactssearch/ResultListManager;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/widget/ListView;I)V

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    .line 4644
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 4648
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4649
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/lzx/iteam/CloudDialerActivity$21;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/CloudDialerActivity$21;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4675
    return-void
.end method

.method private initListStatus(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4914
    const/4 v0, 0x1

    .line 4915
    .local v0, "showContent":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4916
    const-string v1, "cloud_contact_list"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "set_structure_group_contact"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "structure_tag_click"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manage_delete_member"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manage_add_manager"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cloud"

    const-string v2, "where"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4917
    :cond_0
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 4921
    :goto_0
    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowContent:I

    .line 4922
    return-void

    .line 4919
    :cond_1
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    goto :goto_0
.end method

.method private initRootViewInKeyboard()V
    .locals 1

    .prologue
    .line 2129
    const v0, 0x7f0e01c6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadVertContainer:Landroid/view/View;

    .line 2130
    const v0, 0x7f0e01d1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadHoriContainer:Landroid/view/View;

    .line 2132
    return-void
.end method

.method private initSkin()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2058
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "ishavesound"

    .line 2059
    const/4 v4, 0x0

    .line 2058
    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsHaveTone:I

    .line 2060
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "keyboard_layout_orientation"

    invoke-virtual {v2, v3, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardOri:I

    .line 2062
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "keyboard_packagename"

    const-string v4, "local"

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2063
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lcom/lzx/iteam/skin/GetSkinResource;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/skin/GetSkinResource;-><init>(Landroid/content/Context;)V

    .line 2064
    .local v0, "getSkinResource":Lcom/lzx/iteam/skin/GetSkinResource;
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "is_t9_vertial"

    invoke-virtual {v2, v3, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    .line 2066
    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardOri:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2067
    invoke-virtual {v0, p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getAllHorizSkinData(Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinHorizData;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHorizSkin:Lcom/lzx/iteam/bean/SkinHorizData;

    .line 2119
    :goto_0
    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsHaveTone:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->loadCommon(Landroid/content/Context;Ljava/lang/String;I)Lcom/lzx/iteam/bean/SkinCommonData;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    .line 2120
    return-void

    .line 2071
    :cond_0
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    if-nez v2, :cond_1

    .line 2072
    new-instance v2, Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/SkinVertyData;-><init>()V

    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 2081
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-virtual {v0, v2, p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getVertT9SkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 2088
    :goto_1
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    if-nez v2, :cond_2

    .line 2089
    new-instance v2, Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/SkinVertyData;-><init>()V

    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 2098
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-virtual {v0, v2, p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getVertABCSkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    goto :goto_0

    .line 2084
    :cond_1
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-virtual {v0, v2, p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getVertT9SkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    goto :goto_1

    .line 2101
    :cond_2
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-virtual {v0, v2, p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getVertABCSkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    goto :goto_0
.end method

.method private initTextWatcher()V
    .locals 1

    .prologue
    .line 1406
    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$3;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CloudDialerActivity$3;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 1421
    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$4;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CloudDialerActivity$4;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTextWatcherQwerty:Landroid/text/TextWatcher;

    .line 1435
    return-void
.end method

.method private initView(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 729
    const v1, 0x7f0e01bf

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/lzx/iteam/CloudDialerActivity;->mKeyBoardMainContainer:Landroid/widget/LinearLayout;

    .line 730
    const v1, 0x7f0e01c5

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    .line 731
    const v1, 0x7f0e0490

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTvTitleBack:Landroid/widget/LinearLayout;

    .line 732
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTvTitleBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    const v1, 0x7f0e0492

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLlHelp:Landroid/widget/LinearLayout;

    .line 734
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLlHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    const v1, 0x7f0e0493

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->llChange:Landroid/widget/LinearLayout;

    .line 736
    const v1, 0x7f0e0494

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    .line 737
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->llChange:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    const v1, 0x7f0e01cc

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    .line 741
    const v1, 0x7f0e017e

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTvListName:Landroid/widget/TextView;

    .line 763
    const v1, 0x7f0e01c3

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTitleBarSelectMode:Landroid/widget/RelativeLayout;

    .line 764
    const v1, 0x7f0e01c2

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTitleBarNormalMode:Landroid/widget/RelativeLayout;

    .line 766
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTitleBarSelectMode:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0645

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnCancel:Landroid/widget/TextView;

    .line 767
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnCancel:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTitleBarSelectMode:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0647

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    .line 769
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTitleBarSelectMode:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0646

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    .line 772
    const v1, 0x7f0e01ca

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTabSelectAll:Landroid/widget/LinearLayout;

    .line 773
    const v1, 0x7f0e01c9

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLayoutSelectAll:Landroid/widget/LinearLayout;

    .line 774
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTabSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    const v1, 0x7f0e01cb

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    .line 776
    const v1, 0x7f0e01c8

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    .line 777
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    new-instance v2, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/CloudDialerActivity$MyOnChoiceChangeListener;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setOnChoiceChangeListener(Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;)V

    .line 778
    const v1, 0x7f0e01c7

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOpertionLayout:Landroid/widget/LinearLayout;

    .line 779
    const v1, 0x7f0e01c1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainTitle:Landroid/view/View;

    .line 781
    const v1, 0x7f0e01cd

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;

    .line 784
    const-string v1, "local_contact_list"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    sput-boolean v3, Lcom/lzx/iteam/CloudDialerActivity;->isShowChange:Z

    .line 792
    :goto_0
    const v1, 0x7f0e01d2

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpSlipKey:Landroid/widget/ImageView;

    .line 793
    const v1, 0x7f0e01d3

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpStructureAdd:Landroid/widget/ImageView;

    .line 794
    const v1, 0x7f0e01d4

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpStructureEdit:Landroid/widget/ImageView;

    .line 795
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpSlipKey:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpStructureAdd:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpStructureEdit:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "slip_key_v1"

    invoke-virtual {v1, v2, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 800
    .local v0, "isFirst":Z
    if-eqz v0, :cond_2

    .line 801
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpSlipKey:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 806
    :goto_1
    return-void

    .line 787
    .end local v0    # "isFirst":Z
    :cond_0
    const-string v1, "cloud_contact_list"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    sput-boolean v3, Lcom/lzx/iteam/CloudDialerActivity;->isShowChange:Z

    goto :goto_0

    .line 790
    :cond_1
    sput-boolean v4, Lcom/lzx/iteam/CloudDialerActivity;->isShowChange:Z

    goto :goto_0

    .line 803
    .restart local v0    # "isFirst":Z
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpSlipKey:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private keyBoardHori(ZLjava/lang/String;)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1687
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadHoriContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1715
    if-eqz p1, :cond_4

    .line 1716
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1717
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "DATA"

    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1718
    if-eqz p2, :cond_0

    .line 1719
    const-string v2, "input"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    if-nez v2, :cond_1

    .line 1722
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->newInstance(Landroid/os/Bundle;)Lcom/lzx/iteam/KeyboardHoriFrag;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    .line 1724
    :cond_1
    const v2, 0x7f0e01d1

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1728
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1729
    return-void

    .line 1687
    :cond_3
    const/16 v2, 0x8

    goto :goto_0

    .line 1725
    :cond_4
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    if-eqz v2, :cond_2

    .line 1726
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method private keyBoardVert(ZLjava/lang/String;Z)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "showdepartment"    # Z

    .prologue
    const v10, 0x7f0e01c6

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 1742
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1743
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadVertContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1745
    if-nez p3, :cond_a

    .line 1746
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    if-eqz v4, :cond_0

    .line 1748
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1752
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1753
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "DATA"

    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1754
    if-eqz p2, :cond_1

    .line 1755
    const-string v4, "input"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    if-nez v4, :cond_6

    .line 1758
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardVertFrag;->newInstance(Landroid/os/Bundle;)Lcom/lzx/iteam/KeyboardVertFrag;

    move-result-object v4

    iput-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    .line 1793
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-virtual {v4}, Lcom/lzx/iteam/KeyboardVertFrag;->isAdded()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1794
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-virtual {v1, v10, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1797
    :cond_3
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1974
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1976
    return-void

    :cond_5
    move v4, v6

    .line 1743
    goto :goto_0

    .line 1761
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_6
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v5, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-eq v4, v5, :cond_2

    .line 1762
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1763
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "tag_id"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    const-string v4, "intent_tag_name"

    const-string v5, "\u5168\u90e8\u6210\u5458"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1765
    const-string v4, "tag_count"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1766
    const-string v4, "group_id"

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1767
    const-string v4, "group_name"

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1768
    const-string v4, "contact_count"

    iget v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1771
    const-string v4, "structure_tag_click"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1773
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    if-nez v4, :cond_8

    .line 1774
    if-nez p2, :cond_7

    .line 1775
    sget-object v4, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v4, v2, v9}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    .line 1788
    :goto_3
    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->textChanged()V

    goto :goto_1

    .line 1777
    :cond_7
    sget-object v4, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v4, v2, v8}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    goto :goto_3

    .line 1780
    :cond_8
    if-nez p2, :cond_9

    .line 1781
    sget-object v4, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    iget-object v5, v5, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v4, v2, v9, v5}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V

    goto :goto_3

    .line 1783
    :cond_9
    sget-object v4, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    iget-object v5, v5, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v4, v2, v8, v5}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V

    goto :goto_3

    .line 1800
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    if-eqz v4, :cond_4

    .line 1802
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1817
    sget v4, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v7, 0x400000

    and-int/2addr v4, v7

    if-nez v4, :cond_c

    .line 1819
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v7, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-eq v4, v7, :cond_c

    .line 1820
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    if-nez v4, :cond_b

    .line 1821
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    .line 1824
    :cond_b
    sget v4, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v7, 0x200000

    and-int/2addr v4, v7

    if-eqz v4, :cond_10

    .line 1837
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_id"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_name"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "pid"

    const-string v8, "select"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "where"

    const-string v8, "chatMemberAdd"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "user_type"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "contact_count"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1843
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "clickPosition"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1844
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "currentPosition"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1941
    :cond_c
    :goto_4
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    if-nez v4, :cond_16

    .line 1942
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/lzx/iteam/TreeFrag;->newInstance(Landroid/os/Bundle;)Lcom/lzx/iteam/TreeFrag;

    move-result-object v4

    iput-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    .line 1955
    :cond_d
    :goto_5
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v4}, Lcom/lzx/iteam/TreeFrag;->isAdded()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1956
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v1, v10, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1959
    :cond_e
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1961
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    if-eqz v4, :cond_f

    .line 1963
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v4}, Lcom/lzx/iteam/TreeFrag;->updatecurrentitem()V

    .line 1965
    :cond_f
    const-string v4, "3"

    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1966
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v7, "structure_add_v1"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1967
    .local v3, "isFirst":Z
    if-eqz v3, :cond_17

    .line 1968
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpStructureAdd:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1847
    .end local v3    # "isFirst":Z
    :cond_10
    sget v4, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v7, 0x2000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_11

    .line 1860
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_id"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_name"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "pid"

    const-string v8, "select"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "where"

    const-string v8, "eventReceiverAdd"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "user_type"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "contact_count"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1866
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "clickPosition"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1867
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "currentPosition"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1868
    :cond_11
    sget v4, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v7, 0x1000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_12

    .line 1870
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_id"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_name"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "pid"

    const-string v8, "select"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "where"

    const-string v8, "delete_group_memeber"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "user_type"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "contact_count"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1876
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "clickPosition"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1877
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "currentPosition"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1878
    :cond_12
    sget v4, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v7, 0x800000

    and-int/2addr v4, v7

    if-eqz v4, :cond_13

    .line 1880
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_id"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_name"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "pid"

    const-string v8, "select"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "where"

    const-string v8, "add_group_manager"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "user_type"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "contact_count"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1886
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "clickPosition"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1887
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "currentPosition"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1888
    :cond_13
    sget v4, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v7, 0x8000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_14

    .line 1890
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_id"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_name"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "pid"

    const-string v8, "select"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "where"

    const-string v8, "add_schedule_manager"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "user_type"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "contact_count"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1896
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "clickPosition"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1897
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "currentPosition"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1898
    :cond_14
    sget v4, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v7, 0x10000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_15

    .line 1900
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_id"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_name"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "pid"

    const-string v8, "select"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "where"

    const-string v8, "add_schedule_manager"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "user_type"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "contact_count"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1906
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "clickPosition"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1907
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "currentPosition"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1926
    :cond_15
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_id"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_name"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "pid"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_img"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupImg:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "group_type"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupType:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1931
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "user_type"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "contact_count"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1933
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "contact_id"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "clickPosition"

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1935
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v7, "currentPosition"

    iget v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1943
    :cond_16
    sget-object v4, Lcom/lzx/iteam/CloudDialerActivity;->recordintent:Landroid/content/Intent;

    if-eqz v4, :cond_d

    goto/16 :goto_5

    .line 1970
    .restart local v3    # "isFirst":Z
    :cond_17
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpStructureAdd:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private orderContactsWindow()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4928
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0300c7

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4929
    .local v2, "mainView":Landroid/view/View;
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    .line 4930
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4931
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4932
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4933
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 4934
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4935
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4936
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4937
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    const v8, 0x7f09000b

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4938
    const v7, 0x7f0e053a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4939
    .local v1, "fre_image":Landroid/widget/ImageView;
    const v7, 0x7f0e053d

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 4940
    .local v3, "name_image":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v7

    const-string v8, "name_sort"

    invoke-virtual {v7, v8, v12}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 4941
    .local v6, "type":I
    if-ne v6, v12, :cond_1

    .line 4942
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4943
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4948
    :cond_0
    :goto_0
    const v7, 0x7f0e053b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 4949
    .local v5, "orderByName":Landroid/widget/LinearLayout;
    const v7, 0x7f0e0538

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 4950
    .local v4, "orderByFre":Landroid/widget/LinearLayout;
    const v7, 0x7f0e053e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4951
    .local v0, "cancel":Landroid/widget/Button;
    new-instance v7, Lcom/lzx/iteam/CloudDialerActivity$23;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CloudDialerActivity$23;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4961
    new-instance v7, Lcom/lzx/iteam/CloudDialerActivity$24;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CloudDialerActivity$24;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4972
    new-instance v7, Lcom/lzx/iteam/CloudDialerActivity$25;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CloudDialerActivity$25;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4978
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    sget-object v8, Lcom/lzx/iteam/CloudDialerActivity;->mKeyBoardMainContainer:Landroid/widget/LinearLayout;

    const/16 v9, 0x50

    invoke-virtual {v7, v8, v9, v10, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4979
    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->update()V

    .line 4981
    return-void

    .line 4944
    .end local v0    # "cancel":Landroid/widget/Button;
    .end local v4    # "orderByFre":Landroid/widget/LinearLayout;
    .end local v5    # "orderByName":Landroid/widget/LinearLayout;
    :cond_1
    if-ne v6, v11, :cond_0

    .line 4945
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4946
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private sendPys(Ljava/lang/String;JLjava/lang/String;ILandroid/os/Message;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "gid"    # J
    .param p4, "pageSize"    # Ljava/lang/String;
    .param p5, "pageIndex"    # I
    .param p6, "callback"    # Landroid/os/Message;
    .param p7, "tagId"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2f

    .line 1610
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1642
    :goto_0
    return-void

    .line 1614
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1616
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p7}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsAddGroupMember:Z

    if-nez v3, :cond_1

    .line 1617
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "tag_id"

    invoke-direct {v3, v4, p7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1621
    :goto_1
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    .line 1622
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "current_contact_id"

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1627
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/api/pys"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1628
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->isT9Key(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1629
    const-string v3, "/t9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1635
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    new-instance v0, Lcom/lzx/iteam/net/CloudSearchMsg;

    invoke-direct {v0, p6}, Lcom/lzx/iteam/net/CloudSearchMsg;-><init>(Landroid/os/Message;)V

    .line 1638
    .local v0, "cloudSearchMsg":Lcom/lzx/iteam/net/CloudSearchMsg;
    const/16 v3, 0xc8

    iput v3, v0, Lcom/lzx/iteam/net/CloudSearchMsg;->type:I

    .line 1639
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lzx/iteam/net/CloudSearchMsg;->mApi:Ljava/lang/String;

    .line 1640
    iput-object v1, v0, Lcom/lzx/iteam/net/CloudSearchMsg;->mParams:Ljava/util/List;

    .line 1641
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    goto/16 :goto_0

    .line 1619
    .end local v0    # "cloudSearchMsg":Lcom/lzx/iteam/net/CloudSearchMsg;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "tag_id"

    const-string v5, "0"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1631
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string v3, "/zm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 1
    .param p0, "ib"    # Landroid/widget/ImageButton;
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 4156
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinCommonData;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4157
    iget v0, p1, Lcom/lzx/iteam/bean/SkinCommonData;->backgroundColor:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 4158
    return-void
.end method

.method private setGroupContact(Ljava/lang/String;)V
    .locals 5
    .param p1, "contactIds"    # Ljava/lang/String;

    .prologue
    .line 5791
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    const/16 v3, 0xbbe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 5792
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5793
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 5794
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5793
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5795
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5796
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_ids"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5797
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag_path"

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5798
    const-string v2, "/api/tags/set"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 5799
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 5800
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 5801
    return-void
.end method

.method private setGroupInfo()V
    .locals 15

    .prologue
    .line 5159
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mGroupID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 5160
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 5161
    .local v11, "sb":Ljava/lang/StringBuffer;
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mNoGroupsSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 5162
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5167
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5168
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5170
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 5171
    .local v13, "where":Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5172
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBackgroundQueryHandler:Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 5173
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 5174
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 5172
    invoke-virtual/range {v0 .. v7}, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5200
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    .end local v13    # "where":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 5163
    .restart local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5164
    .local v9, "contactId":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5165
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5177
    .end local v9    # "contactId":Ljava/lang/String;
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 5178
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->RAW_PROJECTION:[Ljava/lang/String;

    const-string v3, "data1=? and mimetype=\'vnd.android.cursor.item/group_membership\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 5179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mGroupID:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5180
    const/4 v5, 0x0

    .line 5177
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5183
    .local v8, "conRawIdCursor":Landroid/database/Cursor;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 5184
    .local v12, "sb1":Ljava/lang/StringBuilder;
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5189
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 5190
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5192
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 5193
    .local v14, "where1":Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5194
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBackgroundQueryHandler:Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 5195
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 5196
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "times_contacted DESC"

    .line 5194
    invoke-virtual/range {v0 .. v7}, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5185
    .end local v14    # "where1":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5186
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private setGroupManager(Ljava/lang/String;)V
    .locals 5
    .param p1, "contactIds"    # Ljava/lang/String;

    .prologue
    .line 5806
    new-instance v0, Lcom/lzx/iteam/net/SetManagerHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    const/16 v3, 0xbbf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/SetManagerHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 5807
    .local v0, "getMsg":Lcom/lzx/iteam/net/SetManagerHttpReceiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5808
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 5809
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5808
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5810
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5811
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_ids"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5812
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5813
    const-string v2, "/api/group/add_manager"

    iput-object v2, v0, Lcom/lzx/iteam/net/SetManagerHttpReceiver;->mApi:Ljava/lang/String;

    .line 5814
    iput-object v1, v0, Lcom/lzx/iteam/net/SetManagerHttpReceiver;->mParams:Ljava/util/List;

    .line 5815
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 5816
    return-void
.end method

.method private setupShakeListener()V
    .locals 2

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShaker:Lcom/lzx/iteam/util/ShakeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShaker:Lcom/lzx/iteam/util/ShakeListener;

    iget-object v0, v0, Lcom/lzx/iteam/util/ShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 2263
    :goto_0
    return-void

    .line 2233
    :cond_0
    :try_start_0
    new-instance v0, Lcom/lzx/iteam/util/ShakeListener;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/ShakeListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShaker:Lcom/lzx/iteam/util/ShakeListener;

    .line 2234
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShaker:Lcom/lzx/iteam/util/ShakeListener;

    new-instance v1, Lcom/lzx/iteam/CloudDialerActivity$6;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/CloudDialerActivity$6;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/ShakeListener;->setOnShakeListener(Lcom/lzx/iteam/util/ShakeListener$OnShakeListener;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private textChanged()V
    .locals 13

    .prologue
    const/16 v9, 0xbb8

    const/16 v4, 0xd

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1443
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-ne v0, v1, :cond_2

    .line 1445
    const/16 v0, 0x65

    sput v0, Lcom/lzx/iteam/CloudDialerActivity;->sCloudSearch:I

    .line 1446
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->setNoData(Z)V

    .line 1448
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1449
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setInterrupted(Z)V

    .line 1450
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1451
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->isTextLoad:Z

    if-eqz v0, :cond_0

    .line 1452
    iget-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, "0"

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->isTextLoad:Z

    .line 1460
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setInterrupted(Z)V

    .line 1461
    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    iget-wide v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    const-string v8, "25"

    .line 1462
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-string v11, "0"

    move-object v4, p0

    move v9, v2

    .line 1461
    invoke-direct/range {v4 .. v11}, Lcom/lzx/iteam/CloudDialerActivity;->sendPys(Ljava/lang/String;JLjava/lang/String;ILandroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1467
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 1468
    .local v12, "message":Landroid/os/Message;
    iput v4, v12, Landroid/os/Message;->what:I

    .line 1469
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1470
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1471
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1473
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 1490
    :cond_3
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1492
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setCurrentSearchText(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setInterrupted(Z)V

    goto :goto_0

    .line 1496
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setInterrupted(Z)V

    .line 1497
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setCurrentSearchText(Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfShowPeopleNoPhone:Z

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/contactssearch/ResultListManager;->onRefresh(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private textChanged(Landroid/text/Editable;)V
    .locals 12
    .param p1, "aEditable"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xbb8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1509
    if-nez p1, :cond_2

    .line 1510
    iput-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    .line 1518
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-ne v0, v1, :cond_5

    .line 1520
    const/16 v0, 0x65

    sput v0, Lcom/lzx/iteam/CloudDialerActivity;->sCloudSearch:I

    .line 1523
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1524
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    iget-object v0, v0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mContactIdPosition:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1525
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setInterrupted(Z)V

    .line 1526
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1527
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->isTextLoad:Z

    if-eqz v0, :cond_1

    .line 1528
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rootcontactList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1529
    iget-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, "0"

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    :cond_1
    :goto_0
    return-void

    .line 1512
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    .line 1513
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/net/CloudGroupListCenter;->searchReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    .line 1514
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1531
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rootcontactList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->updateCloudContactList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1538
    :cond_4
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->isTextLoad:Z

    .line 1539
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setInterrupted(Z)V

    .line 1542
    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    iget-wide v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    const-string v8, "25"

    .line 1543
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-string v11, "0"

    move-object v4, p0

    move v9, v2

    .line 1542
    invoke-direct/range {v4 .. v11}, Lcom/lzx/iteam/CloudDialerActivity;->sendPys(Ljava/lang/String;JLjava/lang/String;ILandroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1561
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 1578
    :cond_6
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1580
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v5}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setCurrentSearchText(Ljava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setInterrupted(Z)V

    goto :goto_0

    .line 1584
    :cond_7
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setInterrupted(Z)V

    .line 1585
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setCurrentSearchText(Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    if-eqz v0, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mText:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfShowPeopleNoPhone:Z

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/contactssearch/ResultListManager;->onRefresh(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateKeypadVisibility(Ljava/lang/String;)V
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1656
    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardOri:I

    if-ne v2, v3, :cond_1

    .line 1658
    iget-boolean v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    invoke-direct {p0, v3, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V

    .line 1660
    iget-boolean v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z

    invoke-direct {p0, v3, v2}, Lcom/lzx/iteam/CloudDialerActivity;->updateShadow(IZ)V

    .line 1661
    iget-boolean v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z

    if-nez v2, :cond_0

    .line 1662
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1663
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1664
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "listview"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1665
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->removeView(Landroid/view/View;)V

    .line 1666
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->addView(Landroid/view/View;)V

    .line 1676
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1671
    :cond_1
    invoke-direct {p0, v4, p1, v3}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V

    .line 1672
    invoke-direct {p0, v3, p1}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardHori(ZLjava/lang/String;)V

    .line 1674
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadAtRight:Z

    invoke-direct {p0, v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->updateShadow(IZ)V

    goto :goto_0
.end method

.method private updateSelectTitleSkin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4287
    new-instance v3, Lcom/lzx/iteam/CloudDialerActivity$18;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CloudDialerActivity$18;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 4306
    new-instance v3, Lcom/lzx/iteam/CloudDialerActivity$19;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CloudDialerActivity$19;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 4331
    const/16 v3, 0x8

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    .line 4334
    .local v0, "outerR":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 4335
    .local v1, "rr":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 4336
    .local v2, "sd":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget v4, v4, Lcom/lzx/iteam/bean/SkinCommonData;->tintColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4338
    new-instance v3, Lcom/lzx/iteam/CloudDialerActivity$20;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CloudDialerActivity$20;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 4360
    return-void

    .line 4331
    nop

    :array_0
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
    .end array-data
.end method

.method private updateShadow(IZ)V
    .locals 9
    .param p1, "keyboardOri"    # I
    .param p2, "isKeyRight"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2391
    if-ne p1, v6, :cond_3

    .line 2392
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->leftShadowView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    const v1, 0x7f0e01ce

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->leftShadowView:Landroid/view/View;

    .line 2394
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2395
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 2396
    const/16 v3, 0x64

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    const/16 v3, 0x50

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v6

    .line 2397
    const/16 v3, 0xa

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v7

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 2394
    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->leftShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 2400
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->leftShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 2401
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->leftShadowView:Landroid/view/View;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->leftShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2403
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    const v1, 0x7f0e01cf

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rightShadowView:Landroid/view/View;

    .line 2404
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2405
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 2406
    const/16 v3, 0x64

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    const/16 v3, 0x50

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v6

    .line 2407
    const/16 v3, 0xa

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v7

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 2404
    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rightShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 2410
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rightShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 2411
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rightShadowView:Landroid/view/View;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->rightShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2414
    :cond_0
    if-eqz p2, :cond_2

    .line 2415
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rightShadowView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2416
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->leftShadowView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2421
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->horizonShadowView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2422
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->horizonShadowView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2442
    :cond_1
    :goto_1
    return-void

    .line 2418
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rightShadowView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2419
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->leftShadowView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2424
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->horizonShadowView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 2425
    const v0, 0x7f0e01d0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->horizonShadowView:Landroid/view/View;

    .line 2426
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2427
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 2428
    const/16 v3, 0x64

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v4

    const/16 v3, 0x50

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v6

    .line 2429
    const/16 v3, 0xa

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v7

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v2, v8

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 2426
    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->horizonShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 2432
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->horizonShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 2433
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->horizonShadowView:Landroid/view/View;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->horizonShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2436
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->leftShadowView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2437
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->leftShadowView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2438
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rightShadowView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private uploadCloudContact(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contactIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 5700
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5701
    .local v0, "totalSize":I
    iput v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->flagSize:I

    .line 5702
    new-instance v1, Lcom/lzx/iteam/CloudDialerActivity$26;

    invoke-direct {v1, p0, v0, p1}, Lcom/lzx/iteam/CloudDialerActivity$26;-><init>(Lcom/lzx/iteam/CloudDialerActivity;ILjava/util/ArrayList;)V

    new-array v2, v2, [Ljava/lang/Void;

    .line 5717
    invoke-virtual {v1, v2}, Lcom/lzx/iteam/CloudDialerActivity$26;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5755
    return-void
.end method


# virtual methods
.method public ListRefresh(Landroid/content/Intent;I)V
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, 0xbb8

    .line 3654
    if-eqz p1, :cond_1

    .line 3655
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 3656
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3657
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 3658
    invoke-virtual {p0, v6, v6}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    .line 3660
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3661
    .local v4, "tagId":Ljava/lang/String;
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3662
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3664
    :cond_0
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 3667
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 3668
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3669
    .local v1, "groupId":Ljava/lang/String;
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 3670
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 3674
    const-string v0, "-1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3676
    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 3739
    .end local v1    # "groupId":Ljava/lang/String;
    .end local v4    # "tagId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3679
    .restart local v1    # "groupId":Ljava/lang/String;
    .restart local v4    # "tagId":Ljava/lang/String;
    :cond_2
    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3681
    .end local v1    # "groupId":Ljava/lang/String;
    .end local v4    # "tagId":Ljava/lang/String;
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_7

    .line 3684
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLayoutSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3685
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setAllToPressedState()V

    .line 3688
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3689
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3691
    :cond_4
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3692
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3694
    :cond_5
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3695
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3696
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3697
    const-string v0, "clickPosition"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    .line 3698
    const-string v0, "currentPosition"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    .line 3699
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3700
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3701
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3703
    :cond_6
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3705
    :cond_7
    const/16 v0, 0x276a

    if-ne p2, v0, :cond_9

    .line 3706
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3707
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3708
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3709
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3710
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3711
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3712
    const-string v0, "-1"

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3713
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    :goto_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 3715
    :cond_8
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3718
    :cond_9
    const/16 v0, 0x276c

    if-ne p2, v0, :cond_1

    .line 3719
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3720
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3721
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3722
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3723
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3724
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3725
    const-string v0, "clickPosition"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3726
    const-string v0, "clickPosition"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    .line 3730
    :goto_2
    const-string v0, "currentPosition"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    .line 3731
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3732
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 3736
    :goto_3
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 3728
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    goto :goto_2

    .line 3734
    :cond_b
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V
    .locals 11
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "element"    # Lcom/lzx/iteam/treeview/Element;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xbb8

    .line 3536
    if-eqz p1, :cond_2

    .line 3537
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 3539
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 3540
    invoke-virtual {p0, v5, v5}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    .line 3542
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3543
    .local v4, "tagId":Ljava/lang/String;
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3544
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3546
    :cond_0
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 3549
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 3550
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3551
    .local v1, "groupId":Ljava/lang/String;
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 3555
    const-string v0, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3557
    if-eqz p3, :cond_3

    iget-object v0, p3, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 3558
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfBatchOperation:Z

    if-eqz v0, :cond_1

    .line 3559
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->backToDefaultState()V

    .line 3561
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->changeToAllContent()V

    .line 3564
    :cond_1
    iget-object v0, p3, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->updateCloudContactList(Ljava/util/ArrayList;)V

    .line 3650
    .end local v1    # "groupId":Ljava/lang/String;
    .end local v4    # "tagId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 3566
    .restart local v1    # "groupId":Ljava/lang/String;
    .restart local v4    # "tagId":Ljava/lang/String;
    :cond_3
    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3570
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rootcontactList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 3572
    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3575
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->rootcontactList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->updateCloudContactList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 3579
    .end local v1    # "groupId":Ljava/lang/String;
    .end local v4    # "tagId":Ljava/lang/String;
    :cond_6
    const/4 v0, -0x2

    if-ne p2, v0, :cond_c

    .line 3582
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLayoutSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3583
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setAllToPressedState()V

    .line 3586
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3587
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3589
    :cond_7
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3590
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3592
    :cond_8
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3593
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3594
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3595
    const-string v0, "clickPosition"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    .line 3596
    const-string v0, "currentPosition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    .line 3597
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3598
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3600
    if-eqz p3, :cond_a

    iget-object v0, p3, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 3601
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfBatchOperation:Z

    if-eqz v0, :cond_9

    .line 3602
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->backToDefaultState()V

    .line 3604
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->changeToAllContent()V

    .line 3607
    :cond_9
    iget-object v0, p3, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->updateCloudContactList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3609
    :cond_a
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3610
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3614
    :cond_b
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3616
    :cond_c
    const/16 v0, 0x276a

    if-ne p2, v0, :cond_e

    .line 3617
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3618
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3619
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3620
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3621
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3622
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3623
    const-string v0, "-1"

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3624
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 3628
    :goto_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 3626
    :cond_d
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3629
    :cond_e
    const/16 v0, 0x276c

    if-ne p2, v0, :cond_2

    .line 3630
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3631
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3632
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3633
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3634
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3635
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3636
    const-string v0, "clickPosition"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3637
    const-string v0, "clickPosition"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    .line 3641
    :goto_2
    const-string v0, "currentPosition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    .line 3642
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3643
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    :goto_3
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 3639
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    goto :goto_2

    .line 3645
    :cond_10
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public addContactToGroupDirect(J)V
    .locals 1
    .param p1, "groupid"    # J

    .prologue
    .line 5212
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 5213
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 5214
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 5215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsCreate:Z

    .line 5216
    iput-wide p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 5217
    return-void
.end method

.method public afterQueryComplete()V
    .locals 1

    .prologue
    .line 4383
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4385
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/util/PreferenceUtil;->registerCloudContactListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 4387
    :cond_0
    return-void
.end method

.method public appendCloudContactList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4033
    .local p1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->appendData(Ljava/util/ArrayList;)V

    .line 4034
    return-void
.end method

.method public appendCloudContactListReq()V
    .locals 8

    .prologue
    const/16 v6, 0xbbb

    .line 3498
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-eq v0, v2, :cond_1

    .line 3514
    :cond_0
    :goto_0
    return-void

    .line 3501
    :cond_1
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLoading:Z

    if-nez v0, :cond_0

    .line 3502
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->setNoData(Z)V

    .line 3504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLoading:Z

    .line 3505
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v1

    .line 3506
    .local v1, "searchText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3507
    iget-wide v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "searchText":Ljava/lang/String;
    iget v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    add-int/lit8 v2, v0, 0x1

    .line 3508
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    .line 3507
    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3510
    .restart local v1    # "searchText":Ljava/lang/String;
    :cond_2
    iget-wide v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    const-string v4, "25"

    iget v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    add-int/lit8 v5, v0, 0x1

    .line 3511
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    move-object v0, p0

    .line 3510
    invoke-direct/range {v0 .. v7}, Lcom/lzx/iteam/CloudDialerActivity;->sendPys(Ljava/lang/String;JLjava/lang/String;ILandroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public batchOperation(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5222
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTitleBarSelectMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5223
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTitleBarNormalMode:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5225
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOpertionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5226
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-ne v0, v1, :cond_2

    .line 5227
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    const-string v1, "\u672c\u5730\u901a\u8baf\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5231
    :goto_0
    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_3

    .line 5232
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    .line 5255
    :cond_1
    :goto_1
    return-void

    .line 5229
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5233
    :cond_3
    const/16 v0, 0x15

    if-ne p1, v0, :cond_4

    .line 5234
    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    goto :goto_1

    .line 5235
    :cond_4
    const/16 v0, 0x16

    if-ne p1, v0, :cond_5

    .line 5236
    iput-boolean v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsAddGroupMember:Z

    .line 5237
    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    goto :goto_1

    .line 5238
    :cond_5
    const/16 v0, 0x17

    if-ne p1, v0, :cond_6

    .line 5239
    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    goto :goto_1

    .line 5240
    :cond_6
    const/16 v0, 0x18

    if-ne p1, v0, :cond_7

    .line 5241
    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    goto :goto_1

    .line 5242
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 5243
    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    goto :goto_1

    .line 5244
    :cond_8
    const/16 v0, 0x19

    if-ne p1, v0, :cond_9

    .line 5245
    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    goto :goto_1

    .line 5246
    :cond_9
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_a

    .line 5247
    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    goto :goto_1

    .line 5248
    :cond_a
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_b

    .line 5249
    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    goto :goto_1

    .line 5250
    :cond_b
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_c

    .line 5251
    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    goto :goto_1

    .line 5252
    :cond_c
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_1

    .line 5253
    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->enterBatchOperation(IZ)V

    goto :goto_1
.end method

.method public changeHorizSkin(Lcom/lzx/iteam/bean/SkinCommonData;Lcom/lzx/iteam/bean/SkinHorizData;)V
    .locals 1
    .param p1, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;
    .param p2, "horizData"    # Lcom/lzx/iteam/bean/SkinHorizData;

    .prologue
    .line 4276
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    .line 4277
    iput-object p2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHorizSkin:Lcom/lzx/iteam/bean/SkinHorizData;

    .line 4278
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->setComponet(Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 4281
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    invoke-virtual {v0, p2, p1}, Lcom/lzx/iteam/KeyboardHoriFrag;->changeSkin(Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 4283
    return-void
.end method

.method public changePage(Z)V
    .locals 4
    .param p1, "isBatch"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3041
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v3, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->usechange:Z

    if-nez v0, :cond_1

    .line 3061
    :cond_0
    :goto_0
    return-void

    .line 3045
    :cond_1
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    .line 3047
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    if-nez v0, :cond_3

    .line 3048
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v3, 0x7f02020b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3049
    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->textChanged()V

    .line 3054
    :goto_2
    if-nez p1, :cond_4

    .line 3055
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    invoke-direct {p0, v2, v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3045
    goto :goto_1

    .line 3051
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v3, 0x7f02020a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 3057
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLayoutSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3058
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setAllToPressedState()V

    .line 3059
    const-string v0, "isbatch"

    iget-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    invoke-direct {p0, v2, v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public changeResult(Ljava/util/LinkedHashSet;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5003
    .local p1, "allContactId":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    const/4 v13, 0x0

    .line 5005
    .local v13, "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 5009
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashSet;->size()I

    move-result v15

    if-nez v15, :cond_2

    .line 5010
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5016
    :goto_0
    sget-boolean v15, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-eqz v15, :cond_3

    .line 5134
    :cond_1
    :goto_1
    return-void

    .line 5012
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5019
    :cond_3
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    .line 5020
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 5021
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashSet;->size()I

    move-result v15

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 5022
    .local v4, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 5023
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_6

    .line 5034
    new-instance v9, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 5035
    .local v9, "mc":Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;
    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5038
    sget-boolean v15, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v15, :cond_1

    .line 5043
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CloudDialerActivity;->getSections()[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashSet;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 5044
    .local v14, "sectionText":Ljava/lang/String;
    new-instance v13, Landroid/util/Pair;

    .end local v13    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-direct {v13, v14, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5045
    .restart local v13    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5125
    .end local v4    # "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v9    # "mc":Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;
    .end local v14    # "sectionText":Ljava/lang/String;
    :cond_5
    :goto_3
    sget-boolean v15, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v15, :cond_1

    .line 5129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v15, v12}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->changeContent(Ljava/util/List;)V

    .line 5130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setInterrupted(Z)V

    .line 5133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 5024
    .restart local v4    # "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5029
    .local v2, "contactId":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 5030
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5046
    .end local v2    # "contactId":J
    .end local v4    # "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 5047
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 5048
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5049
    .local v5, "contactedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5051
    .local v11, "noContactedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_8
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_9

    .line 5081
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CloudDialerActivity;->getSections()[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 5082
    .restart local v14    # "sectionText":Ljava/lang/String;
    new-instance v13, Landroid/util/Pair;

    .end local v13    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-direct {v13, v14, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5083
    .restart local v13    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5085
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CloudDialerActivity;->getSections()[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 5086
    new-instance v13, Landroid/util/Pair;

    .end local v13    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-direct {v13, v14, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5087
    .restart local v13    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 5053
    .end local v14    # "sectionText":Ljava/lang/String;
    :cond_9
    sget-boolean v15, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->mHaveNewInput:Z

    if-nez v15, :cond_1

    .line 5056
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5057
    .restart local v2    # "contactId":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 5062
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    if-nez v15, :cond_a

    .line 5063
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CloudDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    .line 5065
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/CloudDialerActivity;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    invoke-virtual {v15}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getContactInfo()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;

    .line 5066
    .local v10, "memoryNode":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
    const-wide/16 v6, -0x1

    .line 5067
    .local v6, "contactedNumber":J
    if-nez v10, :cond_b

    .line 5069
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 5068
    invoke-static {v2, v3, v15}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactedNumber(JLandroid/content/ContentResolver;)I

    move-result v15

    int-to-long v6, v15

    .line 5074
    :goto_5
    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-lez v15, :cond_c

    .line 5075
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 5071
    :cond_b
    iget v15, v10, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->contactedNumber:I

    int-to-long v6, v15

    goto :goto_5

    .line 5077
    :cond_c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public changeResultGroup(Ljava/util/LinkedHashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4985
    .local p1, "allContactId":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4986
    .local v1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->rootcontactList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4993
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->updateCloudContactList(Ljava/util/ArrayList;)V

    .line 4995
    return-void

    .line 4986
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudContact;

    .line 4987
    .local v0, "contact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v4, v0, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 4988
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4989
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public changeVertSkin(Lcom/lzx/iteam/bean/SkinCommonData;Lcom/lzx/iteam/bean/SkinVertyData;)V
    .locals 2
    .param p1, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;
    .param p2, "vertyData"    # Lcom/lzx/iteam/bean/SkinVertyData;

    .prologue
    .line 4264
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    .line 4265
    sput-object p2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 4266
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->setComponet(Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 4268
    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->updateSelectTitleSkin()V

    .line 4269
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-virtual {v0, p2, p1}, Lcom/lzx/iteam/KeyboardVertFrag;->changeSkin(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 4272
    const-string v0, "eeeeeeeeeeeeeee"

    const-string v1, "changeVertSkin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    return-void
.end method

.method public checkSIMCard()Z
    .locals 3

    .prologue
    .line 3373
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3374
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 3375
    const/4 v1, 0x1

    .line 3377
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkboxSelectedFor(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 1596
    iget v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCheckBoxStatus:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearCheckboxStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5519
    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCheckBoxStatus:I

    .line 5520
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setIfCheckBoxShow(Z)V

    .line 5521
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 5522
    return-void
.end method

.method public destroryDrawingCache(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 2445
    invoke-virtual {p1}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 2446
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2447
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 2455
    return-void

    .line 2448
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2449
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 2450
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->destroryDrawingCache(Landroid/view/ViewGroup;)V

    .line 2447
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2452
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_1
.end method

.method public enterBatchOperation(IZ)V
    .locals 7
    .param p1, "batchType"    # I
    .param p2, "clear"    # Z

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x2

    const/16 v4, 0x15

    const v3, 0x7f0800a6

    const/4 v2, 0x1

    .line 5259
    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->updateSelectTitleSkin()V

    .line 5261
    iput-boolean v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfBatchOperation:Z

    .line 5264
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    sput v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 5265
    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_4

    .line 5266
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5267
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setLocalContactCheckStyle(Z)V

    .line 5294
    :cond_1
    :goto_0
    if-eq p1, v4, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_f

    .line 5295
    :cond_2
    if-eqz p2, :cond_3

    .line 5296
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5297
    if-ne p1, v4, :cond_e

    .line 5298
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setCloudContactCheckStyle(Z)V

    .line 5302
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5303
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    .line 5363
    :cond_3
    :goto_2
    return-void

    .line 5268
    :cond_4
    const/16 v0, 0xc

    if-ne p1, v0, :cond_5

    .line 5269
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5270
    :cond_5
    const/16 v0, 0x13

    if-ne p1, v0, :cond_6

    .line 5271
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5272
    :cond_6
    if-ne p1, v4, :cond_7

    .line 5273
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5275
    :cond_7
    if-ne p1, v6, :cond_8

    .line 5276
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5278
    :cond_8
    const/16 v0, 0x17

    if-ne p1, v0, :cond_9

    .line 5279
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5281
    :cond_9
    const/16 v0, 0x18

    if-ne p1, v0, :cond_a

    .line 5282
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5284
    :cond_a
    if-ne p1, v5, :cond_b

    .line 5285
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5286
    :cond_b
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_c

    .line 5287
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 5288
    :cond_c
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_d

    .line 5289
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 5290
    :cond_d
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_1

    .line 5291
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBtnSend:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 5300
    :cond_e
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setCloudContactCheckStyle(Z)V

    goto/16 :goto_1

    .line 5305
    :cond_f
    if-ne p1, v6, :cond_10

    .line 5306
    if-eqz p2, :cond_3

    .line 5307
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->chatContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(ZLjava/util/ArrayList;)V

    .line 5308
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5309
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 5311
    :cond_10
    const/16 v0, 0x17

    if-ne p1, v0, :cond_11

    .line 5312
    if-eqz p2, :cond_3

    .line 5313
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5314
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setCloudContactCheckStyle(Z)V

    .line 5315
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5316
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 5318
    :cond_11
    const/16 v0, 0x18

    if-ne p1, v0, :cond_12

    .line 5319
    if-eqz p2, :cond_3

    .line 5320
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5321
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5322
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 5324
    :cond_12
    if-ne p1, v5, :cond_14

    .line 5325
    if-eqz p2, :cond_13

    .line 5326
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setIfCheckBoxShow(Z)V

    .line 5330
    :goto_3
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5331
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 5328
    :cond_13
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setIfCheckBoxShowNoClear(Z)V

    goto :goto_3

    .line 5333
    :cond_14
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_15

    .line 5334
    if-eqz p2, :cond_3

    .line 5335
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5336
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setCloudContactCheckStyle(Z)V

    .line 5337
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5338
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 5340
    :cond_15
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_16

    .line 5341
    if-eqz p2, :cond_3

    .line 5342
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5343
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setCloudContactCheckStyle(Z)V

    .line 5344
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5345
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 5347
    :cond_16
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_17

    .line 5348
    if-eqz p2, :cond_3

    .line 5349
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5350
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setCloudContactCheckStyle(Z)V

    .line 5351
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5352
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 5355
    :cond_17
    if-eqz p2, :cond_18

    .line 5356
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setIfCheckBoxShow(Z)V

    goto/16 :goto_2

    .line 5358
    :cond_18
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setIfCheckBoxShowNoClear(Z)V

    goto/16 :goto_2
.end method

.method public exchangeViewToLeft()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2269
    iput-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->isLeftAnimation:Z

    .line 2270
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2271
    .local v1, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    invoke-virtual {v3, v6}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2276
    .local v2, "v2":Landroid/view/ViewGroup;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    invoke-direct {v0, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2277
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    new-instance v3, Lcom/lzx/iteam/CloudDialerActivity$7;

    invoke-direct {v3, p0, v1, v2}, Lcom/lzx/iteam/CloudDialerActivity$7;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2301
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2302
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2303
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2304
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/lzx/iteam/CloudDialerActivity$8;

    invoke-direct {v4, p0, v1, v2}, Lcom/lzx/iteam/CloudDialerActivity$8;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 2319
    const-wide/16 v6, 0x12c

    .line 2304
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2320
    return-void
.end method

.method public exchangeViewToRight()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2326
    iput-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->isRightAnimation:Z

    .line 2327
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2328
    .local v1, "v":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    invoke-virtual {v3, v6}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2329
    .local v2, "v2":Landroid/view/View;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v5, v3, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2332
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-eq v3, v4, :cond_0

    .line 2333
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->bringChildToFront(Landroid/view/View;)V

    .line 2335
    :cond_0
    new-instance v3, Lcom/lzx/iteam/CloudDialerActivity$9;

    invoke-direct {v3, p0, v2, v1}, Lcom/lzx/iteam/CloudDialerActivity$9;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2358
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2359
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2360
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2361
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/lzx/iteam/CloudDialerActivity$10;

    invoke-direct {v4, p0, v2, v1}, Lcom/lzx/iteam/CloudDialerActivity$10;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 2377
    const-wide/16 v6, 0x12c

    .line 2361
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2378
    return-void
.end method

.method public freshCloudContact()V
    .locals 8

    .prologue
    const/16 v6, 0xbb8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3997
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    if-eqz v0, :cond_1

    .line 3998
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget v0, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    if-ne v0, v3, :cond_0

    .line 3999
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->setAddContactAble(Z)V

    .line 4006
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v1

    .line 4007
    .local v1, "searchText":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    new-instance v2, Lcom/lzx/iteam/CloudDialerActivity$13;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/CloudDialerActivity$13;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4015
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4016
    iget-wide v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "searchText":Ljava/lang/String;
    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    .line 4017
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    .line 4016
    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    :goto_1
    return-void

    .line 4001
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->setAddContactAble(Z)V

    goto :goto_0

    .line 4004
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->setAddContactAble(Z)V

    goto :goto_0

    .line 4019
    .restart local v1    # "searchText":Ljava/lang/String;
    :cond_2
    iget-wide v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    const-string v4, "25"

    iget v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    .line 4020
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    move-object v0, p0

    .line 4019
    invoke-direct/range {v0 .. v7}, Lcom/lzx/iteam/CloudDialerActivity;->sendPys(Ljava/lang/String;JLjava/lang/String;ILandroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public freshContactsByStatus()V
    .locals 9

    .prologue
    const/16 v1, 0x12c

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 4845
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    if-nez v0, :cond_0

    .line 4846
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->initListManager(Landroid/content/Intent;)V

    .line 4856
    :cond_0
    invoke-static {}, Lcom/lzx/iteam/CloudDialerActivity;->$SWITCH_TABLE$com$lzx$iteam$CloudDialerActivity$ListStatus()[I

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    invoke-virtual {v3}, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 4894
    :goto_0
    return-void

    .line 4859
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    if-eqz v0, :cond_1

    .line 4860
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4862
    :cond_1
    iput v8, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    .line 4863
    iget v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    if-ne v0, v8, :cond_4

    .line 4864
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBackgroundQueryHandler:Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;

    .line 4866
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 4867
    iget-boolean v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfShowPeopleNoPhone:Z

    if-eqz v5, :cond_3

    move-object v5, v2

    .line 4868
    :goto_1
    const-string v7, " sort_key ASC"

    move-object v6, v2

    .line 4864
    invoke-virtual/range {v0 .. v7}, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4883
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    invoke-virtual {v0, v8}, Lcom/lzx/iteam/contactssearch/ResultListManager;->setListFlag(I)V

    goto :goto_0

    .line 4867
    :cond_3
    const-string v5, "has_phone_number=1"

    goto :goto_1

    .line 4874
    :cond_4
    iget v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 4875
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBackgroundQueryHandler:Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;

    .line 4877
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 4878
    iget-boolean v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfShowPeopleNoPhone:Z

    if-eqz v5, :cond_5

    move-object v5, v2

    .line 4879
    :goto_3
    const-string v7, "times_contacted DESC, sort_key ASC"

    move-object v6, v2

    .line 4875
    invoke-virtual/range {v0 .. v7}, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4878
    :cond_5
    const-string v5, "has_phone_number=1"

    goto :goto_3

    .line 4887
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/ResultListManager;->setListFlag(I)V

    .line 4888
    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->setGroupInfo()V

    goto :goto_0

    .line 4856
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public freshSearchDisplay()V
    .locals 3

    .prologue
    .line 3972
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v0

    .line 3973
    .local v0, "filterText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3991
    :goto_0
    return-void

    .line 3977
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-ne v1, v2, :cond_1

    .line 3979
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshCloudContact()V

    goto :goto_0

    .line 3983
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 3984
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setCurrentSearchText(Ljava/lang/String;)V

    .line 3985
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    if-eqz v1, :cond_2

    .line 3986
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    iget-boolean v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfShowPeopleNoPhone:Z

    invoke-virtual {v1, v0, v2}, Lcom/lzx/iteam/contactssearch/ResultListManager;->onRefresh(Ljava/lang/String;Z)V

    .line 3989
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setCurrentSearchText(Ljava/lang/String;)V

    .line 3990
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    goto :goto_0
.end method

.method public getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "pageIndex"    # I
    .param p3, "callback"    # Landroid/os/Message;
    .param p4, "tagId"    # Ljava/lang/String;
    .param p5, "contactId"    # Ljava/lang/String;

    .prologue
    .line 4037
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4038
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsAddGroupMember:Z

    if-nez v2, :cond_1

    .line 4039
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag_id"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4044
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4045
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTvListName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4049
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 4050
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4049
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4051
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4052
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "current_contact_id"

    invoke-direct {v2, v3, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4057
    new-instance v0, Lcom/lzx/iteam/net/GetContactListMsg;

    invoke-direct {v0, p3}, Lcom/lzx/iteam/net/GetContactListMsg;-><init>(Landroid/os/Message;)V

    .line 4058
    .local v0, "getContactList":Lcom/lzx/iteam/net/GetContactListMsg;
    const/16 v2, 0xc8

    iput v2, v0, Lcom/lzx/iteam/net/GetContactListMsg;->type:I

    .line 4059
    const-string v2, "/api/contact/getlist"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetContactListMsg;->mApi:Ljava/lang/String;

    .line 4060
    iput-object v1, v0, Lcom/lzx/iteam/net/GetContactListMsg;->mParams:Ljava/util/List;

    .line 4064
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 4065
    return-void

    .line 4041
    .end local v0    # "getContactList":Lcom/lzx/iteam/net/GetContactListMsg;
    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag_id"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFilterText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4142
    const/4 v0, 0x0

    .line 4143
    .local v0, "filterText":Ljava/lang/String;
    iget v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardOri:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4144
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    invoke-virtual {v1}, Lcom/lzx/iteam/KeyboardHoriFrag;->getFilterText()Ljava/lang/String;

    move-result-object v0

    .line 4149
    :goto_0
    invoke-static {v0}, Lcom/lzx/iteam/net/CloudGroupListCenter;->searchReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4151
    return-object v0

    .line 4146
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-virtual {v1}, Lcom/lzx/iteam/KeyboardVertFrag;->getFilterText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsDisplayUnderPanel()Z
    .locals 1

    .prologue
    .line 4394
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsDisplayUnderPanel:Z

    return v0
.end method

.method public getListFlag()I
    .locals 1

    .prologue
    .line 4379
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/ResultListManager;->getListFlag()I

    move-result v0

    return v0
.end method

.method public getNumFilterText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4254
    const-string v0, ""

    .line 4255
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardOri:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4256
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    invoke-virtual {v1}, Lcom/lzx/iteam/KeyboardHoriFrag;->getNumberFilterText()Ljava/lang/String;

    move-result-object v0

    .line 4260
    :goto_0
    return-object v0

    .line 4258
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-virtual {v1}, Lcom/lzx/iteam/KeyboardVertFrag;->getNumFilterText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 4619
    iget v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4620
    sget-object v0, Lcom/lzx/iteam/util/Constants;->ORDER_BY_NAME:[Ljava/lang/String;

    .line 4622
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lzx/iteam/util/Constants;->ORDER_BY_CALL_LOG:[Ljava/lang/String;

    goto :goto_0
.end method

.method public initIntentData(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v5, 0x1

    const/16 v4, 0xbb8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 814
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-virtual {v0, v5}, Lcom/lzx/iteam/KeyboardVertFrag;->enableInput(Z)V

    .line 818
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 820
    .local v7, "mAction":Ljava/lang/String;
    const-string v0, "local_contact_list"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 821
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 822
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 823
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTvListName:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 824
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->setAddContactAble(Z)V

    .line 1105
    :cond_1
    :goto_0
    return-void

    .line 825
    :cond_2
    const-string v0, "cloud_contact_list"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 826
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 830
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 831
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 832
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 833
    const-string v0, "tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 834
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 835
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 836
    const-string v0, "group_img"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupImg:Ljava/lang/String;

    .line 837
    const-string v0, "group_type"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupType:I

    .line 838
    const-string v0, "group_type"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " cloud get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-string v0, "user_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "create_type"

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 841
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 842
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setCurrentContactId(Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 844
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 848
    :cond_4
    const-string v0, "share_contact"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 849
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShareName:Ljava/lang/String;

    .line 850
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSharePhone:Ljava/lang/String;

    .line 851
    const-string v0, "contactId"

    invoke-virtual {p1, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShareContactId:J

    .line 852
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 853
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 854
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 855
    :cond_5
    const-string v0, "create_group_import_contact"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 856
    const-string v0, "group_id"

    invoke-virtual {p1, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 857
    .local v8, "groudId":J
    const-class v0, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudGroup;

    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 858
    invoke-virtual {p0, v8, v9}, Lcom/lzx/iteam/CloudDialerActivity;->addContactToGroupDirect(J)V

    goto/16 :goto_0

    .line 859
    .end local v8    # "groudId":J
    :cond_6
    const-string v0, "set_structure_group_contact"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 860
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    .line 861
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->usechange:Z

    .line 863
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    if-nez v0, :cond_7

    .line 864
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v1, 0x7f02020b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 869
    :goto_1
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    invoke-direct {p0, v5, v2, v0}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V

    .line 872
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 873
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 877
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 878
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "contact_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 879
    const-string v0, "tag_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 880
    const-string v0, "intent_tag_name"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 881
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 882
    const-string v0, "group_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 883
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 884
    const-string v0, "tag_path"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagPath:Ljava/lang/String;

    .line 885
    const-string v0, "group_name"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 887
    const-string v0, "clickPosition"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    .line 888
    const-string v0, "currentPosition"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    .line 889
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 890
    const-string v0, "selectedContact"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->chatContacts:Ljava/util/ArrayList;

    .line 891
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 866
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_7
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 893
    :cond_8
    const-string v0, "structure_add_local_member"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 894
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 897
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->setNoData(Z)V

    .line 900
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    .line 903
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    .line 905
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    if-nez v0, :cond_9

    .line 906
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v1, 0x7f02020b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 911
    :goto_2
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    invoke-direct {p0, v5, v2, v0}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V

    .line 914
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 915
    iput-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsCreate:Z

    .line 916
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 917
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    goto/16 :goto_0

    .line 908
    :cond_9
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 923
    :cond_a
    const-string v0, "contact_detail_page_share"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 924
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShareName:Ljava/lang/String;

    .line 925
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSharePhone:Ljava/lang/String;

    .line 926
    const-string v0, "contactId"

    invoke-virtual {p1, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShareContactId:J

    .line 927
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 928
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 929
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 930
    :cond_b
    const-string v0, "manage_add_manager"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 931
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 934
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 935
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 936
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 937
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 938
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 939
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 940
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 941
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 943
    const-string v0, "-1"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 944
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :goto_3
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 946
    :cond_c
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 950
    :cond_d
    const-string v0, "manage_delete_member"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 951
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 954
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 955
    const-string v0, "intent_tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 956
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 957
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 958
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 959
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 960
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 961
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 962
    const-string v0, "create_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 964
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 965
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :goto_4
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 967
    :cond_e
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 971
    :cond_f
    const-string v0, "events_add_receiver"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 972
    const-string v0, "event_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 977
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const-string v0, "type"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventTypeId:Ljava/lang/String;

    .line 978
    const-string v0, "event_tmp_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventTmpId:Ljava/lang/String;

    .line 979
    const-string v0, "event_type"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventTypeName:Ljava/lang/String;

    .line 980
    const-string v0, "event_receiver"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventReceiver:Ljava/lang/String;

    .line 981
    const-string v0, "event_theme"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventTheme:Ljava/lang/String;

    .line 982
    const-string v0, "event_part1"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventPart1:Ljava/lang/String;

    .line 983
    const-string v0, "event_part2"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventPart2:Ljava/lang/String;

    .line 984
    const-string v0, "event_part3"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventPart3:Ljava/lang/String;

    .line 985
    const-string v0, "event_hint1"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventHint1:Ljava/lang/String;

    .line 986
    const-string v0, "event_hint2"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventHint2:Ljava/lang/String;

    .line 987
    const-string v0, "event_hint3"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventHint3:Ljava/lang/String;

    .line 988
    const-string v0, "local"

    const-string v1, "where"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 989
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 990
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 991
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 992
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 994
    :cond_10
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 996
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 997
    const-string v0, "tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 998
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 999
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1000
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1001
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1002
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1003
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1004
    const-string v0, "user_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1005
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1008
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_11
    const-string v0, "create_chat_group"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1009
    const-string v0, "chat_group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->chatGroupId:Ljava/lang/String;

    .line 1010
    const-string v0, "chat_group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->chatGroupName:Ljava/lang/String;

    .line 1011
    const-string v0, "user_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1012
    const-string v0, "is_note"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->isNote:Ljava/lang/String;

    .line 1013
    const-string v0, "local"

    const-string v1, "where"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1014
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1015
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1016
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 1017
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1019
    :cond_12
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1021
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1022
    const-string v0, "tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1023
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1024
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1025
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1026
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1027
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1028
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1029
    const-string v0, "user_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1030
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1033
    :cond_13
    const-string v0, "event_add_receiver"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1034
    const-string v0, "event_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventId:Ljava/lang/String;

    .line 1035
    const-string v0, "event_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->eventTypeId:Ljava/lang/String;

    .line 1036
    const-string v0, "local"

    const-string v1, "where"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1037
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1038
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 1039
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 1040
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1042
    :cond_14
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1044
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1045
    const-string v0, "tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1046
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1047
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1048
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1049
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1050
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1051
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1052
    const-string v0, "user_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1053
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1056
    :cond_15
    const-string v0, "schedule_manager_add"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1057
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1059
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1060
    const-string v0, "tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1061
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1062
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1063
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1064
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1065
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1066
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1067
    const-string v0, "user_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1068
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1071
    :cond_16
    const-string v0, "attendance_member_add"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1072
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1074
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1075
    const-string v0, "tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1076
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1077
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1078
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1079
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1080
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1081
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1082
    const-string v0, "user_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1083
    const-string v0, "attendanceData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    .line 1084
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 1086
    :cond_17
    const-string v0, "approval_leader_add"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1092
    const-string v0, "tag_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 1093
    const-string v0, "tag_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 1094
    const-string v0, "tag_count"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 1095
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 1096
    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 1097
    const-string v0, "group_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 1098
    const-string v0, "contact_count"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 1099
    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    .line 1100
    const-string v0, "user_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    .line 1101
    const-string v0, "groupData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudGroup;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 1102
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, "0"

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0
.end method

.method public initProperty()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 702
    new-instance v1, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 703
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 704
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-virtual {v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "quick_dial"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLongClickDial:Z

    .line 705
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "keyboard_themecolor"

    .line 706
    const-class v3, Ljava/lang/Integer;

    .line 705
    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardThemeColor:I

    .line 707
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "name_sort"

    .line 708
    const/4 v3, 0x2

    .line 707
    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    .line 709
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "show_times_contacted"

    invoke-virtual {v1, v2, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowTimesContacted:Z

    .line 711
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 712
    const-string v2, "show_people_withphonenumber"

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 713
    .local v0, "flag":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfShowPeopleNoPhone:Z

    .line 716
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    const v3, 0x1030010

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mDialog:Landroid/app/Dialog;

    .line 717
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 718
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f030103

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 719
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "useid"

    const-string v3, "\uff0d1"

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mUid:Ljava/lang/String;

    .line 720
    return-void
.end method

.method public isRefreshable()V
    .locals 1

    .prologue
    .line 4900
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 4905
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, 0xbb8

    const/4 v2, 0x0

    .line 3745
    sparse-switch p1, :sswitch_data_0

    .line 3966
    :cond_0
    :goto_0
    return-void

    .line 3747
    :sswitch_0
    if-eqz p3, :cond_0

    .line 3748
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    .line 3749
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3750
    if-ne p2, v4, :cond_4

    .line 3751
    invoke-virtual {p0, v5, v5}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    .line 3752
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 3753
    const-string v0, "tag_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3754
    const-string v0, "tag_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3756
    :cond_1
    const-string v0, "intent_tag_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3757
    const-string v0, "intent_tag_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3759
    :cond_2
    const-string v0, "tag_count"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3760
    const-string v0, "group_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3761
    const-string v0, "group_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3762
    const-string v0, "clickPosition"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    .line 3763
    const-string v0, "currentPosition"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    .line 3764
    const-string v0, "contact_count"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3765
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3766
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3768
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3770
    :cond_4
    const/16 v0, 0x276a

    if-ne p2, v0, :cond_6

    .line 3771
    const-string v0, "tag_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3772
    const-string v0, "intent_tag_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3773
    const-string v0, "tag_count"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3774
    const-string v0, "group_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3775
    const-string v0, "group_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3776
    const-string v0, "contact_count"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3777
    const-string v0, "-1"

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3778
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 3782
    :goto_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 3780
    :cond_5
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3783
    :cond_6
    const/16 v0, 0x276c

    if-ne p2, v0, :cond_9

    .line 3784
    const-string v0, "tag_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3785
    const-string v0, "intent_tag_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3786
    const-string v0, "tag_count"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3787
    const-string v0, "group_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3788
    const-string v0, "group_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3789
    const-string v0, "contact_count"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3790
    const-string v0, "clickPosition"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3791
    const-string v0, "clickPosition"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    .line 3795
    :goto_2
    const-string v0, "currentPosition"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    .line 3796
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3797
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 3801
    :goto_3
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 3793
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    goto :goto_2

    .line 3799
    :cond_8
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3802
    :cond_9
    const/16 v0, 0x2770

    if-ne p1, v0, :cond_0

    .line 3804
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    goto/16 :goto_0

    .line 3813
    :sswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinListAdapter:Lcom/lzx/iteam/adapter/SkinListAdapter;

    if-eqz v0, :cond_0

    .line 3814
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinListAdapter:Lcom/lzx/iteam/adapter/SkinListAdapter;

    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getSkinData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/SkinListAdapter;->setData(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3818
    :sswitch_2
    sput-boolean v2, Lcom/lzx/iteam/CloudDialerActivity;->mIsLoad:Z

    .line 3819
    invoke-direct {p0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->freshCloudContactFromResult(I)V

    .line 3821
    if-eqz p3, :cond_0

    .line 3824
    if-nez p2, :cond_0

    .line 3826
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3827
    .local v8, "mContactName":Ljava/lang/String;
    const-string v0, "contactId"

    invoke-virtual {p3, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3828
    .local v6, "mContactID":J
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->removeContactByContactId(Landroid/content/ContentResolver;J)Z

    .line 3830
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    if-eqz v0, :cond_a

    .line 3831
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    invoke-virtual {v0, v8, v6, v7}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->delPinyinDict(Ljava/lang/String;J)V

    .line 3833
    :cond_a
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->delObject(Ljava/lang/String;)V

    .line 3834
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "contactid"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->delete(Ljava/lang/String;)Z

    .line 3836
    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$11;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CloudDialerActivity$11;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3848
    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$12;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CloudDialerActivity$12;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 3852
    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity$12;->start()V

    goto/16 :goto_0

    .line 3908
    .end local v6    # "mContactID":J
    .end local v8    # "mContactName":Ljava/lang/String;
    :sswitch_3
    const/16 v0, 0x226

    if-ne p2, v0, :cond_0

    .line 3909
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 3910
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 3911
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    .line 3912
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    goto/16 :goto_0

    .line 3916
    :sswitch_4
    if-ne p2, v4, :cond_0

    .line 3917
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    .line 3918
    const-string v0, "tag_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3919
    const-string v0, "tag_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3921
    :cond_b
    const-string v0, "intent_tag_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3922
    const-string v0, "intent_tag_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3924
    :cond_c
    const-string v0, "tag_count"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3925
    const-string v0, "group_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3926
    const-string v0, "group_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3927
    const-string v0, "clickPosition"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    .line 3928
    const-string v0, "currentPosition"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    .line 3929
    const-string v0, "contact_count"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3930
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3931
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 3938
    :goto_4
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 3933
    :cond_d
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3943
    :sswitch_5
    if-ne p2, v4, :cond_0

    .line 3944
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    .line 3945
    const-string v0, "tag_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3946
    const-string v0, "tag_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    .line 3948
    :cond_e
    const-string v0, "intent_tag_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3949
    const-string v0, "intent_tag_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagName:Ljava/lang/String;

    .line 3951
    :cond_f
    const-string v0, "tag_count"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagCount:Ljava/lang/String;

    .line 3952
    const-string v0, "group_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3953
    const-string v0, "group_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3954
    const-string v0, "clickPosition"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->clickPosition:Ljava/util/ArrayList;

    .line 3955
    const-string v0, "currentPosition"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->currentPosition:I

    .line 3956
    const-string v0, "contact_count"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactCount:I

    .line 3957
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3958
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    :goto_5
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->batchOperation(I)V

    goto/16 :goto_0

    .line 3960
    :cond_10
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3745
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x12c -> :sswitch_1
        0xc63 -> :sswitch_0
        0xc6d -> :sswitch_4
        0xc77 -> :sswitch_5
        0x276a -> :sswitch_3
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0x8

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3066
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 3337
    :cond_0
    :goto_0
    return-void

    .line 3116
    :sswitch_0
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x800000

    and-int/2addr v6, v9

    if-nez v6, :cond_1

    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x1000000

    and-int/2addr v6, v9

    if-nez v6, :cond_1

    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x200000

    and-int/2addr v6, v9

    if-nez v6, :cond_1

    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x2000000

    and-int/2addr v6, v9

    if-eqz v6, :cond_2

    .line 3117
    :cond_1
    sput v7, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 3118
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    goto :goto_0

    .line 3123
    :cond_2
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    and-int/lit16 v6, v6, 0x2000

    if-nez v6, :cond_7

    .line 3124
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_7

    .line 3125
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    if-eqz v6, :cond_7

    .line 3129
    iget-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    if-nez v6, :cond_4

    .line 3130
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v9, 0x7f02020b

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3135
    :goto_1
    sget-object v6, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 3141
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 3142
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v9, "group_id"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 3143
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v9, "group_id"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3144
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v9, "group_name"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3158
    :cond_3
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    if-eqz v6, :cond_5

    .line 3174
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTreeFrag:Lcom/lzx/iteam/TreeFrag;

    invoke-virtual {v6}, Lcom/lzx/iteam/TreeFrag;->clearcontactlist()V

    .line 3175
    iget-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    invoke-direct {p0, v8, v12, v6}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V

    .line 3176
    invoke-virtual {p0, v8, v8}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto :goto_0

    .line 3132
    :cond_4
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v9, 0x7f02020a

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 3178
    :cond_5
    const-string v6, "cloud_contact_list"

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 3179
    sput v7, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 3180
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    goto/16 :goto_0

    .line 3185
    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3186
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "tag_id"

    const-string v7, "0"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3187
    const-string v6, "intent_tag_name"

    const-string v7, "\u5168\u90e8\u6210\u5458"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3188
    const-string v6, "tag_count"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3189
    const-string v6, "group_id"

    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3190
    const-string v6, "group_name"

    iget-object v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3193
    const-string v6, "structure_tag_click"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3194
    sget-object v6, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v7, -0x1

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity;->chooseelement:Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v6, v1, v7, v9}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V

    .line 3197
    invoke-virtual {p0, v8, v8}, Lcom/lzx/iteam/CloudDialerActivity;->quitBatchOperation(ZZ)V

    goto/16 :goto_0

    .line 3206
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/DialerApp;

    .line 3207
    .local v0, "app":Lcom/lzx/iteam/DialerApp;
    iget-boolean v6, v0, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShare:Z

    if-eqz v6, :cond_8

    .line 3208
    iput-boolean v7, v0, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShare:Z

    .line 3209
    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShareContactId:J

    .line 3211
    :cond_8
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/CloudDialerActivity;->setAddContactAble(Z)V

    .line 3212
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->removeFullScreen()V

    goto/16 :goto_0

    .line 3219
    .end local v0    # "app":Lcom/lzx/iteam/DialerApp;
    :sswitch_1
    iget-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    if-eqz v6, :cond_9

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    .line 3221
    iget-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    if-nez v6, :cond_a

    .line 3222
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v7, 0x7f02020b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3229
    :goto_3
    iget-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    invoke-direct {p0, v8, v12, v6}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    move v6, v8

    .line 3219
    goto :goto_2

    .line 3225
    :cond_a
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v7, 0x7f02020a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 3235
    :sswitch_2
    invoke-virtual {p0, v7}, Lcom/lzx/iteam/CloudDialerActivity;->setNoData(Z)V

    .line 3236
    iput v7, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    .line 3237
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    goto/16 :goto_0

    .line 3240
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3241
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v6, "title"

    const-string v7, "\u624b\u673a\u5982\u4f55\u7f16\u8f91\u7ec4\u7ec7\u67b6\u6784?"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3242
    const-string v6, "type"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3243
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3246
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 3247
    .local v2, "isChecked":Z
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    if-eqz v2, :cond_b

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3248
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x200000

    and-int/2addr v6, v9

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v6, :cond_d

    .line 3249
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v2, :cond_c

    :goto_5
    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->selectAllContactIds(Z)V

    .line 3267
    :goto_6
    invoke-virtual {p0, v10}, Lcom/lzx/iteam/CloudDialerActivity;->sendMessageToHandler(I)V

    goto/16 :goto_0

    :cond_b
    move v6, v8

    .line 3247
    goto :goto_4

    :cond_c
    move v7, v8

    .line 3249
    goto :goto_5

    .line 3250
    :cond_d
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x400000

    and-int/2addr v6, v9

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v6, :cond_f

    .line 3251
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v2, :cond_e

    :goto_7
    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->selectAllContactIds(Z)V

    goto :goto_6

    :cond_e
    move v7, v8

    goto :goto_7

    .line 3252
    :cond_f
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x800000

    and-int/2addr v6, v9

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v6, :cond_11

    .line 3253
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v2, :cond_10

    :goto_8
    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->selectAllContactIds(Z)V

    goto :goto_6

    :cond_10
    move v7, v8

    goto :goto_8

    .line 3254
    :cond_11
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x1000000

    and-int/2addr v6, v9

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v6, :cond_13

    .line 3255
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v2, :cond_12

    :goto_9
    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->selectAllContactIds(Z)V

    goto :goto_6

    :cond_12
    move v7, v8

    goto :goto_9

    .line 3256
    :cond_13
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x2000000

    and-int/2addr v6, v9

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v6, :cond_15

    .line 3257
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v2, :cond_14

    :goto_a
    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->selectAllContactIds(Z)V

    goto :goto_6

    :cond_14
    move v7, v8

    goto :goto_a

    .line 3258
    :cond_15
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x8000000

    and-int/2addr v6, v9

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v6, :cond_17

    .line 3259
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v2, :cond_16

    :goto_b
    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->selectAllContactIds(Z)V

    goto :goto_6

    :cond_16
    move v7, v8

    goto :goto_b

    .line 3260
    :cond_17
    sget v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v9, 0x10000000

    and-int/2addr v6, v9

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v6, :cond_19

    .line 3261
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v2, :cond_18

    :goto_c
    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->selectAllContactIds(Z)V

    goto/16 :goto_6

    :cond_18
    move v7, v8

    goto :goto_c

    .line 3263
    :cond_19
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    .line 3264
    invoke-virtual {v6}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getChangeContentId()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3263
    iput-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSelectedListContactId:Ljava/util/ArrayList;

    .line 3265
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSelectedListContactId:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    :goto_d
    invoke-virtual {v6, v9, v7}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->selectAllContactIds(Ljava/util/ArrayList;Z)V

    goto/16 :goto_6

    :cond_1a
    move v7, v8

    goto :goto_d

    .line 3275
    .end local v2    # "isChecked":Z
    :sswitch_5
    const/16 v6, 0xb

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/CloudDialerActivity;->sendMessageToHandler(I)V

    .line 3276
    const-string v6, ""

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/CloudDialerActivity;->setFilterText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3281
    :sswitch_6
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v6}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getIfCheckBoxShow()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3282
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v3

    .line 3285
    .local v3, "number":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 3286
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/provider/CallLog$Calls;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 3287
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/CloudDialerActivity;->setFilterText(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3293
    .end local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    const v6, 0x7f08002b

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/CloudDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 3294
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3290
    :cond_1b
    :try_start_1
    invoke-static {p0, v3}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchCallByNumber(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3301
    .end local v3    # "number":Ljava/lang/String;
    :sswitch_7
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v6}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getIfCheckBoxShow()Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfBatchOperation:Z

    if-nez v6, :cond_0

    .line 3302
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v3

    .line 3303
    .restart local v3    # "number":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 3308
    const-string v6, ""

    invoke-static {p0, v6, v12}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3309
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 3311
    invoke-static {p0}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v4

    .line 3312
    .local v4, "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    invoke-virtual {v4, v3}, Lcom/lzx/iteam/util/PhoneNumberArea;->replaceIpCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3314
    invoke-static {p0, v3, v12}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3323
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "phoneNumberArea":Lcom/lzx/iteam/util/PhoneNumberArea;
    :sswitch_8
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpSlipKey:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3324
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v8, "slip_key_v1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3327
    :sswitch_9
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpStructureAdd:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3328
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v8, "structure_add_v1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3331
    :sswitch_a
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHelpStructureEdit:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3332
    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v8, "structure_edit_v1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3066
    :sswitch_data_0
    .sparse-switch
        0x7f0e01ca -> :sswitch_4
        0x7f0e01d2 -> :sswitch_8
        0x7f0e01d3 -> :sswitch_9
        0x7f0e01d4 -> :sswitch_a
        0x7f0e02be -> :sswitch_6
        0x7f0e02c1 -> :sswitch_7
        0x7f0e0315 -> :sswitch_6
        0x7f0e0317 -> :sswitch_7
        0x7f0e0490 -> :sswitch_2
        0x7f0e0492 -> :sswitch_3
        0x7f0e0493 -> :sswitch_1
        0x7f0e0645 -> :sswitch_0
        0x7f0e0647 -> :sswitch_5
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 5991
    invoke-super {p0, p1}, Lcom/lzx/iteam/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5992
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 5994
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 5997
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 605
    invoke-super {p0, p1}, Lcom/lzx/iteam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 606
    sput-object p0, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    .line 608
    const v3, 0x7f030042

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->setContentView(I)V

    .line 609
    iput-object p0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    .line 610
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 611
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->initProperty()V

    .line 612
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->initView(Landroid/content/Intent;)V

    .line 613
    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->initRootViewInKeyboard()V

    .line 614
    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->initSkin()V

    .line 615
    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->initTextWatcher()V

    .line 616
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    .line 618
    new-instance v3, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    iput-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHandler:Landroid/os/Handler;

    .line 619
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMessenger:Landroid/os/Messenger;

    .line 620
    invoke-direct {p0, v7}, Lcom/lzx/iteam/CloudDialerActivity;->updateKeypadVisibility(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 623
    new-instance v3, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;

    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBackgroundQueryHandler:Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;

    .line 624
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->initListStatus(Landroid/content/Intent;)V

    .line 625
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->initListManager(Landroid/content/Intent;)V

    .line 626
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->setComponet(Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 628
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "first_started"

    invoke-virtual {v3, v4, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 629
    .local v2, "isFirst":Z
    if-eqz v2, :cond_0

    .line 630
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "first_started"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 636
    :cond_0
    sput-boolean v6, Lcom/lzx/iteam/CloudDialerActivity;->mIsLoad:Z

    .line 638
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->setFilterText(Ljava/lang/String;)V

    .line 639
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    if-nez v3, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    .line 644
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v4, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-ne v3, v4, :cond_3

    .line 645
    invoke-virtual {p0, v7}, Lcom/lzx/iteam/CloudDialerActivity;->updateCloudContactList(Ljava/util/ArrayList;)V

    .line 672
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 675
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "group_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "groupId":Ljava/lang/String;
    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->gid:Ljava/lang/String;

    .line 683
    sget-boolean v3, Lcom/lzx/iteam/CloudDialerActivity;->mIsLoad:Z

    if-eqz v3, :cond_2

    .line 684
    invoke-direct {p0}, Lcom/lzx/iteam/CloudDialerActivity;->initIntentData()V

    .line 688
    :cond_2
    return-void

    .line 648
    .end local v0    # "groupId":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperitonTitle:Landroid/widget/TextView;

    const-string v4, "\u672c\u5730\u901a\u8baf\u5f55"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTvListName:Landroid/widget/TextView;

    const-string v4, "\u672c\u5730\u901a\u8baf\u5f55"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->llChange:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 5910
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->player:Lcom/lzx/iteam/widget/Mp3Player;

    if-eqz v0, :cond_0

    .line 5911
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->player:Lcom/lzx/iteam/widget/Mp3Player;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/Mp3Player;->destory()V

    .line 5912
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->player:Lcom/lzx/iteam/widget/Mp3Player;

    .line 5914
    :cond_0
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onDestroy()V

    .line 5915
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3382
    iput v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    .line 3383
    sparse-switch p1, :sswitch_data_0

    .line 3463
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/lzx/iteam/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 3386
    :sswitch_0
    sget v2, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 3387
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    .line 3390
    :cond_0
    sget v2, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_2

    .line 3391
    sget v2, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_2

    .line 3392
    sget v2, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    if-eqz v2, :cond_2

    .line 3394
    iput-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    .line 3396
    iget-boolean v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    if-nez v2, :cond_4

    .line 3397
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v3, 0x7f02020b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3402
    :goto_1
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 3408
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 3409
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v3, "group_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudGid:J

    .line 3410
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v3, "group_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    .line 3411
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v3, "group_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    .line 3425
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    .line 3426
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3427
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "tag_id"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3428
    const-string v2, "intent_tag_name"

    const-string v3, "\u5168\u90e8\u6210\u5458"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3429
    const-string v2, "tag_count"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3430
    const-string v2, "group_id"

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3431
    const-string v2, "group_name"

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3433
    const-string v2, "contact_count"

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->changebundle:Landroid/os/Bundle;

    const-string v4, "contact_count"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3435
    const-string v2, "structure_tag_click"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3436
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    .line 3439
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->showDepartment:Z

    invoke-direct {p0, v6, v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->keyBoardVert(ZLjava/lang/String;Z)V

    .line 3444
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    sput v5, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 3453
    :cond_2
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/DialerApp;

    .line 3454
    .local v0, "app":Lcom/lzx/iteam/DialerApp;
    iget-boolean v2, v0, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShare:Z

    if-eqz v2, :cond_3

    .line 3455
    iput-boolean v5, v0, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShare:Z

    .line 3456
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/lzx/iteam/DialerApp;->mYaoyiyaoShareContactId:J

    .line 3458
    :cond_3
    invoke-virtual {p0, v6}, Lcom/lzx/iteam/CloudDialerActivity;->setAddContactAble(Z)V

    .line 3459
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->removeFullScreen()V

    goto/16 :goto_0

    .line 3399
    .end local v0    # "app":Lcom/lzx/iteam/DialerApp;
    :cond_4
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->ivChange:Landroid/widget/ImageView;

    const v3, 0x7f02020a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 3441
    :cond_5
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->finish()V

    goto :goto_2

    .line 3383
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7f0e0645 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 5883
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onPause()V

    .line 5884
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShaker:Lcom/lzx/iteam/util/ShakeListener;

    if-eqz v0, :cond_0

    .line 5885
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShaker:Lcom/lzx/iteam/util/ShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/ShakeListener;->pause()V

    .line 5887
    :cond_0
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5888
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/util/PreferenceUtil;->unregisterCloudContactListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 5890
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lzx/iteam/CloudDialerActivity;->isSingleChoose:Z

    .line 5891
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 5847
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onResume()V

    .line 5879
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1397
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 694
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onStart()V

    .line 695
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    if-nez v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPinyinSearch:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    .line 698
    :cond_0
    return-void
.end method

.method public playPhone(Lcom/lzx/iteam/widget/Mp3Player;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "player"    # Lcom/lzx/iteam/widget/Mp3Player;
    .param p2, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "filePath"    # Ljava/lang/String;

    .prologue
    .line 3344
    if-nez p1, :cond_0

    .line 3345
    new-instance p1, Lcom/lzx/iteam/widget/Mp3Player;

    .end local p1    # "player":Lcom/lzx/iteam/widget/Mp3Player;
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/lzx/iteam/widget/Mp3Player;-><init>(Landroid/content/Context;)V

    .line 3348
    .restart local p1    # "player":Lcom/lzx/iteam/widget/Mp3Player;
    :cond_0
    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsHaveTone:I

    if-lez v2, :cond_1

    .line 3349
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3350
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 3351
    .local v1, "ringerMode":I
    if-eqz v1, :cond_1

    .line 3352
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3357
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "ringerMode":I
    :cond_1
    :goto_0
    return-void

    .line 3355
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v1    # "ringerMode":I
    :cond_2
    invoke-virtual {p1, p3, p2, p4}, Lcom/lzx/iteam/widget/Mp3Player;->setSource(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public quitBatchOperation(ZZ)V
    .locals 8
    .param p1, "clear"    # Z
    .param p2, "clearBtn"    # Z

    .prologue
    const/high16 v2, 0x10000000

    const/16 v7, 0x8

    const/16 v3, 0xbb8

    const/4 v6, 0x0

    .line 5366
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mShowModleChiceView:Lcom/lzx/iteam/widget/TwiceTextChoiceView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->backToDefaultState()V

    .line 5367
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLayoutSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5368
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5369
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOpertionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5370
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-ne v0, v1, :cond_6

    .line 5371
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->changeToAllContent()V

    .line 5372
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mBackAllContactsIdBySection:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5373
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mBackAllContactsIdBySection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5375
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mSelectedContactsIdBySection:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5376
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mSelectedContactsIdBySection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5389
    :cond_1
    :goto_0
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 5390
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->clearSelected()V

    .line 5391
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5392
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 5438
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 5439
    invoke-virtual {p0, v6}, Lcom/lzx/iteam/CloudDialerActivity;->setSelectImage(Z)V

    .line 5440
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTitleBarSelectMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5441
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mTitleBarNormalMode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5448
    :cond_3
    iput-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIfBatchOperation:Z

    .line 5450
    iput v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCheckBoxStatus:I

    .line 5451
    if-eqz p1, :cond_4

    .line 5452
    sput v6, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 5458
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    if-eqz v0, :cond_5

    .line 5459
    if-eqz p1, :cond_12

    .line 5460
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setIfCheckBoxShow(Z)V

    .line 5466
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 5467
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->setAddContactAble(Z)V

    .line 5468
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->removeFullScreen()V

    .line 5469
    return-void

    .line 5379
    :cond_6
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-eqz v0, :cond_1

    .line 5380
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->changeToAllContent()V

    .line 5381
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mBackUpContactList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 5382
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mBackUpContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5384
    :cond_7
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5385
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->mSelectedContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 5393
    :cond_8
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 5394
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->clearSelected()V

    .line 5395
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setIfCheckBoxShow(Z)V

    .line 5396
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 5397
    :cond_9
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 5398
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->clearSelected()V

    .line 5399
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5400
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->tagId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5401
    :cond_a
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 5402
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->clearSelected()V

    .line 5403
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setIfCheckBoxShow(Z)V

    .line 5404
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 5405
    :cond_b
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 5406
    iput-boolean v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mIsAddGroupMember:Z

    .line 5407
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->clearSelected()V

    .line 5408
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5409
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5410
    :cond_c
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    .line 5411
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->clearSelected()V

    .line 5412
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setIfCheckBoxShow(Z)V

    .line 5413
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 5414
    :cond_d
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 5415
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->clearSelected()V

    .line 5416
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5417
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5418
    :cond_e
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 5419
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->clearSelected()V

    .line 5420
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5421
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5422
    :cond_f
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 5423
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->clearSelected()V

    .line 5424
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5425
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5426
    :cond_10
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    .line 5427
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->clearSelected()V

    .line 5428
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5429
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5430
    :cond_11
    sget v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 5431
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->clearSelected()V

    .line 5432
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setIfCheckBoxShow(Z)V

    .line 5433
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCurrentPage:I

    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->contactId:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/CloudDialerActivity;->getCloudContactList(Ljava/lang/String;ILandroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5462
    :cond_12
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setIfCheckBoxShowNoClear(Z)V

    goto/16 :goto_2
.end method

.method public refreshNumber()V
    .locals 0

    .prologue
    .line 4026
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->resetAllContactsNumber(Landroid/content/Context;)V

    .line 4027
    return-void
.end method

.method public removeFullScreen()V
    .locals 3

    .prologue
    .line 5499
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5500
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5501
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5502
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 5503
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mainTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 5504
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mainTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5506
    :cond_0
    return-void
.end method

.method public saveHoriKbLastPosition()V
    .locals 4

    .prologue
    .line 2222
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadHoriContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v0, v1

    .line 2223
    .local v0, "left":I
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "horiBoardLastLeft"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2224
    return-void
.end method

.method public scrollHoriPadView(F)V
    .locals 7
    .param p1, "distance"    # F

    .prologue
    const/high16 v6, 0x43a00000    # 320.0f

    .line 2201
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadHoriContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 2202
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadHoriContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v4, p1

    float-to-int v1, v4

    .line 2203
    .local v1, "left":I
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadHoriContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 2204
    .local v3, "top":I
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    add-int v2, v1, v4

    .line 2205
    .local v2, "right":I
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadHoriContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 2206
    .local v0, "bottom":I
    if-gez v1, :cond_0

    .line 2207
    const/4 v1, 0x0

    .line 2208
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 2210
    :cond_0
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    invoke-virtual {v4}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getWidth()I

    move-result v4

    if-le v2, v4, :cond_1

    .line 2211
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    invoke-virtual {v4}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getWidth()I

    move-result v2

    .line 2212
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainLayout:Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;

    invoke-virtual {v4}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sub-int v1, v4, v5

    .line 2214
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeypadHoriContainer:Landroid/view/View;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2216
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_2
    return-void
.end method

.method public sendMessageToHandler(I)V
    .locals 2
    .param p1, "messageType"    # I

    .prologue
    .line 4368
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4369
    .local v0, "msg2":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4370
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4371
    return-void
.end method

.method public setAddContactAble(Z)V
    .locals 1
    .param p1, "able"    # Z

    .prologue
    .line 5472
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    if-eqz v0, :cond_3

    .line 5473
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    if-eqz v0, :cond_0

    .line 5474
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TextImageButton;->setClickable(Z)V

    .line 5475
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TextImageButton;->setEnabled(Z)V

    .line 5477
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    if-eqz v0, :cond_1

    .line 5478
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TextImageButton;->setClickable(Z)V

    .line 5479
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TextImageButton;->setEnabled(Z)V

    .line 5481
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    if-eqz v0, :cond_2

    .line 5482
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TextImageButton;->setClickable(Z)V

    .line 5483
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TextImageButton;->setEnabled(Z)V

    .line 5485
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    if-eqz v0, :cond_3

    .line 5486
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TextImageButton;->setClickable(Z)V

    .line 5487
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TextImageButton;->setEnabled(Z)V

    .line 5490
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    if-eqz v0, :cond_4

    .line 5491
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayUnderPanelButton:Lcom/lzx/iteam/widget/TextImageButton;

    if-eqz v0, :cond_4

    .line 5492
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayUnderPanelButton:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TextImageButton;->setClickable(Z)V

    .line 5493
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    iget-object v0, v0, Lcom/lzx/iteam/KeyboardHoriFrag;->mDisplayUnderPanelButton:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TextImageButton;->setEnabled(Z)V

    .line 5496
    :cond_4
    return-void
.end method

.method public setComponet(Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 8
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 2140
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listBgBitmap:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 2141
    iget v0, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listBgColor:I

    if-nez v0, :cond_2

    .line 2143
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 2159
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2162
    .local v7, "density":F
    iget v0, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listDividerColor:I

    if-nez v0, :cond_4

    .line 2163
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x664d4d4e

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2168
    :goto_1
    iget v0, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listTextHightLightColor:I

    if-nez v0, :cond_0

    .line 2169
    const v0, -0xffff01

    iput v0, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listTextHightLightColor:I

    .line 2172
    :cond_0
    iget v0, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listSectionColor:I

    if-nez v0, :cond_1

    .line 2173
    const-string v0, "#f1b6bfc6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listSectionColor:I

    .line 2179
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setSkin(Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 2180
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iget v1, p1, Lcom/lzx/iteam/bean/SkinCommonData;->nameColor:I

    iget v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->jobTitleColor:I

    iget v3, p1, Lcom/lzx/iteam/bean/SkinCommonData;->phoneColor:I

    .line 2181
    iget v4, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listTextHightLightColor:I

    iget v5, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listSectionColor:I

    iget v6, p1, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    .line 2180
    invoke-virtual/range {v0 .. v6}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setColor(IIIIII)V

    .line 2182
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinCommonData;->noNameBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setNoNameDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2183
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 2190
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mMainTitle:Landroid/view/View;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinCommonData;->mainTitleBgResid:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2191
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "keyboard_themecolor"

    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardThemeColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2193
    return-void

    .line 2147
    .end local v7    # "density":F
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget v1, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listBgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 2148
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget v1, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listBgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    goto :goto_0

    .line 2153
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 2154
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listBgBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2165
    .restart local v7    # "density":F
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->listDividerColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 3360
    iget v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardOri:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3361
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardHoriFrag:Lcom/lzx/iteam/KeyboardHoriFrag;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/KeyboardHoriFrag;->setFilterText(Ljava/lang/String;)V

    .line 3365
    :goto_0
    return-void

    .line 3363
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardVertFrag:Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/KeyboardVertFrag;->setFilterText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFullScreen(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 5509
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5510
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5511
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5512
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 5513
    const v1, 0x7f0e01c0

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mainTitle:Landroid/widget/TextView;

    .line 5514
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mainTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5515
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mainTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5516
    return-void
.end method

.method public setKeyBoardOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 1984
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    .line 1986
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    .line 1987
    iput p1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mKeyboardOri:I

    .line 1988
    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/lzx/iteam/CloudDialerActivity$5;-><init>(Lcom/lzx/iteam/CloudDialerActivity;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2050
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2052
    return-void
.end method

.method public setNoData(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1385
    if-eqz p1, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1391
    :goto_0
    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSelectImage(Z)V
    .locals 1
    .param p1, "onOroff"    # Z

    .prologue
    .line 4390
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCbSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4391
    return-void
.end method

.method public showPlusButtonWindow(Z)V
    .locals 10
    .param p1, "isInCloud"    # Z

    .prologue
    const v9, 0x7f0e002f

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4168
    if-eqz p1, :cond_0

    .line 4169
    iget v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupType:I

    if-eq v3, v6, :cond_1

    const-string v3, "1"

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4170
    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u53f7\u7801\u7c3f\u4e0d\u5141\u8bb8\u6210\u5458\u6dfb\u52a0\u65b0\u4eba"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 4250
    :cond_0
    :goto_0
    return-void

    .line 4171
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->groupId:Ljava/lang/String;

    const-string v4, "561"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4172
    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u53f7\u7801\u7c3f\u4e0d\u5141\u8bb8\u6210\u5458\u6dfb\u52a0\u65b0\u4eba"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4174
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4175
    .local v0, "mainView":Landroid/view/View;
    if-eqz p1, :cond_3

    .line 4176
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4177
    .local v2, "upload_view":Landroid/view/View;
    const v3, 0x7f0e002e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4178
    .local v1, "text_create":Landroid/widget/TextView;
    const-string v3, "\u6dfb\u52a0\u65b0\u6210\u5458"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4179
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4181
    .end local v1    # "text_create":Landroid/widget/TextView;
    .end local v2    # "upload_view":Landroid/view/View;
    :cond_3
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    .line 4182
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4183
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4184
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4185
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 4186
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4187
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4188
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4189
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4191
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/lzx/iteam/CloudDialerActivity$14;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CloudDialerActivity$14;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4205
    const v3, 0x7f0e0030

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 4206
    new-instance v4, Lcom/lzx/iteam/CloudDialerActivity$15;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CloudDialerActivity$15;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4231
    const v3, 0x7f0e0032

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/lzx/iteam/CloudDialerActivity$16;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CloudDialerActivity$16;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4238
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    const/16 v4, 0x50

    invoke-virtual {v3, v0, v4, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4239
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mAddContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 4241
    new-instance v3, Lcom/lzx/iteam/CloudDialerActivity$17;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CloudDialerActivity$17;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method public startUp(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 4678
    iget-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->whileLock:Z

    if-nez v0, :cond_0

    .line 4679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->whileLock:Z

    .line 4680
    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$22;

    invoke-direct {v0, p0, p1}, Lcom/lzx/iteam/CloudDialerActivity$22;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/database/Cursor;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 4837
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity$22;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4839
    :cond_0
    return-void
.end method

.method public updateCloudContactList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    const/4 v8, 0x0

    .line 4100
    if-eqz p1, :cond_0

    .line 4101
    new-instance v7, Lcom/lzx/iteam/CloudDialerActivity$CloudCompartor;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CloudDialerActivity$CloudCompartor;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 4102
    .local v7, "mc":Lcom/lzx/iteam/CloudDialerActivity$CloudCompartor;
    invoke-static {p1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4106
    .end local v7    # "mc":Lcom/lzx/iteam/CloudDialerActivity$CloudCompartor;
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    if-nez v0, :cond_3

    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    if-eqz v0, :cond_3

    .line 4107
    new-instance v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/lzx/iteam/adapter/CloudContactAdapter;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Lcom/lzx/iteam/bean/CloudGroup;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    iput-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    .line 4108
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget v1, v1, Lcom/lzx/iteam/bean/SkinCommonData;->nameColor:I

    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget v2, v2, Lcom/lzx/iteam/bean/SkinCommonData;->jobTitleColor:I

    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget v3, v3, Lcom/lzx/iteam/bean/SkinCommonData;->phoneColor:I

    .line 4109
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget v4, v4, Lcom/lzx/iteam/bean/SkinCommonData;->listTextHightLightColor:I

    iget-object v5, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget v5, v5, Lcom/lzx/iteam/bean/SkinCommonData;->listSectionColor:I

    iget-object v6, p0, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    .line 4108
    invoke-virtual/range {v0 .. v6}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setColor(IIIIII)V

    .line 4110
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v8}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setInterrupted(Z)V

    .line 4121
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 4123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 4124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudDialerActivity;->setNoData(Z)V

    .line 4129
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4130
    return-void

    .line 4112
    :cond_3
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    if-eqz v0, :cond_1

    .line 4113
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {v0, v8}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->setInterrupted(Z)V

    .line 4114
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->updateCloudGroup(Lcom/lzx/iteam/bean/CloudGroup;)V

    .line 4115
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity;->mCloudContactAdapter:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    invoke-virtual {p0}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->updateData(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 4126
    :cond_4
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/CloudDialerActivity;->setNoData(Z)V

    goto :goto_1
.end method
