.class Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AttendanceCreateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field endTime:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field startTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;

.field workDate:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
