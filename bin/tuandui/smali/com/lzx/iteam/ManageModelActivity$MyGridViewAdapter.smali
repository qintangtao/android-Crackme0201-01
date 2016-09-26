.class Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageModelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ManageModelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGridViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;
    }
.end annotation


# instance fields
.field private isCanDelete:Z

.field final synthetic this$0:Lcom/lzx/iteam/ManageModelActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ManageModelActivity;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;)Lcom/lzx/iteam/ManageModelActivity;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$5(Lcom/lzx/iteam/ManageModelActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 254
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 265
    if-nez p2, :cond_0

    .line 266
    new-instance v0, Lcom/lzx/iteam/ManageModelActivity$ViewHolder;

    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/ManageModelActivity$ViewHolder;-><init>(Lcom/lzx/iteam/ManageModelActivity;)V

    .line 267
    .local v0, "holder":Lcom/lzx/iteam/ManageModelActivity$ViewHolder;
    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030094

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 268
    const v1, 0x7f0e0420

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lzx/iteam/ManageModelActivity$ViewHolder;->mIvDelete:Landroid/widget/ImageView;

    .line 269
    const v1, 0x7f0e041f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/ManageModelActivity$ViewHolder;->mEventName:Landroid/widget/TextView;

    .line 270
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/ManageModelActivity$ViewHolder;->mEventName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ManageModelActivity;->access$5(Lcom/lzx/iteam/ManageModelActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-boolean v1, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->isCanDelete:Z

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, v0, Lcom/lzx/iteam/ManageModelActivity$ViewHolder;->mIvDelete:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    :goto_1
    iget-object v1, v0, Lcom/lzx/iteam/ManageModelActivity$ViewHolder;->mIvDelete:Landroid/widget/ImageView;

    new-instance v2, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;

    invoke-direct {v2, p0, p1}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter$DeleteOnClick;-><init>(Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-object p2

    .line 272
    .end local v0    # "holder":Lcom/lzx/iteam/ManageModelActivity$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/ManageModelActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/ManageModelActivity$ViewHolder;
    goto :goto_0

    .line 278
    :cond_1
    iget-object v1, v0, Lcom/lzx/iteam/ManageModelActivity$ViewHolder;->mIvDelete:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCanDelete(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->isCanDelete:Z

    .line 259
    return-void
.end method
