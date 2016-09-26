.class public Lcom/lzx/iteam/adapter/TalkListCommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "TalkListCommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private talkUserDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListCommentAdapter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "talkUserDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListCommentAdapter;->talkUserDatas:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/TalkListCommentAdapter;->notifyDataSetChanged()V

    .line 34
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListCommentAdapter;->talkUserDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListCommentAdapter;->talkUserDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 54
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v5, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 56
    new-instance v6, Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/TalkListCommentAdapter;)V

    .line 57
    .local v6, "viewHolder":Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;
    iget-object v7, p0, Lcom/lzx/iteam/adapter/TalkListCommentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0300f3

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    const v7, 0x7f0e061e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    new-instance v4, Landroid/text/SpannableString;

    const-string v7, "talk_user_name"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 65
    .local v4, "user":Landroid/text/SpannableString;
    new-instance v1, Lcom/lzx/iteam/widget/TextViewSpan;

    const-string v7, "talk_user_name"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/lzx/iteam/adapter/TalkListCommentAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7, v8, v10, v10}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 66
    .local v1, "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    invoke-virtual {v1, v5}, Lcom/lzx/iteam/widget/TextViewSpan;->setInfo(Ljava/lang/Object;)V

    .line 67
    const-string v7, "talk_user_name"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v1, v10, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 70
    const-string v2, "\u4f60\u5927\u7237"

    .line 71
    .local v2, "replyName":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    .local v3, "replyTo":Landroid/text/SpannableString;
    new-instance v0, Lcom/lzx/iteam/widget/TextViewSpan;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/TalkListCommentAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v7, v10, v10}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 73
    .local v0, "clickableSpan":Lcom/lzx/iteam/widget/TextViewSpan;
    invoke-virtual {v0, v5}, Lcom/lzx/iteam/widget/TextViewSpan;->setInfo(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v0, v10, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 77
    iget-object v7, v6, Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v7, v6, Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v7, v6, Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    const-string v8, "\u56de\u590d"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v7, v6, Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v7, v6, Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v7, v6, Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    const-string v8, "\u4f60\u662f\u4e0d\u662f\u50bb\u554a\uff1f\uff1f"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 84
    return-object p2

    .line 61
    .end local v0    # "clickableSpan":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v1    # "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v2    # "replyName":Ljava/lang/String;
    .end local v3    # "replyTo":Landroid/text/SpannableString;
    .end local v4    # "user":Landroid/text/SpannableString;
    .end local v6    # "viewHolder":Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;

    .restart local v6    # "viewHolder":Lcom/lzx/iteam/adapter/TalkListCommentAdapter$ViewHolder;
    goto :goto_0
.end method
