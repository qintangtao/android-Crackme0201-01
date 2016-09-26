.class public Lcom/lzx/iteam/ManageGroupActivity;
.super Landroid/app/Activity;
.source "ManageGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ManageGroupActivity$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;,
        Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;
    }
.end annotation


# static fields
.field private static final CAMERA_WITH_DATA:I = 0xef0

.field private static final CROP_PHOTO:I = 0x6d

.field private static final GET_QN_TOKEN:I = 0x3e8

.field private static final ICON_SIZE:I = 0x60

.field private static final MSG_EXIT_GROUP:I = 0x67

.field private static final MSG_GET_GROUPINFO:I = 0x6c

.field private static final MSG_REMOVE_GROUP:I = 0x68

.field private static final MSG_REMOVE_MANAGER:I = 0x6b

.field private static final MSG_UPDATEGROUP:I = 0x66

.field private static final PHOTO_PICKED_WITH_DATA:I = 0xeed

.field public static final REQUEST_NEW_GROUP_NAME:I = 0xef1


# instance fields
.field private final PHOTO_RESOULT:I

.field private adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

.field private adapter1:Lcom/lzx/iteam/adapter/GroupGridAdapter;

.field private animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private createrData:Lcom/lzx/iteam/bean/GroupMemberData;

.field private imageBitmap:Landroid/graphics/Bitmap;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mApproveSetting:Landroid/widget/RelativeLayout;

.field private mBtnUpdate:Landroid/widget/Button;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

.field private mContactCount:I

.field private mContactId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCreateType:Ljava/lang/String;

.field private mCurrentPhotoFile:Ljava/io/File;

.field private mGroupAllowAdd:Landroid/widget/ToggleButton;

.field private mGroupAllowAddLayout:Landroid/widget/RelativeLayout;

.field private mGroupBack:Landroid/widget/LinearLayout;

.field private mGroupCreateLayout:Landroid/widget/RelativeLayout;

.field private mGroupCreator:Landroid/widget/TextView;

.field private mGroupDelete:Landroid/widget/RelativeLayout;

.field private mGroupDissolve:Landroid/widget/RelativeLayout;

.field private mGroupHead:Landroid/widget/ImageView;

.field private mGroupId:Ljava/lang/String;

.field private mGroupImg:Ljava/lang/String;

.field private mGroupManager:Landroid/widget/TextView;

.field private mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

.field private mGroupManagerLayout:Landroid/widget/RelativeLayout;

.field private mGroupName:Landroid/widget/TextView;

.field private mGroupNameLayout:Landroid/widget/RelativeLayout;

.field private mGroupType:I

.field mHandler:Landroid/os/Handler;

.field private mIsAllowAddMember:Z

.field private mIsUpdateImag:Z

.field private mIvHelp:Landroid/widget/ImageView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLlHelp:Landroid/widget/LinearLayout;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mManageGroupMain:Landroid/widget/LinearLayout;

.field private mManageGroupTitle:Landroid/widget/TextView;

.field private mNormalGrid:Landroid/widget/GridView;

.field private mNotMangerGone:Landroid/widget/LinearLayout;

.field private mOriginalGroupName:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mRlAttendanceSetting:Landroid/widget/RelativeLayout;

.field private mRlPhotoLayout:Landroid/widget/RelativeLayout;

.field private mSetPhotoPop:Landroid/widget/PopupWindow;

.field private mUid:Ljava/lang/String;

.field private mWhere:Ljava/lang/String;

