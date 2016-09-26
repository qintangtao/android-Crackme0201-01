.class public Lcom/lzx/iteam/ContactGroupDetailActivity;
.super Landroid/app/Activity;
.source "ContactGroupDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CONTACT_GROUPS:Ljava/lang/String; = "contact_groups"

.field public static final CONTACT_NAME:Ljava/lang/String; = "contact_name"


# instance fields
.field private bottom:Landroid/view/View;

.field private mAdapter:Lcom/lzx/iteam/adapter/ContactGroupAdapter;

.field private mBack:Landroid/widget/LinearLayout;

.field private mGroupTitle:Landroid/widget/TextView;

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLvTags:Landroid/widget/ListView;

.field private mName:Ljava/lang/String;

.field private top:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 46
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contact_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contact_groups"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mGroups:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->top:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->bottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_0
    return-void
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f0e020c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mBack:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0e020d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mGroupTitle:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0e020e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mLvTags:Landroid/widget/ListView;

    .line 66
    const v0, 0x7f0e020f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->top:Landroid/view/View;

    .line 67
    const v0, 0x7f0e0210

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->bottom:Landroid/view/View;

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 74
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->finish()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x7f0e020c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->initView()V

    .line 40
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->getData()V

    .line 41
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactGroupDetailActivity;->setData()V

    .line 43
    return-void
.end method

.method public setData()V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mGroupTitle:Landroid/widget/TextView;

    const v1, 0x7f080167

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lzx/iteam/ContactGroupDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v0, Lcom/lzx/iteam/adapter/ContactGroupAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mGroups:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/adapter/ContactGroupAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mAdapter:Lcom/lzx/iteam/adapter/ContactGroupAdapter;

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mLvTags:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/ContactGroupDetailActivity;->mAdapter:Lcom/lzx/iteam/adapter/ContactGroupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    return-void
.end method
