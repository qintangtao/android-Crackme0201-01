.class public Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumberType;
.super Ljava/lang/Object;
.source "ContactsDBReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/ContactsDBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberType"
.end annotation


# instance fields
.field public phone:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1820
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumberType;->phone:Ljava/lang/String;

    .line 1823
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumberType;->type:I

    .line 1826
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1827
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumberType;->phone:Ljava/lang/String;

    .line 1829
    :cond_0
    iput p2, p0, Lcom/lzx/iteam/contactssearch/ContactsDBReader$NumberType;->type:I

    .line 1830
    return-void
.end method