.field private managerData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/GroupManageCreate;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 103
    new-instance v0, Lcom/lzx/iteam/ManageGroupActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ManageGroupActivity$1;-><init>(Lcom/lzx/iteam/ManageGroupActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mHandler:Landroid/os/Handler;

    .line 870
    const/16 v0, 0x457

    iput v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->PHOTO_RESOULT:I

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ManageGroupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ManageGroupActivity;->groupGet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ManageGroupActivity;Lcom/lzx/iteam/gridimg/ImageAdapter;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lzx/iteam/ManageGroupActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/lzx/iteam/gridimg/AllEasyGridView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/lzx/iteam/gridimg/ImageAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ManageGroupActivity;Lcom/lzx/iteam/adapter/GroupGridAdapter;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lzx/iteam/ManageGroupActivity;->adapter1:Lcom/lzx/iteam/adapter/GroupGridAdapter;

    return-void
.end method

.method static synthetic access$14(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/lzx/iteam/adapter/GroupGridAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->adapter1:Lcom/lzx/iteam/adapter/GroupGridAdapter;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupHead:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ManageGroupActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$20(Lcom/lzx/iteam/ManageGroupActivity;)Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/ManageGroupActivity;I)V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ManageGroupActivity;->setGroupType(I)V

    return-void
.end method

.method static synthetic access$22(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/ManageGroupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ManageGroupActivity;->exitGroup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupCreator:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ManageGroupActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ManageGroupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ManageGroupActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ManageGroupActivity;->setInfoView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ManageGroupActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManager:Landroid/widget/TextView;

    return-object v0
.end method

.method private exitGroup(Ljava/lang/String;)V
    .locals 5
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 969
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_id"

    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContactId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    .end local v0    # "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 973
    .restart local v0    # "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/group/remove"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 974
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 975
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 976
    return-void
.end method

.method public static getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .param p0, "photoUri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 832
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 839
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 840
    return-object v0
.end method

.method private getGroupType()I
    .locals 2

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "allowAdd":I
    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupAllowAdd:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    const/4 v0, 0x1

    .line 468
    :cond_0
    return v0
.end method

.method private getIntentData()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v8, 0x8

    .line 364
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 365
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "groupData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudGroup;

    iput-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 366
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v2, v2, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    iput-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v6, v5, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    .line 368
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget v2, v2, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    iput v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupType:I

    .line 369
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v2, v2, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    iput-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    .line 370
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v2, v2, Lcom/lzx/iteam/bean/CloudGroup;->groupImg:Ljava/lang/String;

    iput-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupImg:Ljava/lang/String;

    .line 371
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget v2, v2, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    iput v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContactCount:I

    .line 372
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v2, v2, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    iput-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContactId:Ljava/lang/String;

    .line 383
    const-string v2, "where"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mWhere:Ljava/lang/String;

    .line 384
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupType:I

    invoke-direct {p0, v2}, Lcom/lzx/iteam/ManageGroupActivity;->setGroupType(I)V

    .line 386
    iget v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupType:I

    shr-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIsAllowAddMember:Z

    .line 388
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupImg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupImg:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupImg:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v0, ""

    .line 390
    .local v0, "imgPath":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupHead:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lzx/iteam/ManageGroupActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v7, p0, Lcom/lzx/iteam/ManageGroupActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    invoke-virtual {v2, v0, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 393
    .end local v0    # "imgPath":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lzx/iteam/ManageGroupActivity;->setInfoView(Ljava/lang/String;)V

    .line 395
    const-string v2, "add_manager"

    iget-object v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mWhere:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 396
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIvHelp:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v8}, Landroid/widget/GridView;->setVisibility(I)V

    .line 417
    :goto_2
    const-string v2, "err_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    const-string v4, "err_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u5bf9\u4e0d\u8d77,\u4e0d\u80fd\u8bbe\u7f6e"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "err_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u4e3a\u7ba1\u7406\u5458"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 421
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 386
    goto :goto_0

    .line 389
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupImg:Ljava/lang/String;

    goto :goto_1

    .line 400
    :cond_4
    const-string v2, "structurebackgrid"

    iget-object v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mWhere:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 401
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIvHelp:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    const-string v2, "3"

    iget-object v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 404
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v2, v4}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    .line 405
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v8}, Landroid/widget/GridView;->setVisibility(I)V

    .line 410
    :goto_3
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupTitle:Landroid/widget/TextView;

    const-string v4, "\u7ba1\u7406\u5458"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 407
    :cond_5
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 408
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v2, v8}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    goto :goto_3

    .line 412
    :cond_6
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 413
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIvHelp:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v2, v8}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    .line 415
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v8}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public static getPhotoPickIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 860
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 861
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 801
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 802
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 803
    return-object v0
.end method

