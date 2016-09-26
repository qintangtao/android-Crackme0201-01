.class Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EventImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/EventImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/EventImageAdapter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/EventImageAdapter;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/EventImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/EventImageAdapter;Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventImageAdapter;)V

    return-void
.end method
