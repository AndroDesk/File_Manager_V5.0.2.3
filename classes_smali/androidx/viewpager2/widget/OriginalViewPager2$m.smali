.class public final Landroidx/viewpager2/widget/OriginalViewPager2$m;
.super Lmiuix/recyclerview/widget/RecyclerView;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public d:Z

.field public e:I

.field public final synthetic f:Landroidx/viewpager2/widget/OriginalViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->d:Z

    .line 12
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 19
    move-result p1

    .line 20
    iput p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->e:I

    .line 22
    return-void
.end method


# virtual methods
.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    iget-object v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2$f;

    .line 10
    if-eqz v0, :cond_14

    .line 12
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 14
    iget-object v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 16
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->l()Ljava/lang/CharSequence;

    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_14
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 6
    iget v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 11
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 13
    iget v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 18
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 20
    iget-object v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    .line 22
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->m(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 25
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_19

    .line 9
    iput-boolean v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->d:Z

    .line 11
    iput-boolean v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->a:F

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->b:F

    .line 25
    goto :goto_5b

    .line 26
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x2

    .line 31
    if-ne v0, v3, :cond_5b

    .line 33
    iput-boolean v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 38
    move-result v0

    .line 39
    iget v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->a:F

    .line 41
    sub-float/2addr v0, v3

    .line 42
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 49
    move-result v3

    .line 50
    iget v4, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->b:F

    .line 52
    sub-float/2addr v3, v4

    .line 53
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 56
    move-result v3

    .line 57
    iget v4, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->e:I

    .line 59
    int-to-float v5, v4

    .line 60
    cmpl-float v5, v0, v5

    .line 62
    if-lez v5, :cond_4d

    .line 64
    const/high16 v5, 0x3f000000  # 0.5f

    .line 66
    mul-float/2addr v0, v5

    .line 67
    cmpl-float v0, v0, v3

    .line 69
    if-lez v0, :cond_4d

    .line 71
    iget-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->d:Z

    .line 73
    if-nez v0, :cond_4d

    .line 75
    iput-boolean v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    .line 77
    goto :goto_5b

    .line 78
    :cond_4d
    int-to-float v0, v4

    .line 79
    cmpl-float v0, v3, v0

    .line 81
    if-lez v0, :cond_55

    .line 83
    iput-boolean v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->d:Z

    .line 85
    goto :goto_5b

    .line 86
    :cond_55
    iget-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->d:Z

    .line 88
    if-nez v0, :cond_5b

    .line 90
    iput-boolean v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    .line 92
    :cond_5b
    :goto_5b
    iget-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    .line 94
    if-nez v0, :cond_60

    .line 96
    return v1

    .line 97
    :cond_60
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 99
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_6f

    .line 105
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_6f

    .line 111
    move v1, v2

    .line 112
    :cond_6f
    return v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_10

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    return p1
.end method
