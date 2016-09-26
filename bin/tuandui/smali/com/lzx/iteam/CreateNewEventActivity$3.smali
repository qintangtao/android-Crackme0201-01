.class Lcom/lzx/iteam/CreateNewEventActivity$3;
.super Ljava/lang/Object;
.source "CreateNewEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CreateNewEventActivity;->showSavePop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CreateNewEventActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CreateNewEventActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 898
    new-instance v7, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v7}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 899
    .local v7, "bean":Lcom/lzx/iteam/bean/EventListData;
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$2(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "useid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$9(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mTvTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$10(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$11(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$12(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$9(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->getPassVoteData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 917
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventAuthor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$19(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$20(Lcom/lzx/iteam/CreateNewEventActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$9(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$21(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->curYear:I
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$6(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mStartMonth:I
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$22(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mStartDay:I
    invoke-static {v3}, Lcom/lzx/iteam/CreateNewEventActivity;->access$23(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I
    invoke-static {v4}, Lcom/lzx/iteam/CreateNewEventActivity;->access$24(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I
    invoke-static {v5}, Lcom/lzx/iteam/CreateNewEventActivity;->access$25(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 921
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$21(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/CreateNewEventActivity;->access$26(Lcom/lzx/iteam/CreateNewEventActivity;J)V

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$27(Lcom/lzx/iteam/CreateNewEventActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setEndTime(Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # invokes: Lcom/lzx/iteam/CreateNewEventActivity;->getNotice()Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$28(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setIsQrcode(Ljava/lang/String;)V

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->images:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$29(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$30(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventId:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$4(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$3(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventId:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$4(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->queryEventDraftsById(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$3(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventId:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$4(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->updataEventDrafts(Ljava/lang/String;Lcom/lzx/iteam/bean/EventListData;)J

    .line 932
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$2(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "draft_event_unread"

    invoke-virtual {v0, v1, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 933
    .local v8, "unRead":I
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$2(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "draft_event_unread"

    add-int/lit8 v2, v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 935
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$31(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 936
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    const-string v1, "\u8349\u7a3f\u4fdd\u5b58\u6210\u529f"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 937
    sget-object v0, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 938
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->finish()V

    .line 940
    return-void

    .line 910
    .end local v8    # "unRead":I
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$13(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$14(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$15(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$16(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart3:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$17(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart3:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$18(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 930
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$3;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$3(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertEventDrafts(Lcom/lzx/iteam/bean/EventListData;)J

    goto/16 :goto_1
.end method
