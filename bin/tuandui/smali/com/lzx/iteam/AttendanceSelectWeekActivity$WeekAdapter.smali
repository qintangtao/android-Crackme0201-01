.class Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttendanceSelectWeekActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceSelectWeekActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/AttendanceSelectWeekActivity;Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;-><init>(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSelectWeekActivity;->week:[Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceSelectWeekActivity;->access$0(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSelectWeekActivity;->week:[Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceSelectWeekActivity;->access$0(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 145
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

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "holder":Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ad

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 155
    new-instance v0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;

    .end local v0    # "holder":Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    invoke-direct {v0, v1, p2}, Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;-><init>(Lcom/lzx/iteam/AttendanceSelectWeekActivity;Landroid/view/View;)V

    .line 156
    .restart local v0    # "holder":Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    :goto_0
    iget-object v1, v0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;->text_week:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSelectWeekActivity;->week:[Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSelectWeekActivity;->access$0(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$WeekAdapter;->this$0:Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSelectWeekActivity;->isSelected:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceSelectWeekActivity;->access$1(Lcom/lzx/iteam/AttendanceSelectWeekActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, v0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;->image_week:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :goto_1
    return-object p2

    .line 158
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;
    check-cast v0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;
    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, v0, Lcom/lzx/iteam/AttendanceSelectWeekActivity$ViewHolder;->image_week:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
