.class Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;
.super Lcom/lzx/iteam/util/WeakAsyncTask;
.source "NameConvertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersisitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzx/iteam/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;",
        ">;"
    }
.end annotation


# static fields
.field private static final FAILED:I = 0x2

.field private static final SUCCESSFUL:I = 0x1

.field private static final UNCHANGED:I


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;)V
    .locals 0
    .param p1, "target"    # Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lzx/iteam/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;[Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "target"    # Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;
    .param p2, "params"    # [Ljava/lang/Void;

    .prologue
    .line 49
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->doContactsChanges()Z
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->access$0(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;)Z

    move-result v0

    .line 50
    .local v0, "ok":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;

    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;->doInBackground(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;[Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "target"    # Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;
    .param p2, "result"    # Ljava/lang/Integer;

    .prologue
    .line 54
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;->onFinishedWork(I)V

    .line 55
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/conversion/NameConvertService$PersisitTask;->onPostExecute(Lcom/lzx/iteam/contactssearch/conversion/NameConvertService;Ljava/lang/Integer;)V

    return-void
.end method
