.class Lcom/lzx/iteam/SkinList$1;
.super Landroid/os/Handler;
.source "SkinList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/SkinList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/SkinList;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SkinList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 47
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v6, v6, Lcom/lzx/iteam/SkinList;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget v5, v5, Lcom/lzx/iteam/SkinList;->max:I

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 51
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 52
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 53
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 55
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget v5, v5, Lcom/lzx/iteam/SkinList;->progress:I

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    invoke-virtual {v4}, Lcom/lzx/iteam/SkinList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "download complete"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 64
    new-instance v3, Lcom/lzx/iteam/skin/UnZip;

    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    invoke-direct {v3, v4}, Lcom/lzx/iteam/skin/UnZip;-><init>(Landroid/content/Context;)V

    .line 65
    .local v3, "zip":Lcom/lzx/iteam/skin/UnZip;
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    invoke-virtual {v4}, Lcom/lzx/iteam/SkinList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 66
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 67
    .local v2, "sdpath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 68
    const-string v4, "MIONE"

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    const-string v2, "/data/sdcard"

    .line 91
    :goto_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/clouddialerSkin/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/skin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/skin/UnZip;->UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :goto_2
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 99
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iput v7, v4, Lcom/lzx/iteam/SkinList;->max:I

    .line 100
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iput v7, v4, Lcom/lzx/iteam/SkinList;->progress:I

    goto/16 :goto_0

    .line 71
    :cond_3
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    invoke-virtual {v4}, Lcom/lzx/iteam/SkinList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "NO SDCard"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 72
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 80
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    invoke-virtual {v4}, Lcom/lzx/iteam/SkinList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "SD\u5361\u9519\u8bef"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    const-string v5, "\u76ae\u80a4\u5b89\u88c5\u5931\u8d25!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "sdpath":Ljava/lang/String;
    .end local v3    # "zip":Lcom/lzx/iteam/skin/UnZip;
    :pswitch_3
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 120
    :cond_5
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iput v7, v4, Lcom/lzx/iteam/SkinList;->progress:I

    .line 121
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iput v7, v4, Lcom/lzx/iteam/SkinList;->max:I

    .line 122
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$1;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v4, v4, Lcom/lzx/iteam/SkinList;->context:Landroid/content/Context;

    const-string v5, "download failed"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
