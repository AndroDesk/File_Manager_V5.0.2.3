.class public final Lf1/a;
.super Lf1/r;
.source "AutoTransition.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lf1/r;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf1/r;->d(I)V

    new-instance v1, Lf1/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lf1/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lf1/r;->a(Lf1/n;)V

    new-instance v1, Lf1/b;

    invoke-direct {v1}, Lf1/b;-><init>()V

    invoke-virtual {p0, v1}, Lf1/r;->a(Lf1/n;)V

    new-instance v1, Lf1/d;

    invoke-direct {v1, v0}, Lf1/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lf1/r;->a(Lf1/n;)V

    return-void
.end method
