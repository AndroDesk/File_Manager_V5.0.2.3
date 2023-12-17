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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[D[[D)Lu/b;
    .registers 6

    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    move p0, v1

    :cond_6
    if-eqz p0, :cond_1b

    if-eq p0, v1, :cond_10

    new-instance p0, Lu/f;

    invoke-direct {p0, p1, p2}, Lu/f;-><init>([D[[D)V

    return-object p0

    :cond_10
    new-instance p0, Lu/b$a;

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-object p1, p2, v0

    invoke-direct {p0, v1, v2, p1}, Lu/b$a;-><init>(D[D)V

    return-object p0

    :cond_1b
    new-instance p0, Lu/g;

    invoke-direct {p0, p1, p2}, Lu/g;-><init>([D[[D)V

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
