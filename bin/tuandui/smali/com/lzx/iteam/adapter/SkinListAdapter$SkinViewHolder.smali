.class Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;
.super Ljava/lang/Object;
.source "SkinListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/SkinListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SkinViewHolder"
.end annotation


# instance fields
.field public head_desc:Landroid/widget/TextView;

.field public isSelect:Landroid/widget/RadioButton;

.field public iv_icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/SkinListAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/SkinListAdapter;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;->this$0:Lcom/lzx/iteam/adapter/SkinListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
