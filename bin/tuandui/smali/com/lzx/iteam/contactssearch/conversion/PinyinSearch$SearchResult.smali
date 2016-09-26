.class public Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;
.super Ljava/lang/Object;
.source "PinyinSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchResult"
.end annotation


# instance fields
.field public allNameLength:I

.field public contactId:J

.field public matchnameLength:I

.field public pinyin:Ljava/lang/String;

.field public rankLevel:I

.field public telephony:Z

.field final synthetic this$0:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$SearchResult;->this$0:Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
