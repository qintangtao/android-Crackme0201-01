.class Lcom/lzx/iteam/MySettingActivity$SyncMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "MySettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/MySettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/MySettingActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MySettingActivity;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/lzx/iteam/MySettingActivity$SyncMessage;->this$0:Lcom/lzx/iteam/MySettingActivity;

    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 234
    return-void
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 229
    return-void
.end method
