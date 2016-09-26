.class public Lcn/jpush/android/api/DefaultPushNotificationBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jpush/android/api/PushNotificationBuilder;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "wl\u0017+V_}!?P[G\u001e>JU`\u0012+WZf\u001f\u0008VZe\u0015/Q"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x23

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "Pg_ SFz\u0019dB]m\u0003%JW\'?\u0005wzO8\tbg@>\u0004|pF?\u001ef}].\u001ejgE4"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "}fQ$LG`\u0017#@R}\u0018%M\u0013j\u001e$WVg\u0005jW\\)\u0002\"LD\'Q\rJElQ?S\u001d"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "Uh\u0018&FW)\u0005%\u0003Tl\u0005jBCy\u001d#@R}\u0018%M\u0013`\u001f,L\u0013h\u001f.\u0003Zj\u001e$\r"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "Yy\u00049Klg\u001e>JU`\u0012+WZf\u001f\u0015JPf\u001f"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "W{\u0010=BQe\u0014"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    return-void

    :pswitch_5
    const/16 v9, 0x33

    goto :goto_2

    :pswitch_6
    const/16 v9, 0x9

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x71

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x4a

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v2, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jpush/android/util/z;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_7

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    if-eqz v0, :cond_5

    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/e;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcn/jpush/android/e;->b:I

    if-eqz v0, :cond_4

    sget v0, Lcn/jpush/android/e;->b:I

    :cond_3
    :goto_1
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcn/jpush/android/e;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :goto_2
    invoke-virtual {p0, v0}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->a(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_0
    sget-object v0, Lcn/jpush/android/e;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/e;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {}, Lcn/jpush/android/util/z;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v2, v2, v5

    sget-object v3, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcn/jpush/android/util/z;->c()V

    goto :goto_2

    :cond_7
    new-instance v0, Landroid/app/Notification;

    sget v2, Lcn/jpush/android/e;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, p1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-virtual {p0, v0}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->a(Landroid/app/Notification;)V

    iget-object v2, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    if-nez v2, :cond_8

    sget-object v2, Lcn/jpush/android/e;->d:Ljava/lang/String;

    iput-object v2, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0, p1}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_9

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    :cond_9
    sget-object v2, Lcn/jpush/android/e;->e:Landroid/content/Context;

    iget-object v3, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3, p1, v1}, Lcn/jpush/android/api/m;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method a(Landroid/app/Notification;)V
    .locals 0

    return-void
.end method

.method b(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
