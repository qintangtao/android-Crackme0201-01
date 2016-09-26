.class public Lcom/lzx/iteam/alarm/AlarmView;
.super Landroid/view/View;
.source "AlarmView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAlarm:Lcom/lzx/iteam/bean/ScheduleData;

.field private mContext:Landroid/content/Context;

.field private mSerLisrener:Lcom/lzx/iteam/alarm/ServiceListener;

.field private mShowView:Landroid/view/View;

.field private mWManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lzx/iteam/alarm/ServiceListener;Lcom/lzx/iteam/bean/ScheduleData;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lzx/iteam/alarm/ServiceListener;
    .param p3, "alarm"    # Lcom/lzx/iteam/bean/ScheduleData;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/lzx/iteam/alarm/AlarmView;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/lzx/iteam/alarm/AlarmView;->mSerLisrener:Lcom/lzx/iteam/alarm/ServiceListener;

    .line 23
    iput-object p3, p0, Lcom/lzx/iteam/alarm/AlarmView;->mAlarm:Lcom/lzx/iteam/bean/ScheduleData;

    .line 24
    return-void
.end method


# virtual methods
.method public fun()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 28
    iget-object v2, p0, Lcom/lzx/iteam/alarm/AlarmView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/lzx/iteam/alarm/AlarmView;->mWManager:Landroid/view/WindowManager;

    .line 29
    iget-object v2, p0, Lcom/lzx/iteam/alarm/AlarmView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/alarm/AlarmView;->mShowView:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/alarm/AlarmView;->mWManager:Landroid/view/WindowManager;

    .line 31
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 32
    .local v1, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 33
    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 34
    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 35
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 36
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 37
    iget-object v2, p0, Lcom/lzx/iteam/alarm/AlarmView;->mShowView:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v2, p0, Lcom/lzx/iteam/alarm/AlarmView;->mShowView:Landroid/view/View;

    const v3, 0x7f0e0029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/alarm/AlarmView;->mAlarm:Lcom/lzx/iteam/bean/ScheduleData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/ScheduleData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, p0, Lcom/lzx/iteam/alarm/AlarmView;->mShowView:Landroid/view/View;

    const v3, 0x7f0e002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/alarm/AlarmView;->mWManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lzx/iteam/alarm/AlarmView;->mShowView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/alarm/AlarmView;->mSerLisrener:Lcom/lzx/iteam/alarm/ServiceListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lzx/iteam/alarm/ServiceListener;->OnCloseService(Z)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x7f0e002a
        :pswitch_0
    .end packed-switch
.end method
