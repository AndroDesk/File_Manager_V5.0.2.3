.class public final Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$c;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;
    }
.end annotation


# static fields
.field public static A:Z


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Z

.field public f:Landroid/view/View;

.field public g:F

.field public h:F

.field public i:I

.field public j:Z

.field public k:I

.field public l:F

.field public m:F

.field public final n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public o:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

.field public final p:Lr0/c;

.field public q:Z

.field public r:Z

.field public final s:Landroid/graphics/Rect;

.field public final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field public w:I

.field public x:Landroidx/window/layout/h;

.field public y:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;

.field public z:Landroidx/slidingpanelayout/widget/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Ljava/util/ArrayList;

    new-instance v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;

    invoke-direct {v3, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->y:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;

    invoke-direct {v4, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, v4}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    invoke-static {p0, v2}, Lm0/g0$d;->s(Landroid/view/View;I)V

    new-instance v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

    invoke-direct {v4, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    new-instance v5, Lr0/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p0, v4}, Lr0/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lr0/c$c;)V

    iget v4, v5, Lr0/c;->b:I

    int-to-float v4, v4

    const/high16 v6, 0x40000000  # 2.0f

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, v5, Lr0/c;->b:I

    iput-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    const/high16 v4, 0x43c80000  # 400.0f

    mul-float/2addr v3, v4

    iput v3, v5, Lr0/c;->n:F

    sget-object v3, Landroidx/window/layout/n;->a:Landroidx/window/layout/n$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/window/layout/q;

    sget-object v4, Landroidx/window/layout/s;->a:Landroidx/window/layout/s;

    :try_start_69
    sget-object v5, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->c()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v5

    if-nez v5, :cond_75

    goto :goto_7b

    :cond_75
    new-instance v6, Landroidx/window/layout/f;

    invoke-direct {v6, v5}, Landroidx/window/layout/f;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;)V
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_7b

    goto :goto_7c

    :catchall_7b
    :goto_7b
    move-object v6, v0

    :goto_7c
    if-nez v6, :cond_e0

    sget-object v5, Landroidx/window/layout/l;->c:Landroidx/window/layout/l;

    sget-object v5, Landroidx/window/layout/l;->c:Landroidx/window/layout/l;

    if-nez v5, :cond_db

    sget-object v5, Landroidx/window/layout/l;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_89
    sget-object v6, Landroidx/window/layout/l;->c:Landroidx/window/layout/l;
    :try_end_8b
    .catchall {:try_start_89 .. :try_end_8b} :catchall_d6

    if-nez v6, :cond_d0

    :try_start_8d
    invoke-static {}, Landroidx/window/layout/SidecarCompat$a;->c()Landroidx/window/core/Version;

    move-result-object v6

    if-nez v6, :cond_94

    goto :goto_ba

    :cond_94
    sget-object v7, Landroidx/window/core/Version;->f:Landroidx/window/core/Version;

    const-string v8, "other"

    invoke-static {v7, v8}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v6, Landroidx/window/core/Version;->e:Ly2/c;

    invoke-interface {v6}, Ly2/c;->getValue()Ljava/lang/Object;

    move-result-object v6

    const-string v8, "<get-bigInteger>(...)"

    invoke-static {v6, v8}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/math/BigInteger;

    iget-object v7, v7, Landroidx/window/core/Version;->e:Ly2/c;

    invoke-interface {v7}, Ly2/c;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v8}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_ba

    move v1, v2

    :cond_ba
    :goto_ba
    if-eqz v1, :cond_c9

    new-instance v1, Landroidx/window/layout/SidecarCompat;

    invoke-direct {v1, p1}, Landroidx/window/layout/SidecarCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/window/layout/SidecarCompat;->j()Z

    move-result v2
    :try_end_c5
    .catchall {:try_start_8d .. :try_end_c5} :catchall_c9

    if-nez v2, :cond_c8

    goto :goto_c9

    :cond_c8
    move-object v0, v1

    :catchall_c9
    :cond_c9
    :goto_c9
    :try_start_c9
    new-instance v1, Landroidx/window/layout/l;

    invoke-direct {v1, v0}, Landroidx/window/layout/l;-><init>(Landroidx/window/layout/SidecarCompat;)V

    sput-object v1, Landroidx/window/layout/l;->c:Landroidx/window/layout/l;

    :cond_d0
    sget-object v0, Ly2/e;->a:Ly2/e;
    :try_end_d2
    .catchall {:try_start_c9 .. :try_end_d2} :catchall_d6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_db

    :catchall_d6
    move-exception p1

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_db
    :goto_db
    sget-object v6, Landroidx/window/layout/l;->c:Landroidx/window/layout/l;

    invoke-static {v6}, Li3/g;->b(Ljava/lang/Object;)V

    :cond_e0
    invoke-direct {v3, v4, v6}, Landroidx/window/layout/q;-><init>(Landroidx/window/layout/s;Landroidx/window/layout/m;)V

    sget-object v0, Landroidx/window/layout/n$a;->b:Landroidx/window/layout/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Landroidx/slidingpanelayout/widget/a;

    invoke-direct {v0, v3, p1}, Landroidx/slidingpanelayout/widget/a;-><init>(Landroidx/window/layout/q;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setFoldingFeatureObserver(Landroidx/slidingpanelayout/widget/a;)V

    return-void
.end method

.method private getSystemGestureInsets()Lf0/f;
    .registers 2

    sget-boolean v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->A:Z

    if-eqz v0, :cond_13

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lm0/g0$j;->a(Landroid/view/View;)Lm0/r0;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v0}, Lm0/r0$k;->i()Lf0/f;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method private setFoldingFeatureObserver(Landroidx/slidingpanelayout/widget/a;)V
    .registers 3

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->z:Landroidx/slidingpanelayout/widget/a;

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->y:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;

    invoke-virtual {p1, v0}, Landroidx/slidingpanelayout/widget/a;->setOnFoldingFeatureChangeListener(Landroidx/slidingpanelayout/widget/a$a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz v1, :cond_1a

    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->c:Z

    if-eqz p1, :cond_1a

    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;-><init>(Landroid/view/View;)V

    invoke-super {p0, v0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Z
    .registers 3

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lm0/g0$e;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public final c()Z
    .registers 3

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz v0, :cond_e

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public final computeScroll()V
    .registers 2

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    invoke-virtual {v0}, Lr0/c;->h()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    invoke-virtual {v0}, Lr0/c;->a()V

    return-void

    :cond_12
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    :cond_17
    return-void
.end method

.method public final d(F)V
    .registers 10

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_2f

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    if-ne v3, v4, :cond_14

    goto :goto_2c

    :cond_14
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float v4, v5, v4

    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    int-to-float v7, v6

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    sub-float/2addr v5, p1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    if-eqz v0, :cond_29

    neg-int v4, v4

    :cond_29
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2f
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:Landroid/graphics/drawable/Drawable;

    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_47

    if-nez v0, :cond_20

    goto :goto_47

    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_41

    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v4, v1, v4

    move v6, v4

    move v4, v1

    move v1, v6

    :goto_41
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 9

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    const/4 v1, 0x1

    iput v1, v0, Lr0/c;->q:I

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getSystemGestureInsets()Lf0/f;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    iget v2, v1, Lr0/c;->p:I

    iget v0, v0, Lf0/f;->a:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lr0/c;->o:I

    goto :goto_3a

    :cond_23
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    const/4 v1, 0x2

    iput v1, v0, Lr0/c;->q:I

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getSystemGestureInsets()Lf0/f;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    iget v2, v1, Lr0/c;->p:I

    iget v0, v0, Lf0/f;->c:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lr0/c;->o:I

    :cond_3a
    :goto_3a
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz v2, :cond_81

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->b:Z

    if-nez v0, :cond_81

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    if-eqz v0, :cond_81

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_7c

    :cond_6c
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_7c
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method public final e(F)Z
    .registers 7

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v0

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    int-to-float v4, v4

    mul-float/2addr p1, v4

    add-float/2addr p1, v0

    int-to-float v0, v2

    add-float/2addr p1, v0

    sub-float/2addr v3, p1

    float-to-int p1, v3

    goto :goto_3f

    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    :goto_3f
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iput-object v2, v0, Lr0/c;->t:Landroid/view/View;

    const/4 v2, -0x1

    iput v2, v0, Lr0/c;->c:I

    invoke-virtual {v0, p1, v3, v1, v1}, Lr0/c;->j(IIII)Z

    move-result p1

    if-nez p1, :cond_5d

    iget v2, v0, Lr0/c;->a:I

    if-nez v2, :cond_5d

    iget-object v2, v0, Lr0/c;->t:Landroid/view/View;

    if-eqz v2, :cond_5d

    const/4 v2, 0x0

    iput-object v2, v0, Lr0/c;->t:Landroid/view/View;

    :cond_5d
    if-eqz p1, :cond_7e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v0, v1

    :goto_64
    if-ge v0, p1, :cond_77

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_74

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    :cond_77
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lm0/g0$d;->k(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_7e
    return v1
.end method

.method public final f(Landroid/view/View;)V
    .registers 19

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    :goto_16
    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    goto :goto_26

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v0, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_50

    :cond_4c
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_50
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_55
    move-object/from16 v13, p0

    if-ge v12, v11, :cond_ac

    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ne v14, v0, :cond_60

    goto :goto_ac

    :cond_60
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v6, 0x8

    if-ne v15, v6, :cond_6b

    move/from16 v16, v1

    goto :goto_a5

    :cond_6b
    if-eqz v1, :cond_6f

    move v6, v3

    goto :goto_70

    :cond_6f
    move v6, v2

    :goto_70
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v16, v1

    if-eqz v1, :cond_86

    move v0, v2

    goto :goto_87

    :cond_86
    move v0, v3

    :goto_87
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v6, v7, :cond_a1

    if-lt v15, v9, :cond_a1

    if-gt v0, v8, :cond_a1

    if-gt v1, v10, :cond_a1

    const/4 v0, 0x4

    goto :goto_a2

    :cond_a1
    const/4 v0, 0x0

    :goto_a2
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_a5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    goto :goto_55

    :cond_ac
    :goto_ac
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_11

    :cond_c
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    return-object v0
.end method

.method public getCoveredFadeColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:I

    return v0
.end method

.method public final getLockMode()I
    .registers 2

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->w:I

    return v0
.end method

.method public getParallaxDistance()I
    .registers 2

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    return v0
.end method

.method public getSliderFadeColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    return v0
.end method

.method public final onAttachedToWindow()V
    .registers 7

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->z:Landroidx/slidingpanelayout/widget/a;

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_e
    instance-of v1, v0, Landroid/content/ContextWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1a

    check-cast v0, Landroid/app/Activity;

    goto :goto_22

    :cond_1a
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_e

    :cond_21
    move-object v0, v2

    :goto_22
    if-eqz v0, :cond_61

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->z:Landroidx/slidingpanelayout/widget/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/slidingpanelayout/widget/a;->c:Lp3/w0;

    if-nez v3, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {v3, v2}, Lp3/o0;->o(Ljava/util/concurrent/CancellationException;)V

    :goto_31
    iget-object v3, v1, Landroidx/slidingpanelayout/widget/a;->b:Ljava/util/concurrent/Executor;

    instance-of v4, v3, Lp3/z;

    if-eqz v4, :cond_3a

    move-object v4, v3

    check-cast v4, Lp3/z;

    :cond_3a
    new-instance v4, Lp3/f0;

    invoke-direct {v4, v3}, Lp3/f0;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v3, Lu3/e;

    sget-object v5, Lp3/k0$b;->a:Lp3/k0$b;

    invoke-virtual {v4, v5}, Lkotlinx/coroutines/CoroutineDispatcher;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    move-result-object v5

    if-eqz v5, :cond_4a

    goto :goto_53

    :cond_4a
    new-instance v5, Lp3/m0;

    invoke-direct {v5, v2}, Lp3/m0;-><init>(Lp3/k0;)V

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    :goto_53
    invoke-direct {v3, v4}, Lu3/e;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    new-instance v4, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;

    invoke-direct {v4, v1, v0, v2}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;-><init>(Landroidx/slidingpanelayout/widget/a;Landroid/app/Activity;La3/c;)V

    invoke-static {v3, v4}, Lkotlinx/coroutines/a;->c(Lu3/e;Lh3/p;)Lp3/w0;

    move-result-object v0

    iput-object v0, v1, Landroidx/slidingpanelayout/widget/a;->c:Lp3/w0;

    :cond_61
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->z:Landroidx/slidingpanelayout/widget/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/a;->c:Lp3/w0;

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v0, v1}, Lp3/o0;->o(Ljava/util/concurrent/CancellationException;)V

    :cond_13
    :goto_13
    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_22

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_22
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2c

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_2c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4, v5}, Lr0/c;->l(Landroid/view/View;II)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :cond_2c
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz v1, :cond_a9

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:Z

    if-eqz v1, :cond_38

    if-eqz v0, :cond_38

    goto/16 :goto_a9

    :cond_38
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a3

    if-ne v0, v2, :cond_3f

    goto :goto_a3

    :cond_3f
    if-eqz v0, :cond_6e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_45

    goto :goto_95

    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    iget v5, v4, Lr0/c;->b:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_95

    cmpl-float v0, v1, v0

    if-lez v0, :cond_95

    invoke-virtual {v4}, Lr0/c;->b()V

    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:Z

    return v3

    :cond_6e
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:F

    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v0, v1}, Lr0/c;->l(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_95

    move v0, v2

    goto :goto_96

    :cond_95
    :goto_95
    move v0, v3

    :goto_96
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    invoke-virtual {v1, p1}, Lr0/c;->t(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_a2

    if-eqz v0, :cond_a1

    goto :goto_a2

    :cond_a1
    move v2, v3

    :cond_a2
    :goto_a2
    return v2

    :cond_a3
    :goto_a3
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    invoke-virtual {p1}, Lr0/c;->b()V

    return v3

    :cond_a9
    :goto_a9
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    invoke-virtual {v0}, Lr0/c;->b()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onLayout(ZIIII)V
    .registers 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v1

    sub-int v2, p4, p2

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    goto :goto_13

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    :goto_13
    if-eqz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    goto :goto_1e

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    if-eqz v7, :cond_38

    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz v7, :cond_34

    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    if-eqz v7, :cond_34

    const/4 v7, 0x0

    goto :goto_36

    :cond_34
    const/high16 v7, 0x3f800000  # 1.0f

    :goto_36
    iput v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    :cond_38
    move v9, v3

    const/4 v10, 0x0

    :goto_3a
    if-ge v10, v6, :cond_ee

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_4d

    move v7, v9

    const/high16 v9, 0x3f800000  # 1.0f

    goto/16 :goto_e9

    :cond_4d
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget-boolean v14, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->b:Z

    if-eqz v14, :cond_92

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    sub-int v15, v2, v4

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v16

    sub-int v16, v16, v9

    sub-int v14, v16, v14

    iput v14, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:I

    if-eqz v1, :cond_71

    iget v7, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_73

    :cond_71
    iget v7, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_73
    add-int v16, v9, v7

    add-int v16, v16, v14

    div-int/lit8 v17, v13, 0x2

    add-int v8, v17, v16

    if-le v8, v15, :cond_7f

    const/4 v8, 0x1

    goto :goto_80

    :cond_7f
    const/4 v8, 0x0

    :goto_80
    iput-boolean v8, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->c:Z

    int-to-float v8, v14

    iget v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    mul-float/2addr v8, v12

    float-to-int v8, v8

    add-int/2addr v7, v8

    add-int/2addr v7, v9

    int-to-float v8, v8

    int-to-float v9, v14

    div-float/2addr v8, v9

    iput v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    goto :goto_aa

    :cond_92
    iget-boolean v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz v7, :cond_a6

    iget v7, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    if-eqz v7, :cond_a6

    iget v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    const/high16 v9, 0x3f800000  # 1.0f

    sub-float v8, v9, v8

    int-to-float v7, v7

    mul-float/2addr v8, v7

    float-to-int v7, v8

    move v8, v7

    move v7, v3

    goto :goto_aa

    :cond_a6
    const/high16 v9, 0x3f800000  # 1.0f

    move v7, v3

    const/4 v8, 0x0

    :goto_aa
    if-eqz v1, :cond_b2

    sub-int v12, v2, v7

    add-int/2addr v12, v8

    sub-int v8, v12, v13

    goto :goto_b6

    :cond_b2
    sub-int v8, v7, v8

    add-int v12, v8, v13

    :goto_b6
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v11, v8, v5, v12, v13}, Landroid/view/View;->layout(IIII)V

    iget-object v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    if-eqz v8, :cond_dd

    invoke-interface {v8}, Landroidx/window/layout/h;->b()Landroidx/window/layout/h$a;

    move-result-object v8

    sget-object v12, Landroidx/window/layout/h$a;->b:Landroidx/window/layout/h$a;

    if-ne v8, v12, :cond_dd

    iget-object v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    invoke-interface {v8}, Landroidx/window/layout/h;->a()Z

    move-result v8

    if-eqz v8, :cond_dd

    iget-object v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    invoke-interface {v8}, Landroidx/window/layout/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    goto :goto_de

    :cond_dd
    const/4 v8, 0x0

    :goto_de
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v11

    add-int/2addr v8, v3

    move v3, v8

    :goto_e9
    add-int/lit8 v10, v10, 0x1

    move v9, v7

    goto/16 :goto_3a

    :cond_ee
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    if-eqz v1, :cond_104

    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz v1, :cond_ff

    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    if-eqz v1, :cond_ff

    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:F

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d(F)V

    :cond_ff
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f(Landroid/view/View;)V

    :cond_104
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    return-void
.end method

.method public final onMeasure(II)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000  # 2.0f

    const/4 v8, 0x0

    if-eq v4, v6, :cond_2b

    if-eq v4, v7, :cond_1f

    move v5, v8

    goto :goto_29

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v5, v9

    :goto_29
    move v9, v5

    goto :goto_37

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v5, v9

    move v9, v5

    move v5, v8

    :goto_37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int v10, v3, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_54

    const-string v13, "SlidingPaneLayout"

    const-string v14, "onMeasure: More than two child views are not supported."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const/4 v13, 0x0

    iput-object v13, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    move v15, v8

    move/from16 v16, v15

    move v13, v10

    const/16 v17, 0x0

    :goto_5d
    const/16 v12, 0x8

    if-ge v15, v11, :cond_f2

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v12, :cond_77

    iput-boolean v8, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->c:Z

    goto/16 :goto_e9

    :cond_77
    iget v12, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    const/4 v14, 0x0

    cmpl-float v19, v12, v14

    if-lez v19, :cond_86

    add-float v17, v17, v12

    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v12, :cond_86

    goto/16 :goto_e9

    :cond_86
    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v14

    sub-int v12, v10, v12

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v8, -0x2

    if-ne v14, v8, :cond_a1

    if-nez v2, :cond_9a

    move v8, v2

    goto :goto_9c

    :cond_9a
    const/high16 v8, -0x80000000

    :goto_9c
    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_b0

    :cond_a1
    const/4 v8, -0x1

    if-ne v14, v8, :cond_a9

    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_b0

    :cond_a9
    const/high16 v8, 0x40000000  # 2.0f

    invoke-static {v14, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v8, v12

    :goto_b0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int/2addr v14, v12

    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v14, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    invoke-virtual {v6, v8, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-le v12, v5, :cond_d8

    const/high16 v14, -0x80000000

    if-ne v4, v14, :cond_d5

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_d8

    :cond_d5
    if-nez v4, :cond_d8

    move v5, v12

    :cond_d8
    :goto_d8
    sub-int/2addr v13, v8

    if-nez v15, :cond_dc

    goto :goto_e9

    :cond_dc
    if-gez v13, :cond_e0

    const/4 v8, 0x1

    goto :goto_e1

    :cond_e0
    const/4 v8, 0x0

    :goto_e1
    iput-boolean v8, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->b:Z

    or-int v16, v16, v8

    if-eqz v8, :cond_e9

    iput-object v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    :cond_e9
    :goto_e9
    add-int/lit8 v15, v15, 0x1

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000  # 2.0f

    const/4 v8, 0x0

    goto/16 :goto_5d

    :cond_f2
    if-nez v16, :cond_f9

    const/4 v2, 0x0

    cmpl-float v6, v17, v2

    if-lez v6, :cond_1ac

    :cond_f9
    const/4 v2, 0x0

    :goto_fa
    if-ge v2, v11, :cond_1ac

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_10c

    move/from16 v20, v13

    const/16 v18, 0x0

    goto/16 :goto_1a4

    :cond_10c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v8, :cond_11f

    iget v8, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    const/4 v14, 0x0

    cmpl-float v8, v8, v14

    if-lez v8, :cond_11f

    const/4 v8, 0x1

    goto :goto_120

    :cond_11f
    const/4 v8, 0x0

    :goto_120
    if-eqz v8, :cond_124

    const/4 v8, 0x0

    goto :goto_128

    :cond_124
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    :goto_128
    if-eqz v16, :cond_138

    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v7

    sub-int v7, v10, v14

    const/high16 v14, 0x40000000  # 2.0f

    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_155

    :cond_138
    iget v14, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_153

    const/4 v14, 0x0

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget v7, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    int-to-float v14, v15

    mul-float/2addr v7, v14

    div-float v7, v7, v17

    float-to-int v7, v7

    add-int/2addr v7, v8

    const/high16 v14, 0x40000000  # 2.0f

    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_155

    :cond_153
    move v7, v8

    const/4 v15, 0x0

    :goto_155
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    add-int v14, v20, v14

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v12, v20

    check-cast v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    move/from16 v20, v13

    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v13, :cond_177

    iget v13, v12, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    const/16 v18, 0x0

    cmpl-float v13, v13, v18

    if-lez v13, :cond_179

    const/4 v13, 0x1

    goto :goto_17a

    :cond_177
    const/16 v18, 0x0

    :cond_179
    const/4 v13, 0x0

    :goto_17a
    if-eqz v13, :cond_183

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v14, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    goto :goto_18d

    :cond_183
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    const/high16 v13, 0x40000000  # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    :goto_18d
    if-eq v8, v7, :cond_1a4

    invoke-virtual {v6, v15, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-le v6, v5, :cond_1a4

    const/high16 v7, -0x80000000

    if-ne v4, v7, :cond_1a1

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1a4

    :cond_1a1
    if-nez v4, :cond_1a4

    move v5, v6

    :cond_1a4
    :goto_1a4
    add-int/lit8 v2, v2, 0x1

    move/from16 v13, v20

    const/16 v12, 0x8

    goto/16 :goto_fa

    :cond_1ac
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    if-eqz v1, :cond_26c

    invoke-interface {v1}, Landroidx/window/layout/h;->a()Z

    move-result v1

    if-nez v1, :cond_1b8

    goto/16 :goto_26c

    :cond_1b8
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    invoke-interface {v1}, Landroidx/window/layout/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_1c4

    goto/16 :goto_26c

    :cond_1c4
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    invoke-interface {v1}, Landroidx/window/layout/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_26c

    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->x:Landroidx/window/layout/h;

    const/4 v2, 0x2

    new-array v4, v2, [I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v7, v4, v6

    const/4 v6, 0x1

    aget v8, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    aget v12, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v12

    invoke-direct {v2, v7, v8, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-interface {v1}, Landroidx/window/layout/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_206

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_208

    :cond_206
    if-nez v1, :cond_20a

    :cond_208
    const/4 v6, 0x0

    goto :goto_215

    :cond_20a
    const/4 v1, 0x0

    aget v2, v4, v1

    neg-int v1, v2

    const/4 v2, 0x1

    aget v4, v4, v2

    neg-int v2, v4

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :goto_215
    if-nez v6, :cond_218

    goto :goto_26c

    :cond_218
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-direct {v1, v2, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    new-instance v4, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-direct {v4, v6, v7, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Rect;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    const/4 v1, 0x1

    aput-object v4, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_26d

    :cond_26c
    :goto_26c
    const/4 v13, 0x0

    :goto_26d
    if-eqz v13, :cond_31b

    if-nez v16, :cond_31b

    const/4 v14, 0x0

    :goto_272
    if-ge v14, v11, :cond_31b

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_287

    const/high16 v4, 0x40000000  # 2.0f

    const/high16 v12, -0x80000000

    const/4 v15, 0x0

    goto/16 :goto_30e

    :cond_287
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    const/high16 v9, 0x40000000  # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    const/high16 v12, -0x80000000

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v1, v9, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v9

    const/high16 v15, 0x1000000

    and-int/2addr v9, v15

    const/4 v15, 0x1

    if-eq v9, v15, :cond_300

    instance-of v9, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;

    if-eqz v9, :cond_2cc

    move-object v15, v1

    check-cast v15, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v15}, Lm0/g0$d;->e(Landroid/view/View;)I

    move-result v4

    goto :goto_2d2

    :cond_2cc
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lm0/g0$d;->e(Landroid/view/View;)I

    move-result v4

    :goto_2d2
    if-eqz v4, :cond_2f1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v9, :cond_2e7

    move-object v9, v1

    check-cast v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Lm0/g0$d;->e(Landroid/view/View;)I

    move-result v9

    goto :goto_2ec

    :cond_2e7
    const/4 v15, 0x0

    invoke-static {v1}, Lm0/g0$d;->e(Landroid/view/View;)I

    move-result v9

    :goto_2ec
    if-ge v4, v9, :cond_2f2

    const/high16 v4, 0x40000000  # 2.0f

    goto :goto_303

    :cond_2f1
    const/4 v15, 0x0

    :cond_2f2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/high16 v4, 0x40000000  # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v2, v8}, Landroid/view/View;->measure(II)V

    goto :goto_30e

    :cond_300
    const/high16 v4, 0x40000000  # 2.0f

    const/4 v15, 0x0

    :goto_303
    sub-int v2, v10, v7

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v2, v8}, Landroid/view/View;->measure(II)V

    if-nez v14, :cond_310

    :goto_30e
    const/4 v2, 0x1

    goto :goto_317

    :cond_310
    const/4 v2, 0x1

    iput-boolean v2, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->b:Z

    iput-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    move/from16 v16, v2

    :goto_317
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_272

    :cond_31b
    move/from16 v1, v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    iget v3, v2, Lr0/c;->a:I

    if-eqz v3, :cond_337

    if-nez v1, :cond_337

    invoke-virtual {v2}, Lr0/c;->a()V

    :cond_337
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->a:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :cond_1c
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    if-nez v0, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_27
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    goto :goto_3f

    :cond_2a
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_31

    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :cond_31
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    if-nez v0, :cond_3d

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_3d
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :cond_3f
    :goto_3f
    iget-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->a:Z

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->b:I

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setLockMode(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result v0

    goto :goto_14

    :cond_12
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :goto_14
    iput-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->a:Z

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->w:I

    iput v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->b:I

    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    :cond_8
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    invoke-virtual {v0, p1}, Lr0/c;->m(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5d

    if-eq v0, v1, :cond_18

    goto :goto_69

    :cond_18
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:F

    sub-float v2, v0, v2

    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    sub-float v3, p1, v3

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Lr0/c;

    iget v4, v4, Lr0/c;->b:I

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v3, v2

    mul-int/2addr v4, v4

    int-to-float v2, v4

    cmpg-float v2, v3, v2

    if-gez v2, :cond_69

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-static {v2, v0, p1}, Lr0/c;->l(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_69

    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    const/4 v0, 0x0

    if-nez p1, :cond_4e

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :cond_4e
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    if-nez p1, :cond_5a

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    move-result p1

    if-eqz p1, :cond_69

    :cond_5a
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    goto :goto_69

    :cond_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:F

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    :cond_69
    :goto_69
    return v1
.end method

.method public final removeView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$g;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_16

    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-nez p2, :cond_16

    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Landroid/view/View;

    if-ne p1, p2, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :cond_16
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:I

    return-void
.end method

.method public final setLockMode(I)V
    .registers 2

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->w:I

    return-void
.end method

.method public setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    if-eqz p1, :cond_10

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$f;

    return-void
.end method

.method public setParallaxDistance(I)V
    .registers 2

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceRight(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSliderFadeColor(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    return-void
.end method
