.class public final Lcn/jpush/android/helpers/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    sget-object v0, Lcn/jpush/android/e;->o:Lcn/jpush/android/b;

    invoke-interface {v0, p1, p2}, Lcn/jpush/android/b;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {p0, p1, p2}, Lcn/jpush/android/util/af;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    sget-object v0, Lcn/jpush/android/e;->o:Lcn/jpush/android/b;

    invoke-interface {v0, p1, p2, p3}, Lcn/jpush/android/b;->b(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {p0, p1, p2, p3}, Lcn/jpush/android/util/af;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcn/jpush/android/e;->o:Lcn/jpush/android/b;

    invoke-interface {v0, p1, p2}, Lcn/jpush/android/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {p0, p1, p2}, Lcn/jpush/android/util/af;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    sget-object v0, Lcn/jpush/android/e;->o:Lcn/jpush/android/b;

    invoke-interface {v0, p1, p2}, Lcn/jpush/android/b;->b(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {p0, p1, p2}, Lcn/jpush/android/util/af;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    sget-object v0, Lcn/jpush/android/e;->o:Lcn/jpush/android/b;

    invoke-interface {v0, p1, p2}, Lcn/jpush/android/b;->a(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {p0, p1, p2}, Lcn/jpush/android/util/af;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Lcn/jpush/android/e;->o:Lcn/jpush/android/b;

    const-wide/16 v4, 0x0

    invoke-interface {v2, p1, v4, v5}, Lcn/jpush/android/b;->a(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {p0, p1, v0, v1}, Lcn/jpush/android/util/af;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcn/jpush/android/e;->o:Lcn/jpush/android/b;

    invoke-interface {v0, p1, p2}, Lcn/jpush/android/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {p0, p1, p2}, Lcn/jpush/android/util/af;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcn/jpush/android/e;->o:Lcn/jpush/android/b;

    invoke-interface {v0, p1, p2}, Lcn/jpush/android/b;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->a()V

    invoke-static {p0, p1, p2}, Lcn/jpush/android/util/af;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method
