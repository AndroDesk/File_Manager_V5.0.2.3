.class public Lcom/android/fileexplorer/view/ScrollControlViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "ScrollControlViewPager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollControlViewPager"


# instance fields
.field private isScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/ScrollControlViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollControlViewPager;->isScrollEnabled:Z

    return-void
.end method

.method private canScroll()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollControlViewPager;->isScrollEnabled:Z

    return v0
.end method


# virtual methods
.method public canScroll(Landroid/view/View;ZIII)Z
    .registers 6

    if-eq p1, p0, :cond_23

    const-string p2, "canScroll isScrollEnabled = "

    .line 1
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    iget-boolean p3, p0, Lcom/android/fileexplorer/view/ScrollControlViewPager;->isScrollEnabled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",v = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScrollControlViewPager"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollControlViewPager;->isScrollEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 4
    :cond_23
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollControlViewPager;->isScrollEnabled:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return v0

    .line 6
    :cond_5
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/ScrollControlViewPager;->isScrollEnabled:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return v0

    .line 6
    :cond_5
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public setScrollEnabled(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "setScrollEnabled isScrollEnabled = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ScrollControlViewPager"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/ScrollControlViewPager;->isScrollEnabled:Z

    .line 25
    return-void
.end method
