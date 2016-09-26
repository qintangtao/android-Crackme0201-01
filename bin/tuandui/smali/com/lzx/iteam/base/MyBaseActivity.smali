.class public abstract Lcom/lzx/iteam/base/MyBaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MyBaseActivity.java"


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected mActivity:Landroid/app/Activity;

.field protected mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private initContentView()V
    .locals 9

    .prologue
    .line 77
    iget-object v4, p0, Lcom/lzx/iteam/base/MyBaseActivity;->clazz:Ljava/lang/Class;

    const-class v5, Lcom/lzx/iteam/base/FindViewById;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/base/FindViewById;

    .line 79
    .local v3, "view":Lcom/lzx/iteam/base/FindViewById;
    if-eqz v3, :cond_0

    .line 80
    invoke-interface {v3}, Lcom/lzx/iteam/base/FindViewById;->id()I

    move-result v1

    .line 83
    .local v1, "id":I
    :try_start_0
    iget-object v4, p0, Lcom/lzx/iteam/base/MyBaseActivity;->clazz:Ljava/lang/Class;

    const-string v5, "ContentView"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 85
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .end local v1    # "id":I
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v1    # "id":I
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private initView()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    .line 103
    iget-object v8, p0, Lcom/lzx/iteam/base/MyBaseActivity;->clazz:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 104
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 105
    array-length v8, v2

    :goto_0
    if-lt v7, v8, :cond_1

    .line 133
    :cond_0
    return-void

    .line 105
    :cond_1
    aget-object v1, v2, v7

    .line 107
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v9, Lcom/lzx/iteam/base/FindViewById;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/base/FindViewById;

    .line 109
    .local v6, "viewById":Lcom/lzx/iteam/base/FindViewById;
    if-eqz v6, :cond_2

    .line 110
    invoke-interface {v6}, Lcom/lzx/iteam/base/FindViewById;->id()I

    move-result v3

    .line 113
    .local v3, "id":I
    :try_start_0
    iget-object v9, p0, Lcom/lzx/iteam/base/MyBaseActivity;->clazz:Ljava/lang/Class;

    const-string v10, "findViewById"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 115
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 116
    .local v5, "obj":Ljava/lang/Object;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 118
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .end local v3    # "id":I
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 119
    .restart local v3    # "id":I
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 126
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public abstract initData()V
.end method

.method public abstract initListener()V
.end method

.method protected onCreate(Landroid/os/Bundle;I)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "layoutResID"    # I

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/base/MyBaseActivity;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0, p2}, Lcom/lzx/iteam/base/MyBaseActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/base/MyBaseActivity;->clazz:Ljava/lang/Class;

    .line 47
    iput-object p0, p0, Lcom/lzx/iteam/base/MyBaseActivity;->mActivity:Landroid/app/Activity;

    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/base/MyBaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/base/MyBaseActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 56
    invoke-direct {p0}, Lcom/lzx/iteam/base/MyBaseActivity;->initContentView()V

    .line 61
    invoke-direct {p0}, Lcom/lzx/iteam/base/MyBaseActivity;->initView()V

    .line 66
    invoke-virtual {p0}, Lcom/lzx/iteam/base/MyBaseActivity;->initListener()V

    .line 71
    invoke-virtual {p0}, Lcom/lzx/iteam/base/MyBaseActivity;->initData()V

    .line 72
    return-void
.end method

.method protected showLongToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/base/MyBaseActivity;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    return-void
.end method

.method protected showShortToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/base/MyBaseActivity;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    return-void
.end method
