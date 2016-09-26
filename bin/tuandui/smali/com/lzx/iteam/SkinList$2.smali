.class Lcom/lzx/iteam/SkinList$2;
.super Landroid/webkit/WebViewClient;
.source "SkinList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/SkinList;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    .line 145
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    return-object v0
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 147
    const-string v5, "/themes/download"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 148
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    new-instance v6, Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v7, v7, Lcom/lzx/iteam/SkinList;->context:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, v5, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    .line 149
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v5, v5, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 150
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v5, v5, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    const-string v6, "\u53d6\u6d88"

    new-instance v7, Lcom/lzx/iteam/SkinList$2$1;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/SkinList$2$1;-><init>(Lcom/lzx/iteam/SkinList$2;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v5, v5, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    new-instance v6, Lcom/lzx/iteam/SkinList$2$2;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/SkinList$2$2;-><init>(Lcom/lzx/iteam/SkinList$2;)V

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 181
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v5, v5, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 182
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v5, v5, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 185
    :cond_0
    const/4 v3, 0x0

    .line 186
    .local v3, "sdpath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 187
    const-string v5, "MIONE"

    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    const-string v3, "/data/sdcard"

    .line 210
    :goto_0
    move-object v2, v3

    .line 211
    .local v2, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v5, v5, Lcom/lzx/iteam/SkinList;->es:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/lzx/iteam/SkinList$2$3;

    invoke-direct {v6, p0, v2, p2}, Lcom/lzx/iteam/SkinList$2$3;-><init>(Lcom/lzx/iteam/SkinList$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 282
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "sdpath":Ljava/lang/String;
    :cond_1
    :goto_1
    return v9

    .line 190
    .restart local v3    # "sdpath":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    invoke-virtual {v5}, Lcom/lzx/iteam/SkinList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "NO SDCard"

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 191
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v5, v5, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v5, v5, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1

    .line 199
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    invoke-virtual {v5}, Lcom/lzx/iteam/SkinList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "SD\u5361\u9519\u8bef"

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 203
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v5, v5, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    iget-object v5, v5, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "sdpath":Ljava/lang/String;
    :cond_4
    const-string v5, "tj://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 274
    const-string v5, "tj://"

    const-string v6, "http://"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "u":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 277
    iget-object v5, p0, Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;

    invoke-virtual {v5, v1}, Lcom/lzx/iteam/SkinList;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 280
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "u":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
