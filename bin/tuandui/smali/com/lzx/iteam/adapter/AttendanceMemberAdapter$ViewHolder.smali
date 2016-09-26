.class Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AttendanceMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field delete:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

.field userImage:Landroid/widget/ImageView;

.field userName:Landroid/widget/TextView;

.field userPosition:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;)V

    return-void
.end method
