.class abstract Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;
.super Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private overlayTop:I

.field public final tempRect1:Landroid/graphics/Rect;

.field public final tempRect2:Landroid/graphics/Rect;

.field private verticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return-void
.end method

.method private static resolveGravity(I)I
    .registers 1

    if-nez p0, :cond_5

    const p0, 0x800033

    :cond_5
    return p0
.end method


# virtual methods
.method public abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public final getOverlapPixelsForOffset(Landroid/view/View;)I
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    goto :goto_13

    .line 7
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 13
    int-to-float v2, v0

    .line 14
    mul-float/2addr p1, v2

    .line 15
    float-to-int p1, p1

    .line 16
    invoke-static {p1, v1, v0}, La/b;->q(III)I

    .line 19
    move-result v1

    .line 20
    :goto_13
    return v1
.end method

.method public getOverlapRatioForOffset(Landroid/view/View;)F
    .registers 2

    const/high16 p1, 0x3f800000  # 1.0f

    return p1
.end method

.method public final getOverlayTop()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 3
    return v0
.end method

.method public getScrollRange(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final getVerticalLayoutGap()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 3
    return v0
.end method

.method public layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .registers 12

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_96

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 17
    iget-object v5, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 22
    move-result v2

    .line 23
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 29
    move-result v3

    .line 30
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 32
    add-int/2addr v3, v4

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 36
    move-result v4

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 40
    move-result v6

    .line 41
    sub-int/2addr v4, v6

    .line 42
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 44
    sub-int/2addr v4, v6

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v6

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 52
    move-result v7

    .line 53
    add-int/2addr v7, v6

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 57
    move-result v6

    .line 58
    sub-int/2addr v7, v6

    .line 59
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 61
    sub-int/2addr v7, v6

    .line 62
    invoke-virtual {v5, v2, v3, v4, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Lm0/r0;

    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_66

    .line 71
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 73
    invoke-static {p1}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_66

    .line 79
    invoke-static {p2}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_66

    .line 85
    iget p1, v5, Landroid/graphics/Rect;->left:I

    .line 87
    invoke-virtual {v2}, Lm0/r0;->c()I

    .line 90
    move-result v3

    .line 91
    add-int/2addr v3, p1

    .line 92
    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 94
    iget p1, v5, Landroid/graphics/Rect;->right:I

    .line 96
    invoke-virtual {v2}, Lm0/r0;->d()I

    .line 99
    move-result v2

    .line 100
    sub-int/2addr p1, v2

    .line 101
    iput p1, v5, Landroid/graphics/Rect;->right:I

    .line 103
    :cond_66
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 105
    iget v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->c:I

    .line 107
    invoke-static {v1}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->resolveGravity(I)I

    .line 110
    move-result v2

    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 114
    move-result v3

    .line 115
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 118
    move-result v4

    .line 119
    move-object v6, p1

    .line 120
    move v7, p3

    .line 121
    invoke-static/range {v2 .. v7}, Lm0/g;->b(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    .line 127
    move-result p3

    .line 128
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 130
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 132
    sub-int/2addr v2, p3

    .line 133
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 135
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 137
    sub-int/2addr v4, p3

    .line 138
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 141
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 146
    move-result p2

    .line 147
    sub-int/2addr p1, p2

    .line 148
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 150
    goto :goto_9c

    .line 151
    :cond_96
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/aosp/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 154
    const/4 p1, 0x0

    .line 155
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 157
    :goto_9c
    return-void
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 14

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_c

    .line 10
    const/4 v2, -0x2

    .line 11
    if-ne v0, v2, :cond_65

    .line 13
    :cond_c
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_65

    .line 23
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 26
    move-result p5

    .line 27
    if-lez p5, :cond_36

    .line 29
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 31
    invoke-static {v2}, Lm0/g0$d;->b(Landroid/view/View;)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3a

    .line 37
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Lm0/r0;

    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_3a

    .line 43
    invoke-virtual {v3}, Lm0/r0;->e()I

    .line 46
    move-result v4

    .line 47
    invoke-virtual {v3}, Lm0/r0;->b()I

    .line 50
    move-result v3

    .line 51
    add-int/2addr v3, v4

    .line 52
    add-int/2addr v3, p5

    .line 53
    move p5, v3

    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 58
    move-result p5

    .line 59
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    .line 62
    move-result v3

    .line 63
    add-int/2addr p5, v3

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 67
    move-result v2

    .line 68
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->shouldHeaderOverlapScrollingChild()Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4f

    .line 74
    neg-int v2, v2

    .line 75
    int-to-float v2, v2

    .line 76
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    sub-int/2addr p5, v2

    .line 81
    :goto_50
    if-ne v0, v1, :cond_55

    .line 83
    const/high16 v0, 0x40000000  # 2.0f

    .line 85
    goto :goto_57

    .line 86
    :cond_55
    const/high16 v0, -0x80000000

    .line 88
    :goto_57
    invoke-static {p5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 91
    move-result v5

    .line 92
    move-object v1, p1

    .line 93
    move-object v2, p2

    .line 94
    move v3, p3

    .line 95
    move v4, p4

    .line 96
    move v6, p6

    .line 97
    invoke-virtual/range {v1 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 100
    const/4 p1, 0x1

    .line 101
    return p1

    .line 102
    :cond_65
    const/4 p1, 0x0

    .line 103
    return p1
.end method

.method public final setOverlayTop(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 3
    return-void
.end method

.method public shouldHeaderOverlapScrollingChild()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
