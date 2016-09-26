.class Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttendanceDeviationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceDeviationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/AttendanceDeviationActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/AttendanceDeviationActivity;Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;-><init>(Lcom/lzx/iteam/AttendanceDeviationActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviationActivity;->deviation:[Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceDeviationActivity;->access$0(Lcom/lzx/iteam/AttendanceDeviationActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviationActivity;->deviation:[Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceDeviationActivity;->access$0(Lcom/lzx/iteam/AttendanceDeviationActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 93
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "holder":Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a4

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance v0, Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;

    .end local v0    # "holder":Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    invoke-direct {v0, v1, p2}, Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;-><init>(Lcom/lzx/iteam/AttendanceDeviationActivity;Landroid/view/View;)V

    .line 104
    .restart local v0    # "holder":Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v1, v0, Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviationActivity;->deviation:[Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDeviationActivity;->access$0(Lcom/lzx/iteam/AttendanceDeviationActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceDeviationActivity$DeviationAdapter;->this$0:Lcom/lzx/iteam/AttendanceDeviationActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviationActivity;->selectPosition:I
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceDeviationActivity;->access$1(Lcom/lzx/iteam/AttendanceDeviationActivity;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 111
    iget-object v1, v0, Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :goto_1
    return-object p2

    .line 106
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;
    check-cast v0, Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;
    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, v0, Lcom/lzx/iteam/AttendanceDeviationActivity$ViewHolder;->image:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
