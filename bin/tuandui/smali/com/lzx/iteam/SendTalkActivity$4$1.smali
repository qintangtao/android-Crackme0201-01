.class Lcom/lzx/iteam/SendTalkActivity$4$1;
.super Ljava/lang/Object;
.source "SendTalkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/SendTalkActivity$4;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/SendTalkActivity$4;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SendTalkActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SendTalkActivity$4$1;->this$1:Lcom/lzx/iteam/SendTalkActivity$4;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 482
    invoke-static {}, Lcom/lzx/iteam/selectimage/Bimp;->deleteAllPhotoAfterSend()V

    .line 483
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->NEW_TALK_ID:Ljava/lang/String;

    .line 484
    return-void
.end method
