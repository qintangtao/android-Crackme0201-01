.class Lcom/lzx/iteam/emotion/EmotionUtil$1;
.super Ljava/lang/Object;
.source "EmotionUtil.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/emotion/EmotionUtil;->viewPagerItem(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/emotion/EmotionUtil;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/emotion/EmotionUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/emotion/EmotionUtil$1;->this$0:Lcom/lzx/iteam/emotion/EmotionUtil;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    check-cast p2, Landroid/widget/LinearLayout;

    .end local p2    # "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "png":Ljava/lang/String;
    const-string v2, "emotion_del_normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/lzx/iteam/emotion/EmotionUtil$1;->this$0:Lcom/lzx/iteam/emotion/EmotionUtil;

    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil$1;->this$0:Lcom/lzx/iteam/emotion/EmotionUtil;

    # invokes: Lcom/lzx/iteam/emotion/EmotionUtil;->getFace(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    invoke-static {v3, v1}, Lcom/lzx/iteam/emotion/EmotionUtil;->access$1(Lcom/lzx/iteam/emotion/EmotionUtil;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    # invokes: Lcom/lzx/iteam/emotion/EmotionUtil;->insert(Ljava/lang/CharSequence;)V
    invoke-static {v2, v3}, Lcom/lzx/iteam/emotion/EmotionUtil;->access$2(Lcom/lzx/iteam/emotion/EmotionUtil;Ljava/lang/CharSequence;)V

    .line 151
    .end local v1    # "png":Ljava/lang/String;
    :goto_0
    return-void

    .line 146
    .restart local v1    # "png":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/emotion/EmotionUtil$1;->this$0:Lcom/lzx/iteam/emotion/EmotionUtil;

    # invokes: Lcom/lzx/iteam/emotion/EmotionUtil;->delete()V
    invoke-static {v2}, Lcom/lzx/iteam/emotion/EmotionUtil;->access$3(Lcom/lzx/iteam/emotion/EmotionUtil;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1    # "png":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
