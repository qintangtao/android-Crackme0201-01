.class Lcom/lzx/iteam/adapter/TalkListAdapter$3;
.super Ljava/lang/Object;
.source "TalkListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/TalkListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/TalkListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$3;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method
