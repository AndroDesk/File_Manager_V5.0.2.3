.class public final Lu/b$a;
.super Lu/b;
.source "CurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(D[D)V
    .registers 4

    invoke-direct {p0}, Lu/b;-><init>()V

    iput-object p3, p0, Lu/b$a;->a:[D

    return-void
.end method


# virtual methods
.method public final b(D)D
    .registers 5

    iget-object p1, p0, Lu/b$a;->a:[D

    const/4 p2, 0x0

    aget-wide v0, p1, p2

    return-wide v0
.end method

.method public final c(D[D)V
    .registers 5

    iget-object p1, p0, Lu/b$a;->a:[D

    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final d(D[F)V
    .registers 6

    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lu/b$a;->a:[D

    array-length v0, p2

    if-ge p1, v0, :cond_e

    aget-wide v0, p2, p1

    double-to-float p2, v0

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public final e(D[D)V
    .registers 6

    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lu/b$a;->a:[D

    array-length p2, p2

    if-ge p1, p2, :cond_d

    const-wide/16 v0, 0x0

    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method
