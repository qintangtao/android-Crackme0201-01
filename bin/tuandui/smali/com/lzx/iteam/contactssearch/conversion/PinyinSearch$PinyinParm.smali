.class Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;
.super Ljava/lang/Object;
.source "PinyinSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PinyinParm"
.end annotation


# instance fields
.field pinyinNodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pinyinSeg:Ljava/lang/String;

.field final synthetic this$0:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$PinyinParm;->this$0:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
