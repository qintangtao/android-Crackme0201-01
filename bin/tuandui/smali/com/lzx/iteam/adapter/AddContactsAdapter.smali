.class public Lcom/lzx/iteam/adapter/AddContactsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public isSelected:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/GroupContact;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter;->isSelected:Ljava/util/HashMap;

    .line 29
    return-void
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/GroupContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/GroupContact;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter;->mContactList:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 40
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/GroupContact;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/GroupContact;->isHas_tag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter;->isSelected:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter;->isSelected:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "holder":Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 61
    new-instance v0, Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;
    invoke-direct {v0, p0, v3}, Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AddContactsAdapter;Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;)V

    .line 62
    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    const v1, 0x7f0e0024

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;->add_contact_name:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0e0025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;->has_tag:Landroid/widget/CheckBox;

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;->add_contact_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/GroupContact;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/GroupContact;->getContact_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter;->isSelected:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, v0, Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;->has_tag:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    :goto_1
    return-object p2

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;
    check-cast v0, Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;
    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, v0, Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;->has_tag:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
