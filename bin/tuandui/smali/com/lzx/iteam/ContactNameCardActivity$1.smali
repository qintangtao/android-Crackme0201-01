.class Lcom/lzx/iteam/ContactNameCardActivity$1;
.super Landroid/os/Handler;
.source "ContactNameCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ContactNameCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactNameCardActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactNameCardActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x3ea

    const/4 v13, 0x2

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 68
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_6

    .line 71
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/lzx/iteam/bean/ContactNameCard;

    .line 72
    .local v2, "contactNameCard":Lcom/lzx/iteam/bean/ContactNameCard;
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    iget-object v7, v2, Lcom/lzx/iteam/bean/ContactNameCard;->userName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/lzx/iteam/ContactNameCardActivity;->access$0(Lcom/lzx/iteam/ContactNameCardActivity;Ljava/lang/String;)V

    .line 73
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    iget-object v7, v2, Lcom/lzx/iteam/bean/ContactNameCard;->avatar:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/lzx/iteam/ContactNameCardActivity;->access$1(Lcom/lzx/iteam/ContactNameCardActivity;Ljava/lang/String;)V

    .line 74
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    iget v7, v2, Lcom/lzx/iteam/bean/ContactNameCard;->sex:I

    invoke-static {v6, v7}, Lcom/lzx/iteam/ContactNameCardActivity;->access$2(Lcom/lzx/iteam/ContactNameCardActivity;I)V

    .line 75
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->groupInfos:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$3(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v2, Lcom/lzx/iteam/bean/ContactNameCard;->groups:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->groupInfos:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$3(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 79
    iget-object v7, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    const v8, 0x7f0e0221

    invoke-virtual {v6, v8}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-static {v7, v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$5(Lcom/lzx/iteam/ContactNameCardActivity;Lcom/lzx/iteam/widget/HorizontalTabStrip;)V

    .line 80
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mHtsCategoryStrip:Lcom/lzx/iteam/widget/HorizontalTabStrip;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$6(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/widget/HorizontalTabStrip;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lzx/iteam/ContactNameCardActivity;->access$4(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    invoke-virtual {v6, v7, v8}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->setTabData(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 81
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mTvUserName:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$7(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mUserName:Ljava/lang/String;
    invoke-static {v7}, Lcom/lzx/iteam/ContactNameCardActivity;->access$8(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget-object v6, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v7, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mAvatar:Ljava/lang/String;
    invoke-static {v7}, Lcom/lzx/iteam/ContactNameCardActivity;->access$9(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mIvAvatar:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lzx/iteam/ContactNameCardActivity;->access$10(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;

    move-result-object v8

    sget-object v9, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v6, v7, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 84
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mSex:I
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$11(Lcom/lzx/iteam/ContactNameCardActivity;)I

    move-result v6

    if-nez v6, :cond_3

    .line 85
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mIvSex:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$12(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->groupInfos:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$3(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->groupInfos:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$3(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 95
    new-instance v0, Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;

    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    iget-object v7, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    invoke-virtual {v7}, Lcom/lzx/iteam/ContactNameCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;-><init>(Lcom/lzx/iteam/ContactNameCardActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 96
    .local v0, "adapter":Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mVpPager:Lcom/lzx/iteam/widget/WrapContentHeightViewPager;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$13(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/widget/WrapContentHeightViewPager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/lzx/iteam/widget/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 97
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mHtsCategoryStrip:Lcom/lzx/iteam/widget/HorizontalTabStrip;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$6(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/widget/HorizontalTabStrip;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mVpPager:Lcom/lzx/iteam/widget/WrapContentHeightViewPager;
    invoke-static {v7}, Lcom/lzx/iteam/ContactNameCardActivity;->access$13(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/widget/WrapContentHeightViewPager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 98
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mTvHaveNoTeam:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$14(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mHtsCategoryStrip:Lcom/lzx/iteam/widget/HorizontalTabStrip;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$6(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/widget/HorizontalTabStrip;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->setVisibility(I)V

    goto/16 :goto_0

    .line 76
    .end local v0    # "adapter":Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudContact;

    .line 77
    .local v3, "group":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v7, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->groups:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/lzx/iteam/ContactNameCardActivity;->access$4(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v3, Lcom/lzx/iteam/bean/CloudContact;->groupName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 86
    .end local v3    # "group":Lcom/lzx/iteam/bean/CloudContact;
    :cond_3
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mSex:I
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$11(Lcom/lzx/iteam/ContactNameCardActivity;)I

    move-result v6

    if-ne v6, v11, :cond_4

    .line 87
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mIvSex:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$12(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mIvSex:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$12(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f0202eb

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 89
    :cond_4
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mSex:I
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$11(Lcom/lzx/iteam/ContactNameCardActivity;)I

    move-result v6

    if-ne v6, v13, :cond_1

    .line 90
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mIvSex:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$12(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mIvSex:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$12(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f0202ea

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 102
    :cond_5
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mTvHaveNoTeam:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$14(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mHtsCategoryStrip:Lcom/lzx/iteam/widget/HorizontalTabStrip;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$6(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/widget/HorizontalTabStrip;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->setVisibility(I)V

    goto/16 :goto_0

    .line 109
    .end local v2    # "contactNameCard":Lcom/lzx/iteam/bean/ContactNameCard;
    :cond_6
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x1f41

    if-ne v6, v7, :cond_7

    .line 110
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    const v7, 0x7f080042

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 111
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 112
    :cond_7
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v8, :cond_0

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x3eb

    if-eq v6, v7, :cond_0

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x3ed

    if-eq v6, v7, :cond_0

    .line 114
    iget-object v7, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 119
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_9

    .line 120
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 121
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 122
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mLlTalkImage:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$15(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    .line 131
    :goto_3
    :pswitch_2
    sget-object v7, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage1:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lzx/iteam/ContactNameCardActivity;->access$19(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;

    move-result-object v8

    sget-object v9, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7, v6, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_0

    .line 125
    :pswitch_3
    sget-object v7, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage4:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lzx/iteam/ContactNameCardActivity;->access$16(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;

    move-result-object v8

    sget-object v9, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7, v6, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 127
    :pswitch_4
    sget-object v7, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage3:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lzx/iteam/ContactNameCardActivity;->access$17(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;

    move-result-object v8

    sget-object v9, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7, v6, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 129
    :pswitch_5
    sget-object v7, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage2:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lzx/iteam/ContactNameCardActivity;->access$18(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;

    move-result-object v8

    sget-object v9, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7, v6, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_3

    .line 139
    :cond_8
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mLlTalkImage:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$15(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 142
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x1f41

    if-ne v6, v7, :cond_a

    .line 143
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    const v7, 0x7f080042

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 144
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 145
    :cond_a
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v8, :cond_0

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x3eb

    if-eq v6, v7, :cond_0

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x3ed

    if-eq v6, v7, :cond_0

    .line 147
    iget-object v7, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 153
    :pswitch_6
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_0

    .line 154
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_c

    .line 155
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lzx/iteam/bean/ChatGroup;

    .line 156
    .local v1, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    const-string v6, "1"

    iput-object v6, v1, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    .line 157
    const-string v6, "2"

    iput-object v6, v1, Lcom/lzx/iteam/bean/ChatGroup;->memberCount:Ljava/lang/String;

    .line 158
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$20(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->getChatGroupCount(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    .line 159
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    # getter for: Lcom/lzx/iteam/ContactNameCardActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->access$20(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertChatGroup(Lcom/lzx/iteam/bean/ChatGroup;)J

    .line 161
    :cond_b
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    const-class v7, Lcom/lzx/iteam/ChatActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "chat_group_id"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v6, "chat_group_name"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v6, "chat_count"

    const-string v7, "2"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v6, "userType"

    const-string v7, "2"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v6, "creatorName"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v6, "isSingle"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    invoke-virtual {v6, v4}, Lcom/lzx/iteam/ContactNameCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    invoke-virtual {v6}, Lcom/lzx/iteam/ContactNameCardActivity;->finish()V

    goto/16 :goto_0

    .line 172
    .end local v1    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_c
    iget-object v6, p0, Lcom/lzx/iteam/ContactNameCardActivity$1;->this$0:Lcom/lzx/iteam/ContactNameCardActivity;

    const-string v7, "\u521b\u5efa\u5c0f\u7ec4\u5931\u8d25"

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 123
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
