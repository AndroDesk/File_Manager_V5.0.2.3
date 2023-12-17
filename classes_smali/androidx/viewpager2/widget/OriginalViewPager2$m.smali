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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-direct {p0, p2}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->d:Z

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->e:I

    return-void
.end method


# virtual methods
.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2$f;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->l()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$e;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$e;->m(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    iput-boolean v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->d:Z

    iput-boolean v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->a:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->b:F

    goto :goto_5b

    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5b

    iput-boolean v1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->a:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->b:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->e:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4d

    const/high16 v5, 0x3f000000  # 0.5f

    mul-float/2addr v0, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4d

    iget-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->d:Z

    if-nez v0, :cond_4d

    iput-boolean v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    goto :goto_5b

    :cond_4d
    int-to-float v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_55

    iput-boolean v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->d:Z

    goto :goto_5b

    :cond_55
    iget-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->d:Z

    if-nez v0, :cond_5b

    iput-boolean v2, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    :cond_5b
    :goto_5b
    iget-boolean v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->c:Z

    if-nez v0, :cond_60

    return v1

    :cond_60
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6f

    move v1, v2

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

    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$m;->f:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
