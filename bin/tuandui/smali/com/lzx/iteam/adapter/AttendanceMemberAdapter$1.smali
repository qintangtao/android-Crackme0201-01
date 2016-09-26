.class Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$1;
.super Ljava/lang/Object;
.source "AttendanceMemberAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$1;->this$0:Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

    iput p2, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$1;->val$position:I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$1;->this$0:Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

    # getter for: Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->access$0(Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/AttendanceMemberActivity;

    iget v1, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/AttendanceMemberActivity;->delAttendanceMember(I)V

    .line 80
    return-void
.end method
