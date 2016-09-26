.class public Lcom/lzx/iteam/widget/PullListView;
.super Landroid/widget/ListView;
.source "PullListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widget/PullListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x6

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "listview"


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;

.field private arrowImageView:Landroid/widget/ImageView;

.field private bottomImageResources:I

.field private bottomstate:I

.field private firstItemIndex:I

.field private footView:Landroid/widget/LinearLayout;

.field private footanimation:Landroid/view/animation/RotateAnimation;

.field private footarrowImageView:Landroid/widget/ImageView;

.field private footlastUpdatedTextView:Landroid/widget/TextView;

.field private footprogressBar:Landroid/widget/ProgressBar;

.field private footreverseAnimation:Landroid/view/animation/RotateAnimation;

.field private foottipsTextview:Landroid/widget/TextView;

.field private headContentHeight:I

.field private headContentWidth:I

.field private headView:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isBackRefreshable:Z

.field private isBottomBack:Z

.field private isBottomRecored:Z

.field private isFootVisible:Z

.field private isHeaderVisible:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field private isTop:Z

.field private lastItem:I

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshListener:Lcom/lzx/iteam/widget/PullListView$OnRefreshListener;

.field private reverseAnimation:Landroid/view/animation/RotateAnimation;

.field private startBottomY:I

.field private startY:I

.field private state:I

.field private textColor:I

.field private textSize:I

.field private tipsTextview:Landroid/widget/TextView;

.field private totalItemCount:I

.field type:I

