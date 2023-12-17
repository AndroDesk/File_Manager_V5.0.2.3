.class public abstract Landroidx/appcompat/widget/a;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/widget/a$a;

.field public final b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionMenuView;

.field public d:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public e:I

.field public f:Lm0/o0;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroidx/appcompat/widget/a$a;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/a$a;-><init>(Landroidx/appcompat/widget/a;)V

    iput-object p2, p0, Landroidx/appcompat/widget/a;->a:Landroidx/appcompat/widget/a$a;

    .line 4
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v0, Lh/a;->actionBarPopupTheme:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p3

    if-eqz p3, :cond_2a

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p3, :cond_2a

    .line 6
    new-instance p3, Landroid/view/ContextThemeWrapper;

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Landroidx/appcompat/widget/a;->b:Landroid/content/Context;

    goto :goto_2c

    .line 7
    :cond_2a
    iput-object p1, p0, Landroidx/appcompat/widget/a;->b:Landroid/content/Context;

    :goto_2c
    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/a;)V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/widget/a;I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    return-void
.end method

.method public static c(Landroid/view/View;II)I
    .registers 4

    .line 1
    const/high16 v0, -0x80000000

    .line 3
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->measure(II)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    move-result p0

    .line 14
    sub-int/2addr p1, p0

    .line 15
    const/4 p0, 0x0

    .line 16
    sub-int/2addr p1, p0

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static d(Landroid/view/View;IIIZ)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr p3, v1

    .line 10
    div-int/lit8 p3, p3, 0x2

    .line 12
    add-int/2addr p3, p2

    .line 13
    if-eqz p4, :cond_15

    .line 15
    sub-int p2, p1, v0

    .line 17
    add-int/2addr v1, p3

    .line 18
    invoke-virtual {p0, p2, p3, p1, v1}, Landroid/view/View;->layout(IIII)V

    .line 21
    goto :goto_1b

    .line 22
    :cond_15
    add-int p2, p1, v0

    .line 24
    add-int/2addr v1, p3

    .line 25
    invoke-virtual {p0, p1, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 28
    :goto_1b
    if-eqz p4, :cond_1e

    .line 30
    neg-int v0, v0

    .line 31
    :cond_1e
    return v0
.end method


# virtual methods
.method public final e(IJ)Lm0/o0;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->f:Lm0/o0;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lm0/o0;->b()V

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_2b

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_13

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 20
    :cond_13
    invoke-static {p0}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    .line 23
    move-result-object v0

    .line 24
    const/high16 v1, 0x3f800000  # 1.0f

    .line 26
    invoke-virtual {v0, v1}, Lm0/o0;->a(F)V

    .line 29
    invoke-virtual {v0, p2, p3}, Lm0/o0;->c(J)V

    .line 32
    iget-object p2, p0, Landroidx/appcompat/widget/a;->a:Landroidx/appcompat/widget/a$a;

    .line 34
    iget-object p3, p2, Landroidx/appcompat/widget/a$a;->c:Landroidx/appcompat/widget/a;

    .line 36
    iput-object v0, p3, Landroidx/appcompat/widget/a;->f:Lm0/o0;

    .line 38
    iput p1, p2, Landroidx/appcompat/widget/a$a;->b:I

    .line 40
    invoke-virtual {v0, p2}, Lm0/o0;->d(Lm0/p0;)V

    .line 43
    return-object v0

    .line 44
    :cond_2b
    invoke-static {p0}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lm0/o0;->a(F)V

    .line 51
    invoke-virtual {v1, p2, p3}, Lm0/o0;->c(J)V

    .line 54
    iget-object p2, p0, Landroidx/appcompat/widget/a;->a:Landroidx/appcompat/widget/a$a;

    .line 56
    iget-object p3, p2, Landroidx/appcompat/widget/a$a;->c:Landroidx/appcompat/widget/a;

    .line 58
    iput-object v1, p3, Landroidx/appcompat/widget/a;->f:Lm0/o0;

    .line 60
    iput p1, p2, Landroidx/appcompat/widget/a$a;->b:I

    .line 62
    invoke-virtual {v1, p2}, Lm0/o0;->d(Lm0/p0;)V

    .line 65
    return-object v1
.end method

.method public getAnimatedVisibility()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a;->f:Lm0/o0;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/a;->a:Landroidx/appcompat/widget/a$a;

    .line 7
    iget v0, v0, Landroidx/appcompat/widget/a$a;->b:I

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getContentHeight()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/a;->e:I

    .line 3
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lh/j;->ActionBar:[I

    .line 10
    sget v1, Lh/a;->actionBarStyle:I

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 17
    move-result-object p1

    .line 18
    sget v0, Lh/j;->ActionBar_height:I

    .line 20
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/a;->setContentHeight(I)V

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    iget-object p1, p0, Landroidx/appcompat/widget/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 32
    if-eqz p1, :cond_6a

    .line 34
    iget-object v0, p1, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 43
    move-result-object v0

    .line 44
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 46
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 48
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 50
    const/16 v3, 0x258

    .line 52
    if-gt v0, v3, :cond_5f

    .line 54
    if-gt v1, v3, :cond_5f

    .line 56
    const/16 v0, 0x2d0

    .line 58
    const/16 v3, 0x3c0

    .line 60
    if-le v1, v3, :cond_3f

    .line 62
    if-gt v2, v0, :cond_5f

    .line 64
    :cond_3f
    if-le v1, v0, :cond_44

    .line 66
    if-le v2, v3, :cond_44

    .line 68
    goto :goto_5f

    .line 69
    :cond_44
    const/16 v0, 0x1f4

    .line 71
    if-ge v1, v0, :cond_5d

    .line 73
    const/16 v0, 0x1e0

    .line 75
    const/16 v3, 0x280

    .line 77
    if-le v1, v3, :cond_50

    .line 79
    if-gt v2, v0, :cond_5d

    .line 81
    :cond_50
    if-le v1, v0, :cond_55

    .line 83
    if-le v2, v3, :cond_55

    .line 85
    goto :goto_5d

    .line 86
    :cond_55
    const/16 v0, 0x168

    .line 88
    if-lt v1, v0, :cond_5b

    .line 90
    const/4 v0, 0x3

    .line 91
    goto :goto_60

    .line 92
    :cond_5b
    const/4 v0, 0x2

    .line 93
    goto :goto_60

    .line 94
    :cond_5d
    :goto_5d
    const/4 v0, 0x4

    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    :goto_5f
    const/4 v0, 0x5

    .line 97
    :goto_60
    iput v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    .line 99
    iget-object p1, p1, Landroidx/appcompat/view/menu/b;->c:Landroidx/appcompat/view/menu/h;

    .line 101
    if-eqz p1, :cond_6a

    .line 103
    const/4 v0, 0x1

    .line 104
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    .line 107
    :cond_6a
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x9

    .line 8
    if-ne v0, v2, :cond_b

    .line 10
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->h:Z

    .line 12
    :cond_b
    iget-boolean v3, p0, Landroidx/appcompat/widget/a;->h:Z

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v3, :cond_1a

    .line 17
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p1

    .line 21
    if-ne v0, v2, :cond_1a

    .line 23
    if-nez p1, :cond_1a

    .line 25
    iput-boolean v4, p0, Landroidx/appcompat/widget/a;->h:Z

    .line 27
    :cond_1a
    const/16 p1, 0xa

    .line 29
    if-eq v0, p1, :cond_21

    .line 31
    const/4 p1, 0x3

    .line 32
    if-ne v0, p1, :cond_23

    .line 34
    :cond_21
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->h:Z

    .line 36
    :cond_23
    return v4
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_9

    .line 8
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->g:Z

    .line 10
    :cond_9
    iget-boolean v2, p0, Landroidx/appcompat/widget/a;->g:Z

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v2, :cond_18

    .line 15
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    move-result p1

    .line 19
    if-nez v0, :cond_18

    .line 21
    if-nez p1, :cond_18

    .line 23
    iput-boolean v3, p0, Landroidx/appcompat/widget/a;->g:Z

    .line 25
    :cond_18
    if-eq v0, v3, :cond_1d

    .line 27
    const/4 p1, 0x3

    .line 28
    if-ne v0, p1, :cond_1f

    .line 30
    :cond_1d
    iput-boolean v1, p0, Landroidx/appcompat/widget/a;->g:Z

    .line 32
    :cond_1f
    return v3
.end method

.method public setContentHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/a;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_10

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/a;->f:Lm0/o0;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0}, Lm0/o0;->b()V

    .line 14
    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_10
    return-void
.end method
