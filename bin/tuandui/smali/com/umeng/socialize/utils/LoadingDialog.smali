.class public Lcom/umeng/socialize/utils/LoadingDialog;
.super Ljava/lang/Object;
.source "LoadingDialog.java"


# static fields
.field private static theme:I

.field private static waitingMessage:I

.field private static waitingRedirect:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 12
    sput v0, Lcom/umeng/socialize/utils/LoadingDialog;->theme:I

    .line 13
    sput v0, Lcom/umeng/socialize/utils/LoadingDialog;->waitingRedirect:I

    .line 14
    sput v0, Lcom/umeng/socialize/utils/LoadingDialog;->waitingMessage:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProgressDialog(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 26
    sget v0, Lcom/umeng/socialize/utils/LoadingDialog;->theme:I

    if-ne v0, v2, :cond_0

    .line 27
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "Theme.UMDialog"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/umeng/socialize/utils/LoadingDialog;->theme:I

    .line 30
    :cond_0
    if-nez p3, :cond_1

    sget v0, Lcom/umeng/socialize/utils/LoadingDialog;->waitingRedirect:I

    if-ne v0, v2, :cond_1

    .line 31
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_text_waitting_redirect"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/umeng/socialize/utils/LoadingDialog;->waitingRedirect:I

    .line 34
    :cond_1
    if-nez p3, :cond_2

    sget v0, Lcom/umeng/socialize/utils/LoadingDialog;->waitingMessage:I

    if-ne v0, v2, :cond_2

    .line 35
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_text_waitting_message"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/umeng/socialize/utils/LoadingDialog;->waitingMessage:I

    .line 40
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    sget v1, Lcom/umeng/socialize/utils/LoadingDialog;->theme:I

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    if-nez p3, :cond_3

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    sget v2, Lcom/umeng/socialize/utils/LoadingDialog;->waitingRedirect:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {p0, p1}, Lcom/umeng/socialize/common/SocialSNSHelper;->getShowWord(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    sget v2, Lcom/umeng/socialize/utils/LoadingDialog;->waitingMessage:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 53
    :cond_3
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    return-object v0
.end method