.field private upImageResources:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isTop:Z

    .line 119
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isFootVisible:Z

    .line 122
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isHeaderVisible:Z

    .line 125
    const v0, 0x7f020034

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->upImageResources:I

    .line 127
    const v0, 0x7f020035

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->bottomImageResources:I

    .line 129
    const/16 v0, 0x10

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->textSize:I

    .line 131
    const v0, 0x106000c

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->textColor:I

    .line 736
    iput v1, p0, Lcom/lzx/iteam/widget/PullListView;->type:I

    .line 135
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/PullListView;->init(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isTop:Z

    .line 119
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isFootVisible:Z

    .line 122
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isHeaderVisible:Z

    .line 125
    const v0, 0x7f020034

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->upImageResources:I

    .line 127
    const v0, 0x7f020035

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->bottomImageResources:I

    .line 129
    const/16 v0, 0x10

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->textSize:I

    .line 131
    const v0, 0x106000c

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->textColor:I

    .line 736
    iput v1, p0, Lcom/lzx/iteam/widget/PullListView;->type:I

    .line 173
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/PullListView;->init(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFootVisible"    # Z
    .param p3, "isHeaderVisible"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isTop:Z

    .line 119
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isFootVisible:Z

    .line 122
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isHeaderVisible:Z

    .line 125
    const v0, 0x7f020034

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->upImageResources:I

    .line 127
    const v0, 0x7f020035

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->bottomImageResources:I

    .line 129
    const/16 v0, 0x10

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->textSize:I

    .line 131
    const v0, 0x106000c

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->textColor:I

    .line 736
    iput v1, p0, Lcom/lzx/iteam/widget/PullListView;->type:I

    .line 149
    iput-boolean p2, p0, Lcom/lzx/iteam/widget/PullListView;->isFootVisible:Z

    .line 150
    iput-boolean p3, p0, Lcom/lzx/iteam/widget/PullListView;->isHeaderVisible:Z

    .line 151
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/PullListView;->init(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method private changeFootViewByState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 595
    iget v0, p0, Lcom/lzx/iteam/widget/PullListView;->type:I

    if-nez v0, :cond_0

    .line 597
    iget v0, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    packed-switch v0, :pswitch_data_0

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 599
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footprogressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->foottipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footlastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 605
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lzx/iteam/widget/PullListView;->footanimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 607
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->foottipsTextview:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0c\u677e\u5f00\u5237\u65b0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footprogressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->foottipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footlastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 616
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isBottomBack:Z

    if-eqz v0, :cond_1

    .line 619
    iput-boolean v2, p0, Lcom/lzx/iteam/widget/PullListView;->isBottomBack:Z

    .line 620
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 621
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lzx/iteam/widget/PullListView;->footreverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 623
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->foottipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    :goto_1
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0c\u4e0a\u62c9\u5237\u65b0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->foottipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 632
    :pswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 634
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footprogressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 636
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->foottipsTextview:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footlastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001,\u6b63\u5728\u5237\u65b0..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 643
    :pswitch_3
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 645
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footprogressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 647
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomImageResources:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 648
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->foottipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footlastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0cdone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 597
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private changeHeaderViewByState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 527
    iget v0, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    packed-switch v0, :pswitch_data_0

    .line 591
    :goto_0
    return-void

    .line 529
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 535
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lzx/iteam/widget/PullListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 537
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget v0, p0, Lcom/lzx/iteam/widget/PullListView;->type:I

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u653e\u624b \u4f60\u53ef\u4ee5\u5f97\u5230\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :goto_1
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0c\u677e\u5f00\u5237\u65b0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u7acb\u5373\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 547
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 551
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 553
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isBack:Z

    if-eqz v0, :cond_1

    .line 554
    iput-boolean v2, p0, Lcom/lzx/iteam/widget/PullListView;->isBack:Z

    .line 555
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 556
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lzx/iteam/widget/PullListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 559
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u53ef\u4ee5\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :goto_2
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0c\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u53ef\u4ee5\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 569
    :pswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 571
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 573
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u5237\u65b0..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001,\u6b63\u5728\u5237\u65b0..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 580
    :pswitch_3
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 582
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 584
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->upImageResources:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    const-string v0, "listview"

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0cdone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 177
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/widget/PullListView;->setDividerHeight(I)V

    .line 178
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->inflater:Landroid/view/LayoutInflater;

    .line 180
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300b4

    .line 181
    const/4 v6, 0x0

    .line 180
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    .line 183
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    .line 184
    const v5, 0x7f0e044e

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 183
    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x46

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 186
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 187
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    .line 188
    const v5, 0x7f0e049f

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 187
    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->progressBar:Landroid/widget/ProgressBar;

    .line 189
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f0e044f

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->tipsTextview:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    .line 191
    const v5, 0x7f0e04a0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->lastUpdatedTextView:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/lzx/iteam/widget/PullListView;->measureView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    .line 195
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->headContentWidth:I

    .line 197
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v12, v5, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 198
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 200
    const-string v0, "size"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "width:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/lzx/iteam/widget/PullListView;->headContentWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 201
    iget v6, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isHeaderVisible:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v12}, Lcom/lzx/iteam/widget/PullListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300b3

    .line 206
    const/4 v6, 0x0

    .line 205
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    .line 207
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    .line 208
    const v5, 0x7f0e0499

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 207
    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    .line 209
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x46

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 210
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footarrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 211
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    .line 212
    const v5, 0x7f0e049a

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 211
    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footprogressBar:Landroid/widget/ProgressBar;

    .line 213
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    .line 214
    const v5, 0x7f0e049b

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->foottipsTextview:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    .line 216
    const v5, 0x7f0e049c

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footlastUpdatedTextView:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v12, v12, v12, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 220
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 221
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isFootVisible:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v12}, Lcom/lzx/iteam/widget/PullListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 224
    :cond_1
    invoke-virtual {p0, p0}, Lcom/lzx/iteam/widget/PullListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 226
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    .line 228
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 226
    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->animation:Landroid/view/animation/RotateAnimation;

    .line 229
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 230
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 231
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 233
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 235
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 233
    iput-object v5, p0, Lcom/lzx/iteam/widget/PullListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 236
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 237
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 238
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 240
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    .line 242
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 240
    iput-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footanimation:Landroid/view/animation/RotateAnimation;

    .line 243
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footanimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 244
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footanimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 245
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footanimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 247
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 249
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 247
    iput-object v5, p0, Lcom/lzx/iteam/widget/PullListView;->footreverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 250
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footreverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 251
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footreverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 252
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footreverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 254
    const/4 v0, 0x3

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    .line 255
    iput-boolean v12, p0, Lcom/lzx/iteam/widget/PullListView;->isRefreshable:Z

    .line 256
    const/4 v0, 0x3

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    .line 257
    iput-boolean v12, p0, Lcom/lzx/iteam/widget/PullListView;->isBackRefreshable:Z

    .line 258
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 703
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 704
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    .line 705
    const/4 v5, -0x2

    .line 704
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 707
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 708
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 710
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 712
    const/high16 v4, 0x40000000    # 2.0f

    .line 711
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 717
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 718
    return-void

    .line 714
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private onRefresh(Z)V
    .locals 1
    .param p1, "isTop"    # Z

    .prologue
    .line 695
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->refreshListener:Lcom/lzx/iteam/widget/PullListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->refreshListener:Lcom/lzx/iteam/widget/PullListView$OnRefreshListener;

    invoke-interface {v0, p1}, Lcom/lzx/iteam/widget/PullListView$OnRefreshListener;->onRefresh(Z)V

    .line 698
    :cond_0
    return-void
.end method


# virtual methods
.method public onRefreshComplete()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 670
    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    .line 671
    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    .line 672
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->lastUpdatedTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u8fd1\u66f4\u65b0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footlastUpdatedTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u8fd1\u66f4\u65b0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeHeaderViewByState()V

    .line 675
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeFootViewByState()V

    .line 676
    return-void
.end method

.method public onRefreshComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "show"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x3

    .line 683
    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    .line 684
    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    .line 685
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footlastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeHeaderViewByState()V

    .line 688
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeFootViewByState()V

    .line 689
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 268
    add-int v0, p2, p3

    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->lastItem:I

    .line 270
    iput p4, p0, Lcom/lzx/iteam/widget/PullListView;->totalItemCount:I

    .line 271
    iput p2, p0, Lcom/lzx/iteam/widget/PullListView;->firstItemIndex:I

    .line 273
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 262
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isRefreshable:Z

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 522
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 281
    :pswitch_0
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->firstItemIndex:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isRecored:Z

    if-nez v1, :cond_1

    .line 282
    iput-boolean v5, p0, Lcom/lzx/iteam/widget/PullListView;->isRecored:Z

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lzx/iteam/widget/PullListView;->startY:I

    .line 284
    const-string v1, "listview"

    const-string v2, "\u5728down\u65f6\u5019\u8bb0\u5f55\u5f53\u524d\u4f4d\u7f6e\u2018"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->lastItem:I

    iget v2, p0, Lcom/lzx/iteam/widget/PullListView;->totalItemCount:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isBottomRecored:Z

    if-nez v1, :cond_0

    .line 288
    iput-boolean v5, p0, Lcom/lzx/iteam/widget/PullListView;->isBottomRecored:Z

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    .line 290
    const-string v1, "listview"

    const-string v2, "\u5728bottomdown\u65f6\u5019\u8bb0\u5f55\u5f53\u524d\u4f4d\u7f6e\u2018"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :pswitch_1
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-eq v1, v7, :cond_3

    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-eq v1, v8, :cond_3

    .line 301
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-ne v1, v5, :cond_2

    .line 302
    iput v6, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    .line 303
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeHeaderViewByState()V

    .line 305
    const-string v1, "listview"

    const-string v2, "\u7531\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-nez v1, :cond_3

    .line 308
    iput v7, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    .line 309
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeHeaderViewByState()V

    .line 311
    iput-boolean v5, p0, Lcom/lzx/iteam/widget/PullListView;->isTop:Z

    .line 313
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isTop:Z

    invoke-direct {p0, v1}, Lcom/lzx/iteam/widget/PullListView;->onRefresh(Z)V

    .line 315
    const-string v1, "listview"

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_3
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/PullListView;->isRecored:Z

    .line 320
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/PullListView;->isBack:Z

    .line 322
    const-string v1, "listview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bottomstate== PULL_To_REFRESH"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 323
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-eq v1, v7, :cond_5

    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-eq v1, v8, :cond_5

    .line 328
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-ne v1, v5, :cond_4

    .line 329
    iput v6, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    .line 330
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeFootViewByState()V

    .line 332
    const-string v1, "listview"

    const-string v2, "\u7531\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_4
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-nez v1, :cond_5

    .line 335
    iput v7, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    .line 336
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeFootViewByState()V

    .line 338
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/PullListView;->isTop:Z

    .line 339
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isTop:Z

    invoke-direct {p0, v1}, Lcom/lzx/iteam/widget/PullListView;->onRefresh(Z)V

    .line 341
    const-string v1, "listview"

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_5
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/PullListView;->isBottomRecored:Z

    .line 346
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/PullListView;->isBottomBack:Z

    goto/16 :goto_0

    .line 351
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 353
    .local v0, "tempY":I
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isRecored:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->firstItemIndex:I

    if-nez v1, :cond_6

    .line 354
    const-string v1, "listview"

    const-string v2, "\u5728move\u65f6\u5019\u8bb0\u5f55\u4e0b\u4f4d\u7f6e"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iput-boolean v5, p0, Lcom/lzx/iteam/widget/PullListView;->isRecored:Z

    .line 356
    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->startY:I

    .line 359
    :cond_6
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-eq v1, v7, :cond_b

    iget-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isRecored:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-eq v1, v8, :cond_b

    .line 364
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-nez v1, :cond_7

    .line 366
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/widget/PullListView;->setSelection(I)V

    .line 369
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    if-ge v1, v2, :cond_11

    .line 370
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_11

    .line 371
    iput v5, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    .line 372
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeHeaderViewByState()V

    .line 374
    const-string v1, "listview"

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u4e0b\u62c9\u5237\u65b0\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_7
    :goto_1
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-ne v1, v5, :cond_8

    .line 391
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/widget/PullListView;->setSelection(I)V

    .line 394
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    if-lt v1, v2, :cond_12

    .line 395
    iput v4, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    .line 396
    iput-boolean v5, p0, Lcom/lzx/iteam/widget/PullListView;->isBack:Z

    .line 397
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeHeaderViewByState()V

    .line 399
    const-string v1, "listview"

    const-string v2, "\u7531done\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u677e\u5f00\u5237\u65b0"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_8
    :goto_2
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-ne v1, v6, :cond_9

    .line 412
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_9

    .line 413
    iput v5, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    .line 414
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeHeaderViewByState()V

    .line 419
    :cond_9
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-ne v1, v5, :cond_a

    .line 420
    iget-object v1, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    .line 421
    iget v3, p0, Lcom/lzx/iteam/widget/PullListView;->startY:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    .line 420
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 426
    :cond_a
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    if-nez v1, :cond_b

    .line 427
    iget-object v1, p0, Lcom/lzx/iteam/widget/PullListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lzx/iteam/widget/PullListView;->startY:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x6

    .line 428
    iget v3, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    sub-int/2addr v2, v3

    .line 427
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 433
    :cond_b
    const-string v1, "listview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isBottomRecored="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lzx/iteam/widget/PullListView;->lastItem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 434
    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lzx/iteam/widget/PullListView;->totalItemCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isBottomRecored:Z

    if-nez v1, :cond_c

    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->lastItem:I

    iget v2, p0, Lcom/lzx/iteam/widget/PullListView;->totalItemCount:I

    if-ne v1, v2, :cond_c

    .line 437
    const-string v1, "listview"

    const-string v2, "\u5728bottommove\u65f6\u5019\u8bb0\u5f55\u4e0b\u4f4d\u7f6e"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iput-boolean v5, p0, Lcom/lzx/iteam/widget/PullListView;->isBottomRecored:Z

    .line 439
    iput v0, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    .line 442
    :cond_c
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-eq v1, v7, :cond_0

    iget-boolean v1, p0, Lcom/lzx/iteam/widget/PullListView;->isBottomRecored:Z

    if-eqz v1, :cond_0

    .line 443
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-eq v1, v8, :cond_0

    .line 448
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-nez v1, :cond_d

    .line 450
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->totalItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/widget/PullListView;->setSelection(I)V

    .line 453
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    if-ge v1, v2, :cond_13

    .line 454
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_13

    .line 455
    iput v5, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    .line 456
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeFootViewByState()V

    .line 458
    const-string v1, "listview"

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u4e0a\u62c9\u5237\u65b0\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_d
    :goto_3
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-ne v1, v5, :cond_e

    .line 475
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->totalItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/widget/PullListView;->setSelection(I)V

    .line 478
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    if-lt v1, v2, :cond_14

    .line 479
    iput v4, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    .line 480
    iput-boolean v5, p0, Lcom/lzx/iteam/widget/PullListView;->isBottomBack:Z

    .line 481
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeFootViewByState()V

    .line 483
    const-string v1, "listview"

    const-string v2, "\u7531done\u6216\u8005\u4e0a\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u677e\u5f00\u5237\u65b0"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_e
    :goto_4
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-ne v1, v6, :cond_f

    .line 496
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_f

    .line 497
    iput v5, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    .line 498
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeFootViewByState()V

    .line 503
    :cond_f
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-ne v1, v5, :cond_10

    .line 504
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    sub-int/2addr v1, v0

    if-gtz v1, :cond_10

    .line 505
    iget-object v1, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    .line 506
    iget v3, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    .line 505
    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 511
    :cond_10
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    sub-int/2addr v2, v0

    .line 513
    div-int/lit8 v2, v2, 0x6

    iget v3, p0, Lcom/lzx/iteam/widget/PullListView;->headContentHeight:I

    sub-int/2addr v2, v3

    .line 512
    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 377
    :cond_11
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_7

    .line 378
    iput v6, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    .line 379
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeHeaderViewByState()V

    .line 381
    const-string v1, "listview"

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 402
    :cond_12
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_8

    .line 403
    iput v6, p0, Lcom/lzx/iteam/widget/PullListView;->state:I

    .line 404
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeHeaderViewByState()V

    .line 406
    const-string v1, "listview"

    const-string v2, "\u7531DOne\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 461
    :cond_13
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    sub-int/2addr v1, v0

    if-gtz v1, :cond_d

    .line 462
    iput v6, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    .line 463
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeFootViewByState()V

    .line 465
    const-string v1, "listview"

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 486
    :cond_14
    iget v1, p0, Lcom/lzx/iteam/widget/PullListView;->startBottomY:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_e

    .line 487
    iput v6, p0, Lcom/lzx/iteam/widget/PullListView;->bottomstate:I

    .line 488
    invoke-direct {p0}, Lcom/lzx/iteam/widget/PullListView;->changeFootViewByState()V

    .line 490
    const-string v1, "listview"

    const-string v2, "\u7531DOne\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 721
    iget v0, p0, Lcom/lzx/iteam/widget/PullListView;->type:I

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->lastUpdatedTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u8fd1\u66f4\u65b0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 730
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->lastUpdatedTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u8fd1\u66f4\u65b0\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getUpDateTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIsTop(Z)V
    .locals 0
    .param p1, "isTop"    # Z

    .prologue
    .line 733
    iput-boolean p1, p0, Lcom/lzx/iteam/widget/PullListView;->isTop:Z

    .line 734
    return-void
.end method

.method public setShowFooter(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 744
    if-eqz p1, :cond_0

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isFootVisible:Z

    .line 746
    iget-object v0, p0, Lcom/lzx/iteam/widget/PullListView;->footView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lzx/iteam/widget/PullListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_0
    iput-boolean v2, p0, Lcom/lzx/iteam/widget/PullListView;->isFootVisible:Z

    goto :goto_0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 739
    iput p1, p0, Lcom/lzx/iteam/widget/PullListView;->type:I

    .line 740
    return-void
.end method

.method public setonRefreshListener(Lcom/lzx/iteam/widget/PullListView$OnRefreshListener;)V
    .locals 1
    .param p1, "onRefreshListener"    # Lcom/lzx/iteam/widget/PullListView$OnRefreshListener;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/lzx/iteam/widget/PullListView;->refreshListener:Lcom/lzx/iteam/widget/PullListView$OnRefreshListener;

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/PullListView;->isRefreshable:Z

    .line 660
    return-void
.end method
