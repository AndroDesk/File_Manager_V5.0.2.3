.class public final Lm0/g0$j;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# direct methods
.method public static a(Landroid/view/View;)Lm0/r0;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-static {v0, v1}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 15
    invoke-virtual {v1, v0}, Lm0/r0$k;->p(Lm0/r0;)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 21
    move-result-object p0

    .line 22
    iget-object v1, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 24
    invoke-virtual {v1, p0}, Lm0/r0$k;->d(Landroid/view/View;)V

    .line 27
    return-object v0
.end method

.method public static b(Landroid/view/View;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollIndicators()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static c(Landroid/view/View;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollIndicators(I)V

    .line 4
    return-void
.end method

.method public static d(Landroid/view/View;II)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    .line 4
    return-void
.end method
