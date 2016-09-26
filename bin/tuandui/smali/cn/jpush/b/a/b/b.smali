.class public Lcn/jpush/b/a/b/b;
.super Lcn/jpush/b/a/b/q;


# instance fields
.field a:J
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field d:I
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/jpush/annotations/a;
    .end annotation
.end field


# virtual methods
.method final a(JLjava/lang/String;)Lcn/jpush/b/a/b/p;
    .locals 9

    invoke-static {}, Lcn/jpush/a/a/d;->n()Lcn/jpush/a/a/e;

    move-result-object v0

    iget-wide v2, p0, Lcn/jpush/b/a/b/b;->a:J

    invoke-virtual {v0, v2, v3}, Lcn/jpush/a/a/e;->a(J)Lcn/jpush/a/a/e;

    move-result-object v0

    iget v1, p0, Lcn/jpush/b/a/b/b;->d:I

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/e;->a(I)Lcn/jpush/a/a/e;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/b/a/b/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/jpush/b/a/b/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/jpush/c;->a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/e;->a(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/e;

    :cond_0
    iget-object v1, p0, Lcn/jpush/b/a/b/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/jpush/b/a/b/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/jpush/c;->a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/e;->b(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/e;

    :cond_1
    iget-object v1, p0, Lcn/jpush/b/a/b/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/jpush/b/a/b/b;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/jpush/c;->a(Ljava/lang/String;)Lcom/google/protobuf/jpush/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/a/a/e;->c(Lcom/google/protobuf/jpush/c;)Lcn/jpush/a/a/e;

    :cond_2
    new-instance v1, Lcn/jpush/b/a/b/p;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcn/jpush/a/a/e;->a()Lcn/jpush/a/a/d;

    move-result-object v7

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/jpush/b/a/b/p;-><init>(IIJLjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
