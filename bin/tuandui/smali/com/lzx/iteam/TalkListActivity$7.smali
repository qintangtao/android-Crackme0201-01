.class Lcom/lzx/iteam/TalkListActivity$7;
.super Ljava/lang/Object;
.source "TalkListActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/TalkListActivity;->showScoreDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TalkListActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TalkListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity$7;->this$0:Lcom/lzx/iteam/TalkListActivity;

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 684
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 685
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$7;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$13(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "score_app_v1"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 687
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 6
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v5, 0x0

    .line 668
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity$7;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v2}, Lcom/lzx/iteam/TalkListActivity;->access$13(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "score_app_v1"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 671
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzx/iteam/TalkListActivity$7;->this$0:Lcom/lzx/iteam/TalkListActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/TalkListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 672
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 673
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 674
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity$7;->this$0:Lcom/lzx/iteam/TalkListActivity;

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/TalkListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 680
    return-void

    .line 676
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity$7;->this$0:Lcom/lzx/iteam/TalkListActivity;

    const-string v3, "Couldn\'t launch the market !"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
