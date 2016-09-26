.class public Lcn/jpush/b/a/b/r;
.super Lcn/jpush/b/a/b/q;


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field c:I
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field


# virtual methods
.method final a(JLjava/lang/String;)Lcn/jpush/b/a/b/p;
    .locals 9

    const/4 v2, 0x1

    invoke-static {}, Lcn/jpush/a/a/bl;->l()Lcn/jpush/a/a/bm;

    move-result-object v0

    iget v1, p0, Lcn/jpush/b/a/b/r;->c:I

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/bm;->a(I)Lcn/jpush/a/a/bm;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/b/a/b/r;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/jpush/b/a/b/r;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/jpush/c;->a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/bm;->a(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/bm;

    :cond_0
    iget-object v1, p0, Lcn/jpush/b/a/b/r;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/jpush/b/a/b/r;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/jpush/c;->a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/bm;->b(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/bm;

    :cond_1
    iget-object v1, p0, Lcn/jpush/b/a/b/r;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/jpush/b/a/b/r;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/jpush/c;->a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/bm;->c(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/bm;

    :cond_2
    new-instance v1, Lcn/jpush/b/a/b/p;

    invoke-virtual {v0}, Lcn/jpush/a/a/bm;->a()Lcn/jpush/a/a/bl;

    move-result-object v7

    move v3, v2

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/jpush/b/a/b/p;-><init>(IIJLjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
