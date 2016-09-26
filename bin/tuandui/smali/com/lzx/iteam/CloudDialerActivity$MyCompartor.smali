.class Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;
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
    name = "MyCompartor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 4417
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 11
    .param p1, "o1"    # Ljava/lang/Long;
    .param p2, "o2"    # Ljava/lang/Long;

    .prologue
    .line 4420
    move-object v1, p1

    .line 4421
    .local v1, "contactId1":Ljava/lang/Long;
    move-object v2, p2

    .line 4424
    .local v2, "contactId2":Ljava/lang/Long;
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lzx/iteam/util/PreferenceUtil;->getPerson(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v5

    .line 4425
    .local v5, "person1":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lzx/iteam/util/PreferenceUtil;->getPerson(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v6

    .line 4427
    .local v6, "person2":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 4428
    :cond_0
    const/4 v9, 0x0

    .line 4454
    :goto_0
    return v9

    .line 4432
    :cond_1
    const/4 v7, 0x0

    .line 4433
    .local v7, "registPhone1":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4435
    .local v8, "registPhone2":Ljava/lang/String;
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 4436
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "registPhone1":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 4437
    .restart local v7    # "registPhone1":Ljava/lang/String;
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "registPhone2":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 4440
    .restart local v8    # "registPhone2":Ljava/lang/String;
    :cond_2
    if-nez v7, :cond_3

    if-eqz v8, :cond_3

    .line 4441
    const/4 v9, 0x1

    goto :goto_0

    .line 4442
    :cond_3
    if-eqz v7, :cond_4

    if-nez v8, :cond_4

    .line 4443
    const/4 v9, -0x1

    goto :goto_0

    .line 4444
    :cond_4
    if-nez v7, :cond_5

    if-nez v8, :cond_5

    .line 4445
    const/4 v9, -0x2

    goto :goto_0

    .line 4448
    :cond_5
    invoke-virtual {v5}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 4449
    .local v3, "nameValue1":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 4450
    .local v4, "nameValue2":Ljava/lang/String;
    if-eqz v3, :cond_6

    if-nez v4, :cond_7

    .line 4451
    :cond_6
    const/4 v9, -0x3

    goto :goto_0

    .line 4453
    :cond_7
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v9}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 4454
    .local v0, "cmp":Ljava/util/Comparator;
    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;->compare(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
