.class public Lcom/lzx/iteam/util/ContactListComparator;
.super Ljava/lang/Object;
.source "ContactListComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lzx/iteam/bean/CloudContact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lzx/iteam/bean/CloudContact;Lcom/lzx/iteam/bean/CloudContact;)I
    .locals 2
    .param p1, "cloudContact"    # Lcom/lzx/iteam/bean/CloudContact;
    .param p2, "t1"    # Lcom/lzx/iteam/bean/CloudContact;

    .prologue
    .line 15
    iget-object v0, p1, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "0"

    iget-object v1, p1, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    const/4 v0, -0x1

    .line 20
    :goto_0
    return v0

    .line 17
    :cond_0
    iget-object v0, p2, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "0"

    iget-object v1, p2, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    const/4 v0, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p1, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    iget-object v1, p2, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lzx/iteam/bean/CloudContact;

    check-cast p2, Lcom/lzx/iteam/bean/CloudContact;

    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/util/ContactListComparator;->compare(Lcom/lzx/iteam/bean/CloudContact;Lcom/lzx/iteam/bean/CloudContact;)I

    move-result v0

    return v0
.end method
