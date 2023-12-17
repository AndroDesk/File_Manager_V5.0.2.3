.class public final Lf1/a;
.super Lf1/r;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lf1/r;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lf1/r;->d(I)V

    .line 8
    new-instance v1, Lf1/d;

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, v2}, Lf1/d;-><init>(I)V

    .line 14
    invoke-virtual {p0, v1}, Lf1/r;->a(Lf1/n;)V

    .line 17
    new-instance v1, Lf1/b;

    .line 19
    invoke-direct {v1}, Lf1/b;-><init>()V

    .line 22
    invoke-virtual {p0, v1}, Lf1/r;->a(Lf1/n;)V

    .line 25
    new-instance v1, Lf1/d;

    .line 27
    invoke-direct {v1, v0}, Lf1/d;-><init>(I)V

    .line 30
    invoke-virtual {p0, v1}, Lf1/r;->a(Lf1/n;)V

    .line 33
    return-void
.end method
