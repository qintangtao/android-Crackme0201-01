.class public Lcom/lzx/iteam/AttendanceDeviationActivity;
.super Landroid/app/Activity;
.source "AttendanceDeviationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;,
        Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private adapter:Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;

.field private deviation:[Ljava/lang/String;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLvDeviation:Landroid/widget/ListView;

.field private mTvOk:Landroid/widget/TextView;

.field private selectPosition:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "300\u7c73"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "500\u7c73"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1000\u7c73"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->deviation:[Ljava/lang/String;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AttendanceDeviationActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->deviation:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AttendanceDeviationActivity;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->selectPosition:I

    return v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AttendanceDeviationActivity;I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->selectPosition:I

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AttendanceDeviationActivity;)Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->adapter:Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;

    return-object v0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 33
    const v1, 0x7f0e00cf

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AttendanceDeviationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 34
    const v1, 0x7f0e00d0

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AttendanceDeviationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->mTvOk:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0e00d1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AttendanceDeviationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->mLvDeviation:Landroid/widget/ListView;

    .line 37
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->mTvOk:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance v1, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;-><init>(Lcom/lzx/iteam/AttendanceDeviationActivity;Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;)V

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->adapter:Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;

    .line 40
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->mLvDeviation:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->adapter:Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->mLvDeviation:Landroid/widget/ListView;

    new-instance v2, Lcom/lzx/iteam/AttendanceDeviationActivity$1;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/AttendanceDeviationActivity$1;-><init>(Lcom/lzx/iteam/AttendanceDeviationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceDeviationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "300"

    const-string v2, "deviation"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->selectPosition:I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v1, "500"

    const-string v2, "deviation"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->selectPosition:I

    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "1000"

    const-string v2, "deviation"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x2

    iput v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->selectPosition:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceDeviationActivity;->finish()V

    goto :goto_0

    .line 65
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deviation"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->deviation:[Ljava/lang/String;

    iget v3, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->selectPosition:I

    aget-object v2, v2, v3

    const-string v3, "\u7c73"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lzx/iteam/AttendanceDeviationActivity;->setResult(ILandroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceDeviationActivity;->finish()V

    .line 69
    const-string v1, "AttendanceDeviationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6240\u9009\u62e9\u7684\u504f\u5dee\u8303\u56f4\u662f\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->deviation:[Ljava/lang/String;

    iget v4, p0, Lcom/lzx/iteam/AttendanceDeviationActivity;->selectPosition:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00cf
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDeviationActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceDeviationActivity;->initViews()V

    .line 30
    return-void
.end method
