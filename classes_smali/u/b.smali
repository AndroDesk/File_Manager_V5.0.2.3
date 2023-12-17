.class public abstract Lu/b;
.super Ljava/lang/Object;
.source "CurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[D[[D)Lu/b;
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ne v0, v2, :cond_6

    .line 6
    move p0, v1

    .line 7
    :cond_6
    if-eqz p0, :cond_1b

    .line 9
    if-eq p0, v1, :cond_10

    .line 11
    new-instance p0, Lu/f;

    .line 13
    invoke-direct {p0, p1, p2}, Lu/f;-><init>([D[[D)V

    .line 16
    return-object p0

    .line 17
    :cond_10
    new-instance p0, Lu/b$a;

    .line 19
    const/4 v0, 0x0

    .line 20
    aget-wide v1, p1, v0

    .line 22
    aget-object p1, p2, v0

    .line 24
    invoke-direct {p0, v1, v2, p1}, Lu/b$a;-><init>(D[D)V

    .line 27
    return-object p0

    .line 28
    :cond_1b
    new-instance p0, Lu/g;

    .line 30
    invoke-direct {p0, p1, p2}, Lu/g;-><init>([D[[D)V

    .line 33
    return-object p0
.end method


# virtual methods
.method public abstract b(D)D
.end method

.method public abstract c(D[D)V
.end method

.method public abstract d(D[F)V
.end method

.method public abstract e(D[D)V
.end method
