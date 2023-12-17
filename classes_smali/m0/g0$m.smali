.class public final Lm0/g0$m;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# direct methods
.method public static a(Landroid/view/View;Lm0/g0$r;)V
    .registers 4

    .line 1
    sget v0, Lc0/b;->tag_unhandled_key_listeners:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/collection/f;

    .line 9
    if-nez v1, :cond_12

    .line 11
    new-instance v1, Landroidx/collection/f;

    .line 13
    invoke-direct {v1}, Landroidx/collection/f;-><init>()V

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    :cond_12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Lm0/i0;

    .line 24
    invoke-direct {v0, p1}, Lm0/i0;-><init>(Lm0/g0$r;)V

    .line 27
    invoke-virtual {v1, p1, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {p0, v0}, Landroidx/appcompat/widget/y;->t(Landroid/view/View;Lm0/i0;)V

    .line 33
    return-void
.end method

.method public static b(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/y;->m(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/y;->D(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static d(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/y;->x(Landroid/view/View;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static e(Landroid/view/View;Lm0/g0$r;)V
    .registers 3

    .line 1
    sget v0, Lc0/b;->tag_unhandled_key_listeners:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/collection/f;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/view/View$OnUnhandledKeyEventListener;

    .line 18
    if-eqz p1, :cond_16

    .line 20
    invoke-static {p0, p1}, Landroidx/appcompat/widget/y;->r(Landroid/view/View;Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 23
    :cond_16
    return-void
.end method

.method public static f(Landroid/view/View;I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p0}, Landroidx/appcompat/widget/y;->k(ILandroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static g(Landroid/view/View;Z)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/y;->C(Landroid/view/View;Z)V

    .line 4
    return-void
.end method

.method public static h(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/y;->s(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 4
    return-void
.end method

.method public static i(Landroid/view/View;Z)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/y;->u(Landroid/view/View;Z)V

    .line 4
    return-void
.end method
