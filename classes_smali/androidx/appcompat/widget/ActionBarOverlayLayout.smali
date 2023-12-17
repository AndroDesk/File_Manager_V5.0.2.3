.class public Landroidx/appcompat/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroidx/appcompat/widget/c0;
.implements Lm0/s;
.implements Lm0/t;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnknownNullness"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionBarOverlayLayout$d;,
        Landroidx/appcompat/widget/ActionBarOverlayLayout$e;
    }
.end annotation


# static fields
.field public static final D:[I


# instance fields
.field public final A:Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

.field public final B:Landroidx/appcompat/widget/ActionBarOverlayLayout$c;

.field public final C:Lm0/u;

.field public a:I

.field public b:I

.field public c:Landroidx/appcompat/widget/ContentFrameLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Landroidx/appcompat/widget/d0;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public final n:Landroid/graphics/Rect;

.field public final o:Landroid/graphics/Rect;

.field public final p:Landroid/graphics/Rect;

.field public q:Lm0/r0;

.field public r:Lm0/r0;

.field public s:Lm0/r0;

.field public v:Lm0/r0;

.field public w:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

.field public x:Landroid/widget/OverScroller;

.field public y:Landroid/view/ViewPropertyAnimator;

.field public final z:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    sget v1, Lh/a;->actionBarSize:I

    .line 6
    const/4 v2, 0x0

    .line 7
    aput v1, v0, v2

    .line 9
    const/4 v1, 0x1

    .line 10
    const v2, 0x1010059

    .line 13
    aput v2, v0, v1

    .line 15
    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:[I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    iput p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:I

    .line 7
    new-instance p2, Landroid/graphics/Rect;

    .line 9
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/Rect;

    .line 14
    new-instance p2, Landroid/graphics/Rect;

    .line 16
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 19
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    .line 21
    new-instance p2, Landroid/graphics/Rect;

    .line 23
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 26
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    .line 28
    new-instance p2, Landroid/graphics/Rect;

    .line 30
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 33
    new-instance p2, Landroid/graphics/Rect;

    .line 35
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 38
    new-instance p2, Landroid/graphics/Rect;

    .line 40
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 43
    new-instance p2, Landroid/graphics/Rect;

    .line 45
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 48
    sget-object p2, Lm0/r0;->b:Lm0/r0;

    .line 50
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Lm0/r0;

    .line 52
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lm0/r0;

    .line 54
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Lm0/r0;

    .line 56
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Lm0/r0;

    .line 58
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    .line 60
    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$a;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    .line 63
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroidx/appcompat/widget/ActionBarOverlayLayout$a;

    .line 65
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 67
    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    .line 70
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 72
    new-instance p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$c;

    .line 74
    invoke-direct {p2, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$c;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    .line 77
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$c;

    .line 79
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Landroid/content/Context;)V

    .line 82
    new-instance p1, Lm0/u;

    .line 84
    invoke-direct {p1}, Lm0/u;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Lm0/u;

    .line 89
    return-void
.end method

.method public static j(Landroid/widget/FrameLayout;Landroid/graphics/Rect;Z)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    .line 7
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v1, :cond_11

    .line 14
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 16
    move v0, v2

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 21
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 23
    if-eq v1, v3, :cond_1b

    .line 25
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    move v0, v2

    .line 28
    :cond_1b
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 30
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 32
    if-eq v1, v3, :cond_24

    .line 34
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 36
    move v0, v2

    .line 37
    :cond_24
    if-eqz p2, :cond_2f

    .line 39
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 41
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 43
    if-eq p2, p1, :cond_2f

    .line 45
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v2, v0

    .line 49
    :goto_30
    return v2
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->a()Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final b()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->b()V

    .line 9
    return-void
.end method

.method public final c()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->c()Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    .line 3
    return p1
.end method

.method public final d()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->d()Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroid/graphics/drawable/Drawable;

    .line 6
    if-eqz v0, :cond_3d

    .line 8
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Z

    .line 10
    if-nez v0, :cond_3d

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_27

    .line 21
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 33
    move-result v2

    .line 34
    add-float/2addr v2, v0

    .line 35
    const/high16 v0, 0x3f000000  # 0.5f

    .line 37
    add-float/2addr v2, v0

    .line 38
    float-to-int v0, v2

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v0, v1

    .line 41
    :goto_28
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 46
    move-result v3

    .line 47
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 52
    move-result v4

    .line 53
    add-int/2addr v4, v0

    .line 54
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 62
    :cond_3d
    return-void
.end method

.method public final e(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/app/AppCompatDelegateImpl$b;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/d0;->e(Landroidx/appcompat/view/menu/h;Landroidx/appcompat/app/AppCompatDelegateImpl$b;)V

    .line 9
    return-void
.end method

.method public final f()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->f()Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final g()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->g()Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    .line 3
    invoke-direct {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;-><init>()V

    .line 6
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 2
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 8
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    neg-int v0, v0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Lm0/u;

    .line 3
    iget v1, v0, Lm0/u;->a:I

    .line 5
    iget v0, v0, Lm0/u;->b:I

    .line 7
    or-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->getTitle()Ljava/lang/CharSequence;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final h(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_19

    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p1, v0, :cond_13

    .line 10
    const/16 v0, 0x6d

    .line 12
    if-eq p1, v0, :cond_e

    .line 14
    goto :goto_1e

    .line 15
    :cond_e
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    .line 19
    goto :goto_1e

    .line 20
    :cond_13
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 22
    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->F()V

    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 28
    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->C()V

    .line 31
    :goto_1e
    return-void
.end method

.method public final i()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->h()V

    .line 9
    return-void
.end method

.method public final k()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$c;

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/view/ViewPropertyAnimator;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 18
    :cond_11
    return-void
.end method

.method public final l(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:[I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 19
    move-result v2

    .line 20
    iput v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:I

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v3

    .line 27
    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f:Landroid/graphics/drawable/Drawable;

    .line 29
    if-nez v3, :cond_20

    .line 31
    move v3, v2

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v3, v1

    .line 34
    :goto_21
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 43
    move-result-object v0

    .line 44
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 46
    const/16 v3, 0x13

    .line 48
    if-ge v0, v3, :cond_32

    .line 50
    move v1, v2

    .line 51
    :cond_32
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Z

    .line 53
    new-instance v0, Landroid/widget/OverScroller;

    .line 55
    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroid/widget/OverScroller;

    .line 60
    return-void
.end method

.method public final m()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 3
    if-nez v0, :cond_4d

    .line 5
    sget v0, Lh/f;->action_bar_activity_content:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 13
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 15
    sget v0, Lh/f;->action_bar_container:I

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/appcompat/widget/ActionBarContainer;

    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 25
    sget v0, Lh/f;->action_bar:I

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    instance-of v1, v0, Landroidx/appcompat/widget/d0;

    .line 33
    if-eqz v1, :cond_25

    .line 35
    check-cast v0, Landroidx/appcompat/widget/d0;

    .line 37
    goto :goto_2f

    .line 38
    :cond_25
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 40
    if-eqz v1, :cond_32

    .line 42
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 44
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/d0;

    .line 47
    move-result-object v0

    .line 48
    :goto_2f
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 50
    goto :goto_4d

    .line 51
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 53
    const-string v2, "Can\'t make a decor toolbar out of "

    .line 55
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v1

    .line 78
    :cond_4d
    :goto_4d
    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    invoke-static {p1, p0}, Lm0/r0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;

    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p1}, Lm0/r0;->c()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Lm0/r0;->e()I

    .line 17
    move-result v2

    .line 18
    invoke-virtual {p1}, Lm0/r0;->d()I

    .line 21
    move-result v3

    .line 22
    invoke-virtual {p1}, Lm0/r0;->b()I

    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(Landroid/widget/FrameLayout;Landroid/graphics/Rect;Z)Z

    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/Rect;

    .line 38
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 40
    invoke-static {p0, p1, v1}, Lm0/g0$i;->b(Landroid/view/View;Lm0/r0;Landroid/graphics/Rect;)Lm0/r0;

    .line 43
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/Rect;

    .line 45
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 47
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 49
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 51
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 53
    iget-object v5, p1, Lm0/r0;->a:Lm0/r0$k;

    .line 55
    invoke-virtual {v5, v2, v3, v4, v1}, Lm0/r0$k;->l(IIII)Lm0/r0;

    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Lm0/r0;

    .line 61
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lm0/r0;

    .line 63
    invoke-virtual {v2, v1}, Lm0/r0;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v1

    .line 67
    const/4 v2, 0x1

    .line 68
    if-nez v1, :cond_4a

    .line 70
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Lm0/r0;

    .line 72
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Lm0/r0;

    .line 74
    move v0, v2

    .line 75
    :cond_4a
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    .line 77
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_5c

    .line 85
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    .line 87
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/Rect;

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move v2, v0

    .line 94
    :goto_5d
    if-eqz v2, :cond_62

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 99
    :cond_62
    iget-object p1, p1, Lm0/r0;->a:Lm0/r0$k;

    .line 101
    invoke-virtual {p1}, Lm0/r0$k;->a()Lm0/r0;

    .line 104
    move-result-object p1

    .line 105
    iget-object p1, p1, Lm0/r0;->a:Lm0/r0$k;

    .line 107
    invoke-virtual {p1}, Lm0/r0$k;->c()Lm0/r0;

    .line 110
    move-result-object p1

    .line 111
    iget-object p1, p1, Lm0/r0;->a:Lm0/r0$k;

    .line 113
    invoke-virtual {p1}, Lm0/r0$k;->b()Lm0/r0;

    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lm0/r0;->h()Landroid/view/WindowInsets;

    .line 120
    move-result-object p1

    .line 121
    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Landroid/content/Context;)V

    .line 11
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {p0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 16
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 7
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    move-result p3

    .line 13
    const/4 p4, 0x0

    .line 14
    :goto_d
    if-ge p4, p1, :cond_37

    .line 16
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object p5

    .line 20
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x8

    .line 26
    if-eq v0, v1, :cond_34

    .line 28
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    .line 34
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    move-result v1

    .line 38
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    move-result v2

    .line 42
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 44
    add-int/2addr v3, p2

    .line 45
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 47
    add-int/2addr v0, p3

    .line 48
    add-int/2addr v1, v3

    .line 49
    add-int/2addr v2, v0

    .line 50
    invoke-virtual {p5, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 53
    :cond_34
    add-int/lit8 p4, p4, 0x1

    .line 55
    goto :goto_d

    .line 56
    :cond_37
    return-void
.end method

.method public final onMeasure(II)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move v2, p1

    .line 10
    move v4, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    .line 22
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    move-result v1

    .line 28
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 30
    add-int/2addr v1, v2

    .line 31
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 33
    add-int/2addr v1, v2

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v1

    .line 39
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    move-result v3

    .line 45
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 47
    add-int/2addr v3, v4

    .line 48
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 50
    add-int/2addr v3, v0

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 54
    move-result v0

    .line 55
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    .line 60
    move-result v3

    .line 61
    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 64
    move-result v3

    .line 65
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 67
    invoke-static {p0}, Lm0/g0$d;->g(Landroid/view/View;)I

    .line 70
    move-result v4

    .line 71
    and-int/lit16 v4, v4, 0x100

    .line 73
    const/4 v5, 0x1

    .line 74
    if-eqz v4, :cond_4d

    .line 76
    move v4, v5

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v4, v2

    .line 79
    :goto_4e
    if-eqz v4, :cond_62

    .line 81
    iget v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:I

    .line 83
    iget-boolean v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Z

    .line 85
    if-eqz v7, :cond_74

    .line 87
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 89
    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    .line 92
    move-result-object v7

    .line 93
    if-eqz v7, :cond_74

    .line 95
    iget v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a:I

    .line 97
    add-int/2addr v6, v7

    .line 98
    goto :goto_74

    .line 99
    :cond_62
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 101
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 104
    move-result v6

    .line 105
    const/16 v7, 0x8

    .line 107
    if-eq v6, v7, :cond_73

    .line 109
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 111
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 114
    move-result v6

    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move v6, v2

    .line 117
    :cond_74
    :goto_74
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    .line 119
    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 124
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Lm0/r0;

    .line 126
    iput-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Lm0/r0;

    .line 128
    iget-boolean v8, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    .line 130
    if-nez v8, :cond_9a

    .line 132
    if-nez v4, :cond_9a

    .line 134
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    .line 136
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 138
    add-int/2addr v8, v6

    .line 139
    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 141
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 143
    add-int/2addr v8, v2

    .line 144
    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 146
    iget-object v4, v7, Lm0/r0;->a:Lm0/r0$k;

    .line 148
    invoke-virtual {v4, v2, v6, v2, v2}, Lm0/r0$k;->l(IIII)Lm0/r0;

    .line 151
    move-result-object v2

    .line 152
    iput-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Lm0/r0;

    .line 154
    goto :goto_dc

    .line 155
    :cond_9a
    invoke-virtual {v7}, Lm0/r0;->c()I

    .line 158
    move-result v4

    .line 159
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Lm0/r0;

    .line 161
    invoke-virtual {v7}, Lm0/r0;->e()I

    .line 164
    move-result v7

    .line 165
    add-int/2addr v7, v6

    .line 166
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Lm0/r0;

    .line 168
    invoke-virtual {v6}, Lm0/r0;->d()I

    .line 171
    move-result v6

    .line 172
    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Lm0/r0;

    .line 174
    invoke-virtual {v8}, Lm0/r0;->b()I

    .line 177
    move-result v8

    .line 178
    add-int/2addr v8, v2

    .line 179
    invoke-static {v4, v7, v6, v8}, Lf0/f;->a(IIII)Lf0/f;

    .line 182
    move-result-object v2

    .line 183
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Lm0/r0;

    .line 185
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 187
    const/16 v7, 0x1e

    .line 189
    if-lt v6, v7, :cond_c4

    .line 191
    new-instance v6, Lm0/r0$d;

    .line 193
    invoke-direct {v6, v4}, Lm0/r0$d;-><init>(Lm0/r0;)V

    .line 196
    goto :goto_d3

    .line 197
    :cond_c4
    const/16 v7, 0x1d

    .line 199
    if-lt v6, v7, :cond_ce

    .line 201
    new-instance v6, Lm0/r0$c;

    .line 203
    invoke-direct {v6, v4}, Lm0/r0$c;-><init>(Lm0/r0;)V

    .line 206
    goto :goto_d3

    .line 207
    :cond_ce
    new-instance v6, Lm0/r0$b;

    .line 209
    invoke-direct {v6, v4}, Lm0/r0$b;-><init>(Lm0/r0;)V

    .line 212
    :goto_d3
    invoke-virtual {v6, v2}, Lm0/r0$e;->d(Lf0/f;)V

    .line 215
    invoke-virtual {v6}, Lm0/r0$e;->b()Lm0/r0;

    .line 218
    move-result-object v2

    .line 219
    iput-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Lm0/r0;

    .line 221
    :goto_dc
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 223
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    .line 225
    invoke-static {v2, v4, v5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(Landroid/widget/FrameLayout;Landroid/graphics/Rect;Z)Z

    .line 228
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Lm0/r0;

    .line 230
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Lm0/r0;

    .line 232
    invoke-virtual {v2, v4}, Lm0/r0;->equals(Ljava/lang/Object;)Z

    .line 235
    move-result v2

    .line 236
    if-nez v2, :cond_f6

    .line 238
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:Lm0/r0;

    .line 240
    iput-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Lm0/r0;

    .line 242
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 244
    invoke-static {v4, v2}, Lm0/g0;->b(Landroid/view/View;Lm0/r0;)Lm0/r0;

    .line 247
    :cond_f6
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 249
    const/4 v8, 0x0

    .line 250
    const/4 v10, 0x0

    .line 251
    move-object v5, p0

    .line 252
    move v7, p1

    .line 253
    move v9, p2

    .line 254
    invoke-virtual/range {v5 .. v10}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 257
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 259
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 262
    move-result-object v2

    .line 263
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout$e;

    .line 265
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 267
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 270
    move-result v4

    .line 271
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 273
    add-int/2addr v4, v5

    .line 274
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 276
    add-int/2addr v4, v5

    .line 277
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 280
    move-result v1

    .line 281
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 283
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 286
    move-result v4

    .line 287
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 289
    add-int/2addr v4, v5

    .line 290
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 292
    add-int/2addr v4, v2

    .line 293
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 296
    move-result v0

    .line 297
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->c:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 299
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    .line 302
    move-result v2

    .line 303
    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 306
    move-result v2

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 310
    move-result v3

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 314
    move-result v4

    .line 315
    add-int/2addr v4, v3

    .line 316
    add-int/2addr v4, v1

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 320
    move-result v1

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 324
    move-result v3

    .line 325
    add-int/2addr v3, v1

    .line 326
    add-int/2addr v3, v0

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 330
    move-result v0

    .line 331
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 334
    move-result v0

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 338
    move-result v1

    .line 339
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 342
    move-result v1

    .line 343
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 346
    move-result p1

    .line 347
    shl-int/lit8 v1, v2, 0x10

    .line 349
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 352
    move-result p2

    .line 353
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 356
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .registers 14

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    .line 3
    const/4 p2, 0x0

    .line 4
    if-eqz p1, :cond_3e

    .line 6
    if-nez p4, :cond_8

    .line 8
    goto :goto_3e

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroid/widget/OverScroller;

    .line 11
    float-to-int v4, p3

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/high16 v7, -0x80000000

    .line 19
    const v8, 0x7fffffff

    .line 22
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 25
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroid/widget/OverScroller;

    .line 27
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalY()I

    .line 30
    move-result p1

    .line 31
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 33
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 36
    move-result p3

    .line 37
    const/4 p4, 0x1

    .line 38
    if-le p1, p3, :cond_28

    .line 40
    move p2, p4

    .line 41
    :cond_28
    if-eqz p2, :cond_33

    .line 43
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 46
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$c;

    .line 48
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$c;->run()V

    .line 51
    goto :goto_3b

    .line 52
    :cond_33
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 55
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    .line 57
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$b;->run()V

    .line 60
    :goto_3b
    iput-boolean p4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    .line 62
    return p4

    .line 63
    :cond_3e
    :goto_3e
    return p2
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5

    return-void
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 6

    .line 1
    if-nez p5, :cond_5

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 6
    :cond_5
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    .line 3
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:I

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7

    if-nez p6, :cond_5

    .line 2
    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_5
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 8

    .line 1
    invoke-virtual/range {p0 .. p6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Lm0/u;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p3, p2}, Lm0/u;->a(II)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:I

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    if-eqz p1, :cond_1f

    .line 7
    check-cast p1, Landroidx/appcompat/app/a0;

    .line 8
    iget-object p2, p1, Landroidx/appcompat/app/a0;->z:Lm/g;

    if-eqz p2, :cond_1f

    .line 9
    invoke-virtual {p2}, Lm/g;->a()V

    const/4 p2, 0x0

    .line 10
    iput-object p2, p1, Landroidx/appcompat/app/a0;->z:Lm/g;

    :cond_1f
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    if-nez p4, :cond_5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_5
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_10

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_10

    .line 3
    :cond_d
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    if-nez p4, :cond_a

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .registers 5

    .line 2
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Z

    if-nez p1, :cond_25

    .line 3
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:I

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const-wide/16 v1, 0x258

    if-gt p1, v0, :cond_1d

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/appcompat/widget/ActionBarOverlayLayout$b;

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    .line 6
    :cond_1d
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/appcompat/widget/ActionBarOverlayLayout$c;

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_25
    :goto_25
    return-void
.end method

.method public final onStopNestedScroll(Landroid/view/View;I)V
    .registers 3

    if-nez p2, :cond_5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final onWindowSystemUiVisibilityChanged(I)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 7
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:I

    .line 9
    xor-int/2addr v0, p1

    .line 10
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:I

    .line 12
    and-int/lit8 v1, p1, 0x4

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v1, :cond_13

    .line 18
    move v1, v3

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v2

    .line 21
    :goto_14
    and-int/lit16 p1, p1, 0x100

    .line 23
    if-eqz p1, :cond_1a

    .line 25
    move p1, v3

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move p1, v2

    .line 28
    :goto_1b
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    .line 30
    if-eqz v4, :cond_42

    .line 32
    xor-int/lit8 v5, p1, 0x1

    .line 34
    move-object v6, v4

    .line 35
    check-cast v6, Landroidx/appcompat/app/a0;

    .line 37
    iput-boolean v5, v6, Landroidx/appcompat/app/a0;->u:Z

    .line 39
    if-nez v1, :cond_37

    .line 41
    if-nez p1, :cond_2b

    .line 43
    goto :goto_37

    .line 44
    :cond_2b
    check-cast v4, Landroidx/appcompat/app/a0;

    .line 46
    iget-boolean p1, v4, Landroidx/appcompat/app/a0;->w:Z

    .line 48
    if-nez p1, :cond_42

    .line 50
    iput-boolean v3, v4, Landroidx/appcompat/app/a0;->w:Z

    .line 52
    invoke-virtual {v4, v3}, Landroidx/appcompat/app/a0;->updateVisibility(Z)V

    .line 55
    goto :goto_42

    .line 56
    :cond_37
    :goto_37
    check-cast v4, Landroidx/appcompat/app/a0;

    .line 58
    iget-boolean p1, v4, Landroidx/appcompat/app/a0;->w:Z

    .line 60
    if-eqz p1, :cond_42

    .line 62
    iput-boolean v2, v4, Landroidx/appcompat/app/a0;->w:Z

    .line 64
    invoke-virtual {v4, v3}, Landroidx/appcompat/app/a0;->updateVisibility(Z)V

    .line 67
    :cond_42
    :goto_42
    and-int/lit16 p1, v0, 0x100

    .line 69
    if-eqz p1, :cond_4f

    .line 71
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    .line 73
    if-eqz p1, :cond_4f

    .line 75
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 77
    invoke-static {p0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 80
    :cond_4f
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:I

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    .line 8
    if-eqz v0, :cond_d

    .line 10
    check-cast v0, Landroidx/appcompat/app/a0;

    .line 12
    iput p1, v0, Landroidx/appcompat/app/a0;->t:I

    .line 14
    :cond_d
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v0

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 21
    neg-int p1, p1

    .line 22
    int-to-float p1, p1

    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 26
    return-void
.end method

.method public setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1c

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroidx/appcompat/widget/ActionBarOverlayLayout$d;

    .line 11
    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b:I

    .line 13
    check-cast p1, Landroidx/appcompat/app/a0;

    .line 15
    iput v0, p1, Landroidx/appcompat/app/a0;->t:I

    .line 17
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:I

    .line 19
    if-eqz p1, :cond_1c

    .line 21
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 24
    sget-object p1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 26
    invoke-static {p0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 29
    :cond_1c
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i:Z

    .line 3
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    .line 3
    if-eq p1, v0, :cond_f

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    .line 7
    if-nez p1, :cond_f

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 16
    :cond_f
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->r(I)V

    .line 9
    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    .line 3
    if-eqz p1, :cond_14

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 15
    const/16 v0, 0x13

    .line 17
    if-ge p1, v0, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    :goto_15
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Z

    .line 24
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .registers 2

    return-void
.end method

.method public setUiOptions(I)V
    .registers 2

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 9
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/d0;

    .line 6
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
