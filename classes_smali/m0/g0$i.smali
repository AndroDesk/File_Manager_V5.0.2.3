.class public final Lm0/g0$i;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public static a(Landroid/view/WindowInsets;Landroid/view/View;)V
    .registers 3

    .line 1
    sget v0, Lc0/b;->tag_window_insets_animation_callback:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-interface {v0, p1, p0}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 14
    :cond_d
    return-void
.end method

.method public static b(Landroid/view/View;Lm0/r0;Landroid/graphics/Rect;)Lm0/r0;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lm0/r0;->h()Landroid/view/WindowInsets;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1, p0}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_f
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 19
    return-object p1
.end method

.method public static c(Landroid/view/View;FFZ)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static d(Landroid/view/View;FF)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static e(Landroid/view/View;II[I[I)Z
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static f(Landroid/view/View;IIII[I)Z
    .registers 6

    .line 1
    invoke-virtual/range {p0 .. p5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static g(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static h(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static i(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static j(Landroid/view/View;)Lm0/r0;
    .registers 7

    .line 1
    sget-boolean v0, Lm0/r0$a;->d:Z

    .line 3
    if-eqz v0, :cond_8f

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    goto/16 :goto_8f

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    :try_start_10
    sget-object v1, Lm0/r0$a;->a:Ljava/lang/reflect/Field;

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_8f

    .line 25
    sget-object v1, Lm0/r0$a;->b:Ljava/lang/reflect/Field;

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/Rect;

    .line 33
    sget-object v2, Lm0/r0$a;->c:Ljava/lang/reflect/Field;

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/graphics/Rect;

    .line 41
    if-eqz v1, :cond_8f

    .line 43
    if-eqz v0, :cond_8f

    .line 45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    const/16 v3, 0x1e

    .line 49
    if-lt v2, v3, :cond_38

    .line 51
    new-instance v2, Lm0/r0$d;

    .line 53
    invoke-direct {v2}, Lm0/r0$d;-><init>()V

    .line 56
    goto :goto_47

    .line 57
    :cond_38
    const/16 v3, 0x1d

    .line 59
    if-lt v2, v3, :cond_42

    .line 61
    new-instance v2, Lm0/r0$c;

    .line 63
    invoke-direct {v2}, Lm0/r0$c;-><init>()V

    .line 66
    goto :goto_47

    .line 67
    :cond_42
    new-instance v2, Lm0/r0$b;

    .line 69
    invoke-direct {v2}, Lm0/r0$b;-><init>()V

    .line 72
    :goto_47
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 74
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 76
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 78
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 80
    invoke-static {v3, v4, v5, v1}, Lf0/f;->a(IIII)Lf0/f;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v2, v1}, Lm0/r0$e;->c(Lf0/f;)V

    .line 87
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 89
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 91
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 93
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 95
    invoke-static {v1, v3, v4, v0}, Lf0/f;->a(IIII)Lf0/f;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v2, v0}, Lm0/r0$e;->d(Lf0/f;)V

    .line 102
    invoke-virtual {v2}, Lm0/r0$e;->b()Lm0/r0;

    .line 105
    move-result-object v0

    .line 106
    iget-object v1, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 108
    invoke-virtual {v1, v0}, Lm0/r0$k;->p(Lm0/r0;)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 114
    move-result-object p0

    .line 115
    iget-object v1, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 117
    invoke-virtual {v1, p0}, Lm0/r0$k;->d(Landroid/view/View;)V
    :try_end_77
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_77} :catch_78

    .line 120
    goto :goto_90

    .line 121
    :catch_78
    move-exception p0

    .line 122
    const-string v0, "Failed to get insets from AttachInfo. "

    .line 124
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    const-string v1, "WindowInsetsCompat"

    .line 141
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_8f
    :goto_8f
    const/4 v0, 0x0

    .line 145
    :goto_90
    return-object v0
.end method

.method public static k(Landroid/view/View;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static l(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static m(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static n(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static o(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static p(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static q(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public static r(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 4
    return-void
.end method

.method public static s(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 4
    return-void
.end method

.method public static t(Landroid/view/View;Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 4
    return-void
.end method

.method public static u(Landroid/view/View;Lm0/v;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-ge v0, v1, :cond_b

    .line 7
    sget v0, Lc0/b;->tag_on_apply_window_listener:I

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 12
    :cond_b
    if-nez p1, :cond_19

    .line 14
    sget p1, Lc0/b;->tag_window_insets_animation_callback:I

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 25
    return-void

    .line 26
    :cond_19
    new-instance v0, Lm0/g0$i$a;

    .line 28
    invoke-direct {v0, p0, p1}, Lm0/g0$i$a;-><init>(Landroid/view/View;Lm0/v;)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 34
    return-void
.end method

.method public static v(Landroid/view/View;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static w(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 4
    return-void
.end method

.method public static x(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    .line 4
    return-void
.end method

.method public static y(Landroid/view/View;I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->startNestedScroll(I)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static z(Landroid/view/View;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 4
    return-void
.end method
