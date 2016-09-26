.class public Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;
.super Ljava/lang/Object;
.source "PinyinSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactInfoNode"
.end annotation


# instance fields
.field public contactedNumber:I

.field public fuzzyString:Ljava/lang/String;

.field public havePhoneNumber:Z

.field myRank:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field nameLength:I

.field pinyinData:Ljava/lang/String;

.field final synthetic this$0:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInfoNode;->this$0:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
