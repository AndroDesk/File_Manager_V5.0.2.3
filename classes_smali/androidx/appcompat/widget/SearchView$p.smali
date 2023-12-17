.class public final Landroidx/appcompat/widget/SearchView$p;
.super Landroid/view/TouchDelegate;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public final e:I

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 15
    move-result v0

    .line 16
    iput v0, p0, Landroidx/appcompat/widget/SearchView$p;->e:I

    .line 18
    new-instance v1, Landroid/graphics/Rect;

    .line 20
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iput-object v1, p0, Landroidx/appcompat/widget/SearchView$p;->b:Landroid/graphics/Rect;

    .line 25
    new-instance v2, Landroid/graphics/Rect;

    .line 27
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 30
    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$p;->d:Landroid/graphics/Rect;

    .line 32
    new-instance v3, Landroid/graphics/Rect;

    .line 34
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 37
    iput-object v3, p0, Landroidx/appcompat/widget/SearchView$p;->c:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 42
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 45
    neg-int p1, v0

    .line 46
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 49
    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 52
    iput-object p3, p0, Landroidx/appcompat/widget/SearchView$p;->a:Landroid/view/View;

    .line 54
    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v2, :cond_33

    .line 20
    if-eq v2, v4, :cond_20

    .line 22
    if-eq v2, v3, :cond_20

    .line 24
    const/4 v6, 0x3

    .line 25
    if-eq v2, v6, :cond_1b

    .line 27
    goto :goto_3f

    .line 28
    :cond_1b
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView$p;->f:Z

    .line 30
    iput-boolean v5, p0, Landroidx/appcompat/widget/SearchView$p;->f:Z

    .line 32
    goto :goto_2f

    .line 33
    :cond_20
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView$p;->f:Z

    .line 35
    if-eqz v2, :cond_2f

    .line 37
    iget-object v6, p0, Landroidx/appcompat/widget/SearchView$p;->d:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_2f

    .line 45
    move v4, v2

    .line 46
    move v2, v5

    .line 47
    goto :goto_41

    .line 48
    :cond_2f
    :goto_2f
    move v7, v4

    .line 49
    move v4, v2

    .line 50
    move v2, v7

    .line 51
    goto :goto_41

    .line 52
    :cond_33
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$p;->b:Landroid/graphics/Rect;

    .line 54
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3f

    .line 60
    iput-boolean v4, p0, Landroidx/appcompat/widget/SearchView$p;->f:Z

    .line 62
    move v2, v4

    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    :goto_3f
    move v2, v4

    .line 65
    move v4, v5

    .line 66
    :goto_41
    if-eqz v4, :cond_74

    .line 68
    if-eqz v2, :cond_61

    .line 70
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$p;->c:Landroid/graphics/Rect;

    .line 72
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_61

    .line 78
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$p;->a:Landroid/view/View;

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 83
    move-result v0

    .line 84
    div-int/2addr v0, v3

    .line 85
    int-to-float v0, v0

    .line 86
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$p;->a:Landroid/view/View;

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 91
    move-result v1

    .line 92
    div-int/2addr v1, v3

    .line 93
    int-to-float v1, v1

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 97
    goto :goto_6e

    .line 98
    :cond_61
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$p;->c:Landroid/graphics/Rect;

    .line 100
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 102
    sub-int/2addr v0, v3

    .line 103
    int-to-float v0, v0

    .line 104
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 106
    sub-int/2addr v1, v2

    .line 107
    int-to-float v1, v1

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 111
    :goto_6e
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$p;->a:Landroid/view/View;

    .line 113
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 116
    move-result v5

    .line 117
    :cond_74
    return v5
.end method