.method private groupGet(Ljava/lang/String;)V
    .locals 5
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 1021
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 1023
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    new-instance v0, Lcom/lzx/iteam/net/GetGroupInfoMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetGroupInfoMsg;-><init>(Landroid/os/Message;)V

    .line 1026
    .local v0, "getInfo":Lcom/lzx/iteam/net/GetGroupInfoMsg;
    const-string v2, "/api/group/get"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mApi:Ljava/lang/String;

    .line 1027
    iput-object v1, v0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mParams:Ljava/util/List;

    .line 1028
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1029
    return-void
.end method

.method private groupUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "groupType"    # Ljava/lang/String;
    .param p4, "groupImg"    # Ljava/lang/String;

    .prologue
    .line 607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    if-eqz p2, :cond_0

    .line 611
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_name"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_0
    if-eqz p3, :cond_1

    .line 614
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_type"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_1
    if-eqz p4, :cond_2

    .line 617
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_img"

    invoke-direct {v2, v3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_2
    new-instance v1, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;-><init>(Landroid/os/Message;)V

    .line 620
    .local v1, "updateGroupMessage":Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;
    const-string v2, "/api/group/update"

    iput-object v2, v1, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mApi:Ljava/lang/String;

    .line 621
    iput-object v0, v1, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mParams:Ljava/util/List;

    .line 622
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 623
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 271
    const v0, 0x7f0e04c0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mMainView:Landroid/widget/LinearLayout;

    .line 272
    const v0, 0x7f0e04c5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIvHelp:Landroid/widget/ImageView;

    .line 273
    const v0, 0x7f0e04c3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mLlHelp:Landroid/widget/LinearLayout;

    .line 274
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mLlHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v0, 0x7f0e04c8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mRlPhotoLayout:Landroid/widget/RelativeLayout;

    .line 276
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mRlPhotoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v0, 0x7f0e04c9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupHead:Landroid/widget/ImageView;

    .line 278
    const v0, 0x7f0e017e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupName:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f0e04ce

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupCreator:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f0e04d2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManager:Landroid/widget/TextView;

    .line 281
    const v0, 0x7f0e04c4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupTitle:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f0e04d5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupAllowAdd:Landroid/widget/ToggleButton;

    .line 283
    const v0, 0x7f0e04d4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupAllowAddLayout:Landroid/widget/RelativeLayout;

    .line 284
    const v0, 0x7f0e04da

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupDelete:Landroid/widget/RelativeLayout;

    .line 285
    const v0, 0x7f0e04cc

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupCreateLayout:Landroid/widget/RelativeLayout;

    .line 286
    const v0, 0x7f0e04d3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNotMangerGone:Landroid/widget/LinearLayout;

    .line 287
    const v0, 0x7f0e04dc

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupDissolve:Landroid/widget/RelativeLayout;

    .line 288
    const v0, 0x7f0e04ca

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupNameLayout:Landroid/widget/RelativeLayout;

    .line 289
    const v0, 0x7f0e04cf

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerLayout:Landroid/widget/RelativeLayout;

    .line 290
    const v0, 0x7f0e04d6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mRlAttendanceSetting:Landroid/widget/RelativeLayout;

    .line 291
    const v0, 0x7f0e04c2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupBack:Landroid/widget/LinearLayout;

    .line 292
    const v0, 0x7f0e04c6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mBtnUpdate:Landroid/widget/Button;

    .line 293
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mBtnUpdate:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v0, 0x7f0e04d8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mApproveSetting:Landroid/widget/RelativeLayout;

    .line 295
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mApproveSetting:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v0, 0x7f0e04c7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupMain:Landroid/widget/LinearLayout;

    .line 297
    const v0, 0x7f0e04df

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/gridimg/AllEasyGridView;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    .line 298
    const v0, 0x7f0e04de

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    .line 299
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupAllowAdd:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 300
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupAllowAdd:Landroid/widget/ToggleButton;

    const-string v1, "mAllowMemberAdd"

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupAllowAddLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupDelete:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupDissolve:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupNameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mRlAttendanceSetting:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    return-void
.end method

.method private removeManager(Ljava/lang/String;)V
    .locals 5
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 979
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 980
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 982
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_id"

    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContactId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "manager_contact_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    const-string v2, "/api/group/remove_manager"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 988
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 989
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 990
    return-void
.end method

.method private setGroupType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 455
    if-ne p1, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupAllowAdd:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupAllowAdd:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private setInfoView(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0e04dd

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 431
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :goto_0
    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNotMangerGone:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u9000\u51fa\u56e2\u961f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupNameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 441
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mRlPhotoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 442
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 452
    :goto_1
    return-void

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNotMangerGone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/ManageGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u9000\u51fa\u56e2\u961f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupNameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 449
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mRlPhotoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 450
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_1
.end method

.method private showSetPhotoPop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 733
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 734
    .local v3, "mainView":Landroid/view/View;
    const v4, 0x7f0e0039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 735
    .local v2, "btnTakePhoto":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/ManageGroupActivity$2;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/ManageGroupActivity$2;-><init>(Lcom/lzx/iteam/ManageGroupActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    const v4, 0x7f0e003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 743
    .local v1, "btnCheckFromGallery":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/ManageGroupActivity$3;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/ManageGroupActivity$3;-><init>(Lcom/lzx/iteam/ManageGroupActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    const v4, 0x7f0e0032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 751
    .local v0, "btnCancle":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/ManageGroupActivity$4;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/ManageGroupActivity$4;-><init>(Lcom/lzx/iteam/ManageGroupActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    .line 758
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 759
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 760
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 761
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 762
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 763
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 764
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 765
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 766
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mMainView:Landroid/widget/LinearLayout;

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 767
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 769
    new-instance v4, Lcom/lzx/iteam/ManageGroupActivity$5;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/ManageGroupActivity$5;-><init>(Lcom/lzx/iteam/ManageGroupActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 776
    return-void
.end method


# virtual methods
.method public addImage()V
    .locals 3

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v1, "group_name"

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const-string v1, "intent_tag_name"

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string v1, "contact_count"

    iget v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContactCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    const-string v1, "contact_id"

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContactId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v1, "create_type"

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v1, "manage_add_manager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 636
    return-void
.end method

.method public delImage(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->managerData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/GroupManageCreate;

    iget-object v0, v0, Lcom/lzx/iteam/bean/GroupManageCreate;->contactId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->removeManager(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method protected doCropPhoto(Ljava/io/File;)V
    .locals 5
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    .line 812
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 813
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 814
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 816
    const/4 v3, 0x0

    .line 812
    invoke-static {p0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 819
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/ManageGroupActivity;->getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 820
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/ManageGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 822
    :catch_0
    move-exception v1

    const v1, 0x7f080125

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doPickPhotoFromGallery()V
    .locals 3

    .prologue
    .line 849
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/ManageGroupActivity;->getPhotoPickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 850
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xeed

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/ManageGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 852
    :catch_0
    move-exception v1

    const v1, 0x7f080125

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doTakePhoto()V
    .locals 4

    .prologue
    .line 784
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Yun/Images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 785
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 786
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 788
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "image"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCurrentPhotoFile:Ljava/io/File;

    .line 789
    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-static {v2}, Lcom/lzx/iteam/ManageGroupActivity;->getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v1

    .line 790
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0xef0

    invoke-virtual {p0, v1, v2}, Lcom/lzx/iteam/ManageGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 792
    :catch_0
    move-exception v2

    const v2, 0x7f080125

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public getQnToken([B)V
    .locals 6
    .param p1, "file"    # [B

    .prologue
    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v2, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "key"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "gid"

    iget-object v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v1, Lcom/lzx/iteam/net/GetQnTokenMsg;

    iget-object v3, p0, Lcom/lzx/iteam/ManageGroupActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {v1, v3, p1, v0}, Lcom/lzx/iteam/net/GetQnTokenMsg;-><init>(Landroid/os/Message;[BLjava/lang/String;)V

    .line 1039
    .local v1, "getQnTokenMsg":Lcom/lzx/iteam/net/GetQnTokenMsg;
    const-string v3, "/api/qn/get_group_token"

    iput-object v3, v1, Lcom/lzx/iteam/net/GetQnTokenMsg;->mApi:Ljava/lang/String;

    .line 1040
    iput-object v2, v1, Lcom/lzx/iteam/net/GetQnTokenMsg;->mParams:Ljava/util/List;

    .line 1041
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1042
    return-void
.end method

.method public initProperty()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const v1, 0x7f0200b4

    .line 326
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 327
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 328
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 329
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 333
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 334
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 327
    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 336
    new-instance v0, Lcom/lzx/iteam/ManageGroupActivity$AnimateFirstDisplayListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/ManageGroupActivity$AnimateFirstDisplayListener;-><init>(Lcom/lzx/iteam/ManageGroupActivity$AnimateFirstDisplayListener;)V

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 337
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 338
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 339
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mUid:Ljava/lang/String;

    .line 340
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 890
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 891
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 892
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 893
    sparse-switch p1, :sswitch_data_0

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 906
    :sswitch_0
    iput-boolean v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIsUpdateImag:Z

    .line 907
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ManageGroupActivity;->startPhotoZoom(Landroid/net/Uri;)V

    goto :goto_0

    .line 910
    :sswitch_1
    iput-boolean v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIsUpdateImag:Z

    .line 911
    const-string v4, "data"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->imageBitmap:Landroid/graphics/Bitmap;

    .line 917
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/lzx/iteam/util/PhotoUtil;->compressAvatarImage(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ManageGroupActivity;->getQnToken([B)V

    goto :goto_0

    .line 920
    :sswitch_2
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 921
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lzx/iteam/util/PhotoUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 922
    .local v1, "degree":I
    if-eqz v1, :cond_1

    .line 923
    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhotoUtil;->rotaingImageView(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 924
    const-string v4, "/Yun/Images"

    invoke-static {v0, p0, v4}, Lcom/lzx/iteam/util/PhotoUtil;->saveBitmaptoSdCard(Landroid/graphics/Bitmap;Landroid/app/Activity;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCurrentPhotoFile:Ljava/io/File;

    .line 926
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ManageGroupActivity;->doCropPhoto(Ljava/io/File;)V

    goto :goto_0

    .line 929
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "degree":I
    :sswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 930
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 931
    const-string v4, "data"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->imageBitmap:Landroid/graphics/Bitmap;

    .line 934
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/lzx/iteam/util/PhotoUtil;->compressAvatarImage(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ManageGroupActivity;->getQnToken([B)V

    goto :goto_0

    .line 939
    .end local v2    # "extras":Landroid/os/Bundle;
    :sswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "new_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 940
    .local v3, "newName":Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3, v6, v6}, Lcom/lzx/iteam/ManageGroupActivity;->groupUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 893
    :sswitch_data_0
    .sparse-switch
        0x6d -> :sswitch_1
        0x457 -> :sswitch_3
        0xeed -> :sswitch_0
        0xef0 -> :sswitch_2
        0xef1 -> :sswitch_4
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 604
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 476
    :pswitch_1
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupAllowAdd:Landroid/widget/ToggleButton;

    invoke-virtual {v9}, Landroid/widget/ToggleButton;->toggle()V

    .line 477
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/lzx/iteam/ManageGroupActivity;->getGroupType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v13, v10, v13}, Lcom/lzx/iteam/ManageGroupActivity;->groupUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    .local v5, "help":Landroid/content/Intent;
    const-string v9, "title"

    const-string v10, "\u56e2\u961f\u6709\u54ea\u4e9b\u7ba1\u7406\u529f\u80fd?"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v9, "type"

    const/16 v10, 0xd

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/ManageGroupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 490
    .end local v5    # "help":Landroid/content/Intent;
    :pswitch_3
    new-instance v7, Landroid/content/Intent;

    const-class v9, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v7, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    .local v7, "intent1":Landroid/content/Intent;
    const-string v9, "manage_delete_member"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v9, "group_name"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v9, "group_id"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v9, "create_type"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v9, "intent_tag_name"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v9, "contact_count"

    iget v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContactCount:I

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    const-string v9, "contact_id"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContactId:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-virtual {p0, v7}, Lcom/lzx/iteam/ManageGroupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 503
    .end local v7    # "intent1":Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->showExitGroupDlg()V

    goto :goto_0

    .line 506
    :pswitch_5
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v9}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/widget/GridView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 507
    :cond_1
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupMain:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIvHelp:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v9, v11}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    .line 510
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    invoke-virtual {v9, v11}, Landroid/widget/GridView;->setVisibility(I)V

    .line 511
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080094

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 512
    :cond_2
    const-string v9, "structureback"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mWhere:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "structurebackgrid"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mWhere:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 513
    :cond_3
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 514
    .local v8, "intent2":Landroid/content/Intent;
    const-string v9, "group_id"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const/16 v9, 0x2771

    invoke-virtual {p0, v9, v8}, Lcom/lzx/iteam/ManageGroupActivity;->setResult(ILandroid/content/Intent;)V

    .line 516
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->finish()V

    goto/16 :goto_0

    .line 528
    .end local v8    # "intent2":Landroid/content/Intent;
    :cond_4
    sput v12, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 531
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->finish()V

    goto/16 :goto_0

    .line 535
    :pswitch_6
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/lzx/iteam/UpdateGroupNameActivity;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    .local v6, "intent":Landroid/content/Intent;
    const-string v9, "old_name"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupName:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    const/16 v9, 0xef1

    invoke-virtual {p0, v6, v9}, Lcom/lzx/iteam/ManageGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 540
    .end local v6    # "intent":Landroid/content/Intent;
    :pswitch_7
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupMain:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIvHelp:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    const-string v9, "3"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 543
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v9, v12}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    .line 544
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    invoke-virtual {v9, v11}, Landroid/widget/GridView;->setVisibility(I)V

    .line 549
    :goto_1
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupTitle:Landroid/widget/TextView;

    const-string v10, "\u7ba1\u7406\u5458"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 546
    :cond_5
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    invoke-virtual {v9, v12}, Landroid/widget/GridView;->setVisibility(I)V

    .line 547
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v9, v11}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    goto :goto_1

    .line 552
    :pswitch_8
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContext:Landroid/content/Context;

    const-class v10, Lcom/lzx/iteam/CloudContactDetailActivity;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    .local v3, "detailIntent":Landroid/content/Intent;
    const-string v9, "com.lzx.iteam.ACTION_CLOUD_CONTACT"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v9, ""

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->createrData:Lcom/lzx/iteam/bean/GroupMemberData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/GroupMemberData;->getUser_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v9, "group_id"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v9, "contact_id"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->createrData:Lcom/lzx/iteam/bean/GroupMemberData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/GroupMemberData;->getContact_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v9, "current_contact_id"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContactId:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v9, "group_id"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v9, "group_name"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v9, "user_id"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->createrData:Lcom/lzx/iteam/bean/GroupMemberData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/GroupMemberData;->getUser_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v9, "user_type"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ManageGroupActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 565
    .end local v3    # "detailIntent":Landroid/content/Intent;
    :pswitch_9
    invoke-direct {p0}, Lcom/lzx/iteam/ManageGroupActivity;->showSetPhotoPop()V

    goto/16 :goto_0

    .line 569
    :pswitch_a
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupName:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, "groupName":Ljava/lang/String;
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupAllowAdd:Landroid/widget/ToggleButton;

    invoke-virtual {v9}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 571
    .local v0, "allowAdd":Z
    iget-object v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIsAllowAddMember:Z

    if-ne v0, v9, :cond_0

    goto/16 :goto_0

    .line 577
    .end local v0    # "allowAdd":Z
    .end local v4    # "groupName":Ljava/lang/String;
    :pswitch_b
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/lzx/iteam/AttendanceCreateActivity;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    .local v2, "attendance":Landroid/content/Intent;
    const-string v9, "group_id"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string v9, "group_name"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v9, "user_type"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v9, "contact_id"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContactId:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ManageGroupActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 585
    .end local v2    # "attendance":Landroid/content/Intent;
    :pswitch_c
    new-instance v1, Landroid/content/Intent;

    const-class v9, Lcom/lzx/iteam/ScheduleManagerActivity;

    invoke-direct {v1, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .local v1, "approve":Landroid/content/Intent;
    const-string v9, "groupData"

    iget-object v10, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 600
    const-string v9, "approval_leader_add"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ManageGroupActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e04c2
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 262
    const v0, 0x7f0300ba

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->setContentView(I)V

    .line 263
    iput-object p0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContext:Landroid/content/Context;

    .line 264
    invoke-direct {p0}, Lcom/lzx/iteam/ManageGroupActivity;->initViews()V

    .line 265
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->initProperty()V

    .line 266
    invoke-direct {p0}, Lcom/lzx/iteam/ManageGroupActivity;->getIntentData()V

    .line 268
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1060
    packed-switch p1, :pswitch_data_0

    .line 1082
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1062
    :pswitch_0
    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v1}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupMain:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1064
    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mIvHelp:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1065
    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupManagerGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    .line 1066
    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mNormalGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1067
    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mManageGroupTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1068
    :cond_1
    const-string v1, "structureback"

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "structurebackgrid"

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1069
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1070
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    const/16 v1, 0x2771

    invoke-virtual {p0, v1, v0}, Lcom/lzx/iteam/ManageGroupActivity;->setResult(ILandroid/content/Intent;)V

    .line 1072
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->finish()V

    goto :goto_0

    .line 1074
    .end local v0    # "intent2":Landroid/content/Intent;
    :cond_3
    sput v3, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 1077
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageGroupActivity;->finish()V

    goto :goto_0

    .line 1060
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 425
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 426
    iget-object v0, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lzx/iteam/ManageGroupActivity;->groupGet(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public queryImage(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 656
    return-void
.end method

.method public setPhoto(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "file"    # [B
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1045
    const-string v0, "\u4e03\u725b--token"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string v0, "\u4e03\u725b--fileName"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-static {p0}, Lcom/lzx/iteam/DialerApp;->getUploadManager(Landroid/content/Context;)Lcom/qiniu/android/storage/UploadManager;

    move-result-object v0

    .line 1048
    new-instance v4, Lcom/lzx/iteam/ManageGroupActivity$7;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/ManageGroupActivity$7;-><init>(Lcom/lzx/iteam/ManageGroupActivity;)V

    .line 1054
    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    .line 1047
    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 1055
    return-void
.end method

.method public showExitGroupDlg()V
    .locals 5

    .prologue
    .line 996
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 997
    .local v1, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    iget-object v3, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f080061

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 998
    .local v2, "okText":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/ManageGroupActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f08002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCreateType:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1000
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u89e3\u6563"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u56e2\u961f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u56e2\u961f\u7c3f\u89e3\u6563\u540e,\u6240\u6709\u6210\u5458\u5c06\u5931\u53bb\u6b64\u56e2\u961f\n\u6b64\u52a8\u4f5c\u4e0d\u53ef\u6062\u590d,\u662f\u5426\u786e\u8ba4\u89e3\u6563?"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 1004
    :goto_0
    new-instance v3, Lcom/lzx/iteam/ManageGroupActivity$6;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ManageGroupActivity$6;-><init>(Lcom/lzx/iteam/ManageGroupActivity;)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 1018
    return-void

    .line 1002
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9000\u51fa"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u56e2\u961f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u56e2\u961f\u56e2\u961f\u540e,\u6240\u6709\u6210\u5458\u5c06\u5931\u53bb\u60a8\u7684\u8054\u7cfb\u65b9\u5f0f\n\u662f\u5426\u786e\u8ba4\u9000\u51fa?"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public startPhotoZoom(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 873
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 878
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 881
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 883
    const/16 v1, 0x457

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/ManageGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 884
    return-void
.end method

.method public updateGroupInfo(Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;

    .prologue
    .line 713
    if-eqz p1, :cond_2

    .line 714
    iget-object v1, p1, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupName:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateCloudGrupName(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_0
    iget-object v1, p1, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupImg:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 719
    iget-object v1, p1, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupImg:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v0, ""

    .line 720
    .local v0, "imgPath":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/ManageGroupActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p0, Lcom/lzx/iteam/ManageGroupActivity;->mGroupHead:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lzx/iteam/ManageGroupActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 722
    .end local v0    # "imgPath":Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupType:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 723
    iget-object v1, p1, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/ManageGroupActivity;->setGroupType(I)V

    .line 726
    :cond_2
    return-void

    .line 719
    :cond_3
    iget-object v0, p1, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;->groupImg:Ljava/lang/String;

    goto :goto_0
.end method
