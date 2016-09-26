.class Lcom/lzx/iteam/CreateNewEventActivity$22$1;
.super Ljava/lang/Object;
.source "CreateNewEventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CreateNewEventActivity$22;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/CreateNewEventActivity$22;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CreateNewEventActivity$22;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity$22$1;->this$1:Lcom/lzx/iteam/CreateNewEventActivity$22;

    .line 1886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1889
    invoke-static {}, Lcom/lzx/iteam/selectimage/Bimp;->deleteAllPhotoAfterSend()V

    .line 1890
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->NEW_EVENT_ID:Ljava/lang/String;

    .line 1891
    return-void
.end method
