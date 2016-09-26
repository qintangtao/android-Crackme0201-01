.class public Lcom/lzx/iteam/widget/TextViewSpan;
.super Landroid/text/style/ClickableSpan;
.source "TextViewSpan.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/text/style/ClickableSpan;"
    }
.end annotation


# instance fields
.field private clickString:Ljava/lang/String;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private selectClick:I

.field private votePerson:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;II)V
    .locals 0
    .param p1, "clickString"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "selectClick"    # I
    .param p4, "mColor"    # I

    .prologue
    .line 24
    .local p0, "this":Lcom/lzx/iteam/widget/TextViewSpan;, "Lcom/lzx/iteam/widget/TextViewSpan<TT;>;"
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lzx/iteam/widget/TextViewSpan;->clickString:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mContext:Landroid/content/Context;

    .line 27
    iput p3, p0, Lcom/lzx/iteam/widget/TextViewSpan;->selectClick:I

    .line 28
    iput p4, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mColor:I

    .line 29
    return-void
.end method

.method private avoidHintColor(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    .local p0, "this":Lcom/lzx/iteam/widget/TextViewSpan;, "Lcom/lzx/iteam/widget/TextViewSpan<TT;>;"
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 60
    .local p0, "this":Lcom/lzx/iteam/widget/TextViewSpan;, "Lcom/lzx/iteam/widget/TextViewSpan<TT;>;"
    iget v2, p0, Lcom/lzx/iteam/widget/TextViewSpan;->selectClick:I

    packed-switch v2, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/TextViewSpan;->avoidHintColor(Landroid/view/View;)V

    .line 63
    iget-object v1, p0, Lcom/lzx/iteam/widget/TextViewSpan;->votePerson:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 66
    .local v1, "person":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lzx/iteam/TalkListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent1":Landroid/content/Intent;
    sget-object v2, Lcom/lzx/iteam/TalkListActivity;->OTHER_PERSONAL_SPACE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v3, "set_user_id"

    const-string v2, "talk_user_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v2, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    iget-object v2, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 73
    .end local v0    # "intent1":Landroid/content/Intent;
    .end local v1    # "person":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    iget-object v2, p0, Lcom/lzx/iteam/widget/TextViewSpan;->votePerson:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInfo(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/lzx/iteam/widget/TextViewSpan;, "Lcom/lzx/iteam/widget/TextViewSpan<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/lzx/iteam/widget/TextViewSpan;->votePerson:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 42
    .local p0, "this":Lcom/lzx/iteam/widget/TextViewSpan;, "Lcom/lzx/iteam/widget/TextViewSpan<TT;>;"
    iget v0, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mColor:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    const v1, 0x7f0a0096

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 55
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 56
    return-void

    .line 45
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mColor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    const v1, 0x7f0a0097

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 48
    :cond_1
    iget v0, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mColor:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    const v1, 0x7f0a0098

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextViewSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    const v1, 0x7f0a008a

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method
