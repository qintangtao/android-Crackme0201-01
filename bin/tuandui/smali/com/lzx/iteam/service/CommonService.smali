.class public Lcom/lzx/iteam/service/CommonService;
.super Landroid/app/Service;
.source "CommonService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/service/CommonService$PhoneCallListener;
    }
.end annotation


# static fields
.field public static final CALL_SHOW_CONTACT_CANCEL:I = 0xc

.field public static final CALL_SHOW_CONTACT_DISPLAY:I = 0xb

.field private static final SHOW_CONTACT_X:Ljava/lang/String; = "show_contact_x"

.field private static final SHOW_CONTACT_Y:Ljava/lang/String; = "show_contact_y"


# instance fields
.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContactInfoView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/lzx/iteam/service/CommonService$PhoneCallListener;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mShowContactX:F

.field private mShowContactY:F

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mUid:Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/lzx/iteam/service/CommonService;->mWindowManager:Landroid/view/WindowManager;

    .line 41
    iput-object v0, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 54
    new-instance v0, Lcom/lzx/iteam/service/CommonService$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/service/CommonService$1;-><init>(Lcom/lzx/iteam/service/CommonService;)V

    iput-object v0, p0, Lcom/lzx/iteam/service/CommonService;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/service/CommonService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/lzx/iteam/service/CommonService;->showCallView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/service/CommonService;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/service/CommonService;)F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/lzx/iteam/service/CommonService;->mShowContactY:F

    return v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/service/CommonService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/service/CommonService;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/service/CommonService;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/service/CommonService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/service/CommonService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/service/CommonService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/service/CommonService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/service/CommonService;F)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/lzx/iteam/service/CommonService;->mShowContactX:F

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/service/CommonService;F)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/lzx/iteam/service/CommonService;->mShowContactY:F

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/service/CommonService;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/lzx/iteam/service/CommonService;->mShowContactX:F

    return v0
.end method

.method private showCallView(Ljava/lang/String;)V
    .locals 9
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 172
    :try_start_0
    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v7, "useid"

    const-string v8, "\uff0d1"

    invoke-virtual {v6, v7, v8}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/service/CommonService;->mUid:Ljava/lang/String;

    .line 173
    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v7, p0, Lcom/lzx/iteam/service/CommonService;->mUid:Ljava/lang/String;

    invoke-static {p1}, Lcom/lzx/iteam/util/PhoneNumberUtils;->cutPlus86Formatter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->findOneContact(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "CommonService"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 176
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/service/CommonService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 177
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0300ea

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;

    .line 178
    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;

    const v7, 0x7f0e0603

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 179
    .local v3, "contactPhone":Landroid/widget/TextView;
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;

    const v7, 0x7f0e0602

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    .local v1, "contactGroup":Landroid/widget/TextView;
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 183
    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;

    const v7, 0x7f0e0604

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 184
    .local v2, "contactJob":Landroid/widget/TextView;
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .end local v2    # "contactJob":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;

    new-instance v7, Lcom/lzx/iteam/service/CommonService$2;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/service/CommonService$2;-><init>(Lcom/lzx/iteam/service/CommonService;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    iget-object v6, p0, Lcom/lzx/iteam/service/CommonService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/lzx/iteam/service/CommonService;->mContactInfoView:Landroid/view/View;

    iget-object v8, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "contactGroup":Landroid/widget/TextView;
    .end local v3    # "contactPhone":Landroid/widget/TextView;
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v4

    .line 237
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    new-instance v2, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 88
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 89
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/service/CommonService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 90
    new-instance v2, Lcom/lzx/iteam/service/CommonService$PhoneCallListener;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/service/CommonService$PhoneCallListener;-><init>(Lcom/lzx/iteam/service/CommonService;)V

    iput-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mListener:Lcom/lzx/iteam/service/CommonService$PhoneCallListener;

    .line 91
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mTelManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/lzx/iteam/service/CommonService;->mListener:Lcom/lzx/iteam/service/CommonService$PhoneCallListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 92
    invoke-virtual {p0}, Lcom/lzx/iteam/service/CommonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mWindowManager:Landroid/view/WindowManager;

    .line 95
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 107
    invoke-static {}, Lcom/lzx/iteam/util/AndroidRomUtil;->isMIUI()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 112
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 114
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 116
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 117
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 119
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "show_contact_x"

    invoke-virtual {v2, v3, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "x":I
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "show_contact_y"

    invoke-virtual {v2, v3, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 121
    .local v1, "y":I
    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 123
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 124
    const-string v2, "CommonService"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  old  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_1
    const-string v2, "CommonService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 110
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 126
    .restart local v0    # "x":I
    .restart local v1    # "y":I
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 127
    iget-object v2, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 128
    const-string v2, "CommonService"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "   default  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/service/CommonService;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 244
    iget-object v0, p0, Lcom/lzx/iteam/service/CommonService;->mTelManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lzx/iteam/service/CommonService;->mListener:Lcom/lzx/iteam/service/CommonService$PhoneCallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 245
    return-void
.end method
