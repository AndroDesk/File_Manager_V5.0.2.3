.class public final Lp3/k0$a;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lp3/k0;ZLp3/n0;I)Lp3/b0;
    .registers 6

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    move p1, v1

    .line 7
    :cond_6
    and-int/lit8 p3, p3, 0x2

    .line 9
    if-eqz p3, :cond_b

    .line 11
    const/4 v1, 0x1

    .line 12
    :cond_b
    invoke-interface {p0, p1, v1, p2}, Lp3/k0;->i(ZZLp3/n0;)Lp3/b0;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
