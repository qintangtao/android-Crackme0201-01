.class public Lcn/jpush/b/a/b/k;
.super Lcn/jpush/b/a/b/q;


# virtual methods
.method final a(JLjava/lang/String;)Lcn/jpush/b/a/b/p;
    .locals 9

    invoke-static {}, Lcn/jpush/a/a/as;->h()Lcn/jpush/a/a/at;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/a/a/at;->a()Lcn/jpush/a/a/as;

    move-result-object v7

    new-instance v1, Lcn/jpush/b/a/b/p;

    const/16 v2, 0x24

    const/4 v3, 0x1

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/jpush/b/a/b/p;-><init>(IIJLjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
