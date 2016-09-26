.class Lcom/lzx/iteam/CustomEventActivity$1;
.super Landroid/os/Handler;
.source "CustomEventActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CustomEventActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CustomEventActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CustomEventActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CustomEventActivity$1;->this$0:Lcom/lzx/iteam/CustomEventActivity;

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 78
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 80
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/lzx/iteam/CustomEventActivity$1;->this$0:Lcom/lzx/iteam/CustomEventActivity;

    const-string v3, "tmp_event_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/CustomEventActivity;->access$0(Lcom/lzx/iteam/CustomEventActivity;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/lzx/iteam/CustomEventActivity$1;->this$0:Lcom/lzx/iteam/CustomEventActivity;

    iget-object v3, p0, Lcom/lzx/iteam/CustomEventActivity$1;->this$0:Lcom/lzx/iteam/CustomEventActivity;

    # getter for: Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/CustomEventActivity;->access$1(Lcom/lzx/iteam/CustomEventActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/CustomEventActivity;->insertOrUpdataData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/CustomEventActivity$1;->this$0:Lcom/lzx/iteam/CustomEventActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/CustomEventActivity;->finish()V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
    .end packed-switch
.end method
