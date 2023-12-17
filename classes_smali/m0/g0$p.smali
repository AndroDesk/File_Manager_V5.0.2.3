.class public final Lm0/g0$p;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation


# direct methods
.method public static a(Landroid/view/View;)[Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/core/content/c;->h(Landroid/view/View;)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Landroid/view/View;Lm0/c;)Lm0/c;
    .registers 3

    .line 1
    iget-object v0, p1, Lm0/c;->a:Lm0/c$e;

    .line 3
    invoke-interface {v0}, Lm0/c$e;->c()Landroid/view/ContentInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p0, v0}, Landroidx/core/content/c;->c(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_11

    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_11
    if-ne p0, v0, :cond_14

    .line 20
    return-object p1

    .line 21
    :cond_14
    new-instance p1, Lm0/c;

    .line 23
    new-instance v0, Lm0/c$d;

    .line 25
    invoke-direct {v0, p0}, Lm0/c$d;-><init>(Landroid/view/ContentInfo;)V

    .line 28
    invoke-direct {p1, v0}, Lm0/c;-><init>(Lm0/c$e;)V

    .line 31
    return-object p1
.end method

.method public static c(Landroid/view/View;[Ljava/lang/String;Lm0/w;)V
    .registers 4

    .line 1
    if-nez p2, :cond_6

    .line 3
    invoke-static {p0, p1}, Landroidx/core/content/c;->e(Landroid/view/View;[Ljava/lang/String;)V

    .line 6
    goto :goto_e

    .line 7
    :cond_6
    new-instance v0, Lm0/g0$q;

    .line 9
    invoke-direct {v0, p2}, Lm0/g0$q;-><init>(Lm0/w;)V

    .line 12
    invoke-static {p0, p1, v0}, Landroidx/core/content/c;->f(Landroid/view/View;[Ljava/lang/String;Lm0/g0$q;)V

    .line 15
    :goto_e
    return-void
.end method
