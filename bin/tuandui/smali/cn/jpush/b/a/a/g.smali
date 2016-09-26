.class public abstract Lcn/jpush/b/a/a/g;
.super Lcn/jpush/b/a/a/f;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/jpush/b/a/a/f;-><init>(ZIIJ)V

    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/b/a/a/g;->e:Lcn/jpush/b/a/a/e;

    iput-wide p1, v0, Lcn/jpush/b/a/a/e;->f:J

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/b/a/a/g;->e:Lcn/jpush/b/a/a/e;

    iput p1, v0, Lcn/jpush/b/a/a/e;->e:I

    return-void
.end method
