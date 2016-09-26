.class Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/AddContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field add_contact_name:Landroid/widget/TextView;

.field has_tag:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/AddContactsAdapter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/AddContactsAdapter;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/AddContactsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/AddContactsAdapter;Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/AddContactsAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AddContactsAdapter;)V

    return-void
.end method
