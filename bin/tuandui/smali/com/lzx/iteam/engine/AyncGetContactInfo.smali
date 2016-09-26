.class public Lcom/lzx/iteam/engine/AyncGetContactInfo;
.super Landroid/os/AsyncTask;
.source "AyncGetContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Lcom/lzx/iteam/bean/ContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallBack:Landroid/os/Message;

.field private mInfo:Lcom/lzx/iteam/engine/GetContactInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Message;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    new-instance v0, Lcom/lzx/iteam/engine/GetContactInfo;

    invoke-direct {v0, p1}, Lcom/lzx/iteam/engine/GetContactInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/engine/AyncGetContactInfo;->mInfo:Lcom/lzx/iteam/engine/GetContactInfo;

    .line 19
    iput-object p2, p0, Lcom/lzx/iteam/engine/AyncGetContactInfo;->mCallBack:Landroid/os/Message;

    .line 20
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Lcom/lzx/iteam/bean/ContactInfo;
    .locals 4
    .param p1, "longs"    # [Ljava/lang/Long;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lzx/iteam/engine/AyncGetContactInfo;->mInfo:Lcom/lzx/iteam/engine/GetContactInfo;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/engine/GetContactInfo;->getInfo(J)Lcom/lzx/iteam/bean/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/engine/AyncGetContactInfo;->doInBackground([Ljava/lang/Long;)Lcom/lzx/iteam/bean/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 2
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lzx/iteam/engine/AyncGetContactInfo;->mCallBack:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/engine/AyncGetContactInfo;->mCallBack:Landroid/os/Message;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/engine/AyncGetContactInfo;->mCallBack:Landroid/os/Message;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/engine/AyncGetContactInfo;->mCallBack:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 34
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/lzx/iteam/bean/ContactInfo;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/engine/AyncGetContactInfo;->onPostExecute(Lcom/lzx/iteam/bean/ContactInfo;)V

    return-void
.end method
