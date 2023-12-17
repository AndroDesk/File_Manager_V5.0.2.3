.class public final Landroidx/window/layout/g;
.super Ljava/lang/Object;
.source "ExtensionsWindowLayoutInfoAdapter.kt"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/i;
    .registers 13
    .param p0  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Landroidx/window/extensions/layout/FoldingFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_14

    if-eq v0, v1, :cond_11

    return-object v2

    :cond_11
    sget-object v0, Landroidx/window/layout/i$a;->c:Landroidx/window/layout/i$a;

    goto :goto_16

    :cond_14
    sget-object v0, Landroidx/window/layout/i$a;->b:Landroidx/window/layout/i$a;

    :goto_16
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    move-result v4

    if-eq v4, v3, :cond_22

    if-eq v4, v1, :cond_1f

    return-object v2

    :cond_1f
    sget-object v1, Landroidx/window/layout/h$b;->c:Landroidx/window/layout/h$b;

    goto :goto_24

    :cond_22
    sget-object v1, Landroidx/window/layout/h$b;->b:Landroidx/window/layout/h$b;

    :goto_24
    new-instance v4, Lj1/b;

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const-string v6, "oemFeature.bounds"

    invoke-static {v5, v6}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lj1/b;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Landroidx/window/layout/s;->a:Landroidx/window/layout/s;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    const/4 v8, 0x0

    if-lt v5, v7, :cond_44

    invoke-static {p0}, Landroidx/window/layout/a;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    goto/16 :goto_ec

    :cond_44
    const/16 v7, 0x1d

    if-lt v5, v7, :cond_b1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    :try_start_50
    const-class v7, Landroid/content/res/Configuration;

    const-string v9, "windowConfiguration"

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v9, "getBounds"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-instance v9, Landroid/graphics/Rect;

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7d

    check-cast v5, Landroid/graphics/Rect;

    invoke-direct {v9, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p0, v9

    goto/16 :goto_ec

    :cond_7d
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type android.graphics.Rect"

    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_85
    .catch Ljava/lang/NoSuchFieldException; {:try_start_50 .. :try_end_85} :catch_a6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_85} :catch_9b
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_85} :catch_90
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_85} :catch_85

    :catch_85
    move-exception v5

    sget-object v7, Landroidx/window/layout/s;->b:Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Landroidx/window/layout/s;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_ec

    :catch_90
    move-exception v5

    sget-object v7, Landroidx/window/layout/s;->b:Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Landroidx/window/layout/s;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_ec

    :catch_9b
    move-exception v5

    sget-object v7, Landroidx/window/layout/s;->b:Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Landroidx/window/layout/s;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_ec

    :catch_a6
    move-exception v5

    sget-object v7, Landroidx/window/layout/s;->b:Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Landroidx/window/layout/s;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_ec

    :cond_b1
    const/16 v7, 0x1c

    if-lt v5, v7, :cond_ba

    invoke-static {p0}, Landroidx/window/layout/s;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_ec

    :cond_ba
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v9

    if-nez v9, :cond_eb

    invoke-static {v7}, Landroidx/window/layout/s;->c(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v7

    invoke-static {p0}, Landroidx/window/layout/s;->b(Landroid/content/Context;)I

    move-result p0

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, p0

    iget v10, v7, Landroid/graphics/Point;->y:I

    if-ne v9, v10, :cond_e2

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_eb

    :cond_e2
    iget v9, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, p0

    iget p0, v7, Landroid/graphics/Point;->x:I

    if-ne v9, p0, :cond_eb

    iput v9, v5, Landroid/graphics/Rect;->right:I

    :cond_eb
    :goto_eb
    move-object p0, v5

    :goto_ec
    new-instance v5, Lj1/b;

    invoke-direct {v5, p0}, Lj1/b;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Lj1/b;->a()Landroid/graphics/Rect;

    move-result-object p0

    iget v5, v4, Lj1/b;->d:I

    iget v7, v4, Lj1/b;->b:I

    sub-int/2addr v5, v7

    if-nez v5, :cond_105

    iget v5, v4, Lj1/b;->c:I

    iget v7, v4, Lj1/b;->a:I

    sub-int/2addr v5, v7

    if-nez v5, :cond_105

    move v5, v3

    goto :goto_106

    :cond_105
    move v5, v8

    :goto_106
    if-eqz v5, :cond_109

    goto :goto_14d

    :cond_109
    iget v5, v4, Lj1/b;->c:I

    iget v7, v4, Lj1/b;->a:I

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-eq v5, v7, :cond_120

    iget v5, v4, Lj1/b;->d:I

    iget v7, v4, Lj1/b;->b:I

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eq v5, v7, :cond_120

    goto :goto_14d

    :cond_120
    iget v5, v4, Lj1/b;->c:I

    iget v7, v4, Lj1/b;->a:I

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v5, v7, :cond_137

    iget v5, v4, Lj1/b;->d:I

    iget v7, v4, Lj1/b;->b:I

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v5, v7, :cond_137

    goto :goto_14d

    :cond_137
    iget v5, v4, Lj1/b;->c:I

    iget v7, v4, Lj1/b;->a:I

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ne v5, v7, :cond_14e

    iget v5, v4, Lj1/b;->d:I

    iget v4, v4, Lj1/b;->b:I

    sub-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ne v5, p0, :cond_14e

    :goto_14d
    move v3, v8

    :cond_14e
    if-eqz v3, :cond_161

    new-instance v2, Landroidx/window/layout/i;

    new-instance p0, Lj1/b;

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1, v6}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lj1/b;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v2, p0, v0, v1}, Landroidx/window/layout/i;-><init>(Lj1/b;Landroidx/window/layout/i$a;Landroidx/window/layout/h$b;)V

    :cond_161
    return-object v2
.end method

.method public static b(Landroid/app/Activity;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/r;
    .registers 5
    .param p0  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Landroidx/window/extensions/layout/WindowLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    const-string v0, "info.displayFeatures"

    invoke-static {p1, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/extensions/layout/DisplayFeature;

    instance-of v2, v1, Landroidx/window/extensions/layout/FoldingFeature;

    if-eqz v2, :cond_38

    const-string v2, "feature"

    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/window/extensions/layout/FoldingFeature;

    invoke-static {p0, v1}, Landroidx/window/layout/g;->a(Landroid/app/Activity;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/i;

    move-result-object v1

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    if-nez v1, :cond_3c

    goto :goto_1c

    :cond_3c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_40
    new-instance p0, Landroidx/window/layout/r;

    invoke-direct {p0, v0}, Landroidx/window/layout/r;-><init>(Ljava/util/List;)V

    return-object p0
.end method
