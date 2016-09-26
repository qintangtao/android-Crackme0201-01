.class Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ScheduleManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field delete:Landroid/widget/ImageView;

.field mask:Landroid/view/View;

.field select:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;

.field userImage:Lcom/lzx/iteam/widget/RoundImageView;

.field userName:Landroid/widget/TextView;

.field userPosition:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;)V

    return-void
.end method
