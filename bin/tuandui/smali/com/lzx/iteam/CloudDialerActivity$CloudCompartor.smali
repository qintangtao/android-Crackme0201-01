.class Lcom/lzx/iteam/CloudDialerActivity$CloudCompartor;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CloudDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloudCompartor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lzx/iteam/bean/CloudContact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 4068
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$CloudCompartor;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lzx/iteam/bean/CloudContact;Lcom/lzx/iteam/bean/CloudContact;)I
    .locals 7
    .param p1, "o1"    # Lcom/lzx/iteam/bean/CloudContact;
    .param p2, "o2"    # Lcom/lzx/iteam/bean/CloudContact;

    .prologue
    .line 4071
    move-object v1, p1

    .line 4072
    .local v1, "contactId1":Lcom/lzx/iteam/bean/CloudContact;
    move-object v2, p2

    .line 4074
    .local v2, "contactId2":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4075
    const/4 v5, -0x1

    .line 4085
    :goto_0
    return v5

    .line 4076
    :cond_0
    iget-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4077
    const/4 v5, 0x1

    goto :goto_0

    .line 4081
    :cond_1
    iget-object v3, v1, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 4082
    .local v3, "nameValue1":Ljava/lang/String;
    iget-object v4, v2, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 4084
    .local v4, "nameValue2":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 4085
    .local v0, "cmp":Ljava/util/Comparator;
    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lzx/iteam/bean/CloudContact;

    check-cast p2, Lcom/lzx/iteam/bean/CloudContact;

    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/CloudDialerActivity$CloudCompartor;->compare(Lcom/lzx/iteam/bean/CloudContact;Lcom/lzx/iteam/bean/CloudContact;)I

    move-result v0

    return v0
.end method
