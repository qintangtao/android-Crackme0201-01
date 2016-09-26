.class public Lcom/lzx/iteam/FakeDialog;
.super Landroid/app/Activity;
.source "FakeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DIALOG_MESSAGE:Ljava/lang/String; = "dialog_message"

.field public static final DIALOG_NUMBER:Ljava/lang/String; = "dialog_number"

.field public static final DIALOG_TITLE:Ljava/lang/String; = "dialog_title"


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mMessage:Landroid/widget/TextView;

.field private mOkBtn:Landroid/widget/Button;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getDownload(Lcom/lzx/iteam/util/PreferenceUtil;Landroid/content/Context;)V
    .locals 4
    .param p0, "preferenceUtil"    # Lcom/lzx/iteam/util/PreferenceUtil;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v2, "twosimdownloadurl"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 56
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method private getIntentData()V
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/lzx/iteam/FakeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "dialog_title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "titleText":Ljava/lang/String;
    const-string v3, "dialog_message"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "titleMessage":Ljava/lang/String;
    const-string v3, "dialog_number"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/FakeDialog;->mPhoneNumber:Ljava/lang/String;

    .line 48
    iget-object v3, p0, Lcom/lzx/iteam/FakeDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, p0, Lcom/lzx/iteam/FakeDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 66
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/FakeDialog;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    invoke-static {v0, p0}, Lcom/lzx/iteam/FakeDialog;->getDownload(Lcom/lzx/iteam/util/PreferenceUtil;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/FakeDialog;->finish()V

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    const v0, 0x7f08006e

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 63
    :pswitch_data_0
    .packed-switch 0x7f0e03e3
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FakeDialog;->setContentView(I)V

    .line 33
    const v0, 0x7f0e03e3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FakeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/FakeDialog;->mOkBtn:Landroid/widget/Button;

    .line 34
    const v0, 0x7f0e03e4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FakeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/FakeDialog;->mCancel:Landroid/widget/Button;

    .line 35
    const v0, 0x7f0e03e1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FakeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FakeDialog;->mTitle:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0e03e2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FakeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FakeDialog;->mMessage:Landroid/widget/TextView;

    .line 37
    invoke-direct {p0}, Lcom/lzx/iteam/FakeDialog;->getIntentData()V

    .line 38
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/FakeDialog;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/FakeDialog;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/FakeDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
