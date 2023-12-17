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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/view/View;)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroidx/core/content/c;->h(Landroid/view/View;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;Lm0/c;)Lm0/c;
    .registers 3

    iget-object v0, p1, Lm0/c;->a:Lm0/c$e;

    invoke-interface {v0}, Lm0/c$e;->c()Landroid/view/ContentInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Landroidx/core/content/c;->c(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return-object p0

    :cond_11
    if-ne p0, v0, :cond_14

    return-object p1

    :cond_14
    new-instance p1, Lm0/c;

    new-instance v0, Lm0/c$d;

    invoke-direct {v0, p0}, Lm0/c$d;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {p1, v0}, Lm0/c;-><init>(Lm0/c$e;)V

    return-object p1
.end method

.method public static c(Landroid/view/View;[Ljava/lang/String;Lm0/w;)V
    .registers 4

    if-nez p2, :cond_6

    invoke-static {p0, p1}, Landroidx/core/content/c;->e(Landroid/view/View;[Ljava/lang/String;)V

    goto :goto_e

    :cond_6
    new-instance v0, Lm0/g0$q;

    invoke-direct {v0, p2}, Lm0/g0$q;-><init>(Lm0/w;)V

    invoke-static {p0, p1, v0}, Landroidx/core/content/c;->f(Landroid/view/View;[Ljava/lang/String;Lm0/g0$q;)V

    :goto_e
    return-void
.end method
