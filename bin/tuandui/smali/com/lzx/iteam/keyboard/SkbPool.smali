.class public Lcom/lzx/iteam/keyboard/SkbPool;
.super Ljava/lang/Object;
.source "SkbPool.java"


# static fields
.field private static mInstance:Lcom/lzx/iteam/keyboard/SkbPool;


# instance fields
.field private mSkbTemplates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lzx/iteam/keyboard/SkbTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftKeyboards:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lzx/iteam/keyboard/SoftKeyboard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/keyboard/SkbPool;->mInstance:Lcom/lzx/iteam/keyboard/SkbPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbPool;->mSkbTemplates:Ljava/util/Vector;

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/lzx/iteam/keyboard/SkbPool;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/lzx/iteam/keyboard/SkbPool;->mInstance:Lcom/lzx/iteam/keyboard/SkbPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lzx/iteam/keyboard/SkbPool;

    invoke-direct {v0}, Lcom/lzx/iteam/keyboard/SkbPool;-><init>()V

    sput-object v0, Lcom/lzx/iteam/keyboard/SkbPool;->mInstance:Lcom/lzx/iteam/keyboard/SkbPool;

    .line 37
    :cond_0
    sget-object v0, Lcom/lzx/iteam/keyboard/SkbPool;->mInstance:Lcom/lzx/iteam/keyboard/SkbPool;

    return-object v0
.end method


# virtual methods
.method public getSkbTemplate(ILandroid/content/Context;)Lcom/lzx/iteam/keyboard/SkbTemplate;
    .locals 4
    .param p1, "skbTemplateId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbPool;->mSkbTemplates:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 52
    if-eqz p2, :cond_2

    .line 53
    new-instance v2, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;

    invoke-direct {v2, p2}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, "xkbl":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;
    invoke-virtual {v2, p1}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->loadSkbTemplate(I)Lcom/lzx/iteam/keyboard/SkbTemplate;

    move-result-object v1

    .line 55
    .local v1, "t":Lcom/lzx/iteam/keyboard/SkbTemplate;
    if-eqz v1, :cond_2

    .line 56
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbPool;->mSkbTemplates:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v1    # "t":Lcom/lzx/iteam/keyboard/SkbTemplate;
    .end local v2    # "xkbl":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;
    :cond_0
    :goto_1
    return-object v1

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbPool;->mSkbTemplates:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/keyboard/SkbTemplate;

    .line 47
    .restart local v1    # "t":Lcom/lzx/iteam/keyboard/SkbTemplate;
    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/SkbTemplate;->getSkbTemplateId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "t":Lcom/lzx/iteam/keyboard/SkbTemplate;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSoftKeyboard(IIIILandroid/content/Context;)Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .locals 4
    .param p1, "skbCacheId"    # I
    .param p2, "skbXmlId"    # I
    .param p3, "skbWidth"    # I
    .param p4, "skbHeight"    # I
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 75
    if-eqz p5, :cond_3

    .line 76
    new-instance v2, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;

    invoke-direct {v2, p5}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;-><init>(Landroid/content/Context;)V

    .line 77
    .local v2, "xkbl":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;
    invoke-virtual {v2, p2, p3, p4}, Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;->loadKeyboard(III)Lcom/lzx/iteam/keyboard/SoftKeyboard;

    move-result-object v1

    .line 78
    .local v1, "skb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getCacheFlag()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {v1, p1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->setCacheId(I)V

    .line 81
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v1    # "skb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .end local v2    # "xkbl":Lcom/lzx/iteam/keyboard/XmlKeyboardLoader;
    :cond_0
    :goto_1
    return-object v1

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/keyboard/SoftKeyboard;

    .line 69
    .restart local v1    # "skb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getCacheId()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getSkbXmlId()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 70
    invoke-virtual {v1, p3, p4}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->setSkbCoreSize(II)V

    .line 71
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->setNewlyLoadedFlag(Z)V

    goto :goto_1

    .line 67
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "skb":Lcom/lzx/iteam/keyboard/SoftKeyboard;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public resetCachedSkb()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SkbPool;->mSoftKeyboards:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 42
    return-void
.end method
