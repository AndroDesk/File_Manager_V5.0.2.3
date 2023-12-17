.class public Lcom/android/fileexplorer/view/viewlarge/HackyViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "HackyViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/HackyViewPager;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/viewlarge/HackyViewPager;->initialize()V

    return-void
.end method

.method private initialize()V
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/HackyViewPager$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/viewlarge/HackyViewPager$1;-><init>(Lcom/android/fileexplorer/view/viewlarge/HackyViewPager;)V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$k;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return p1

    .line 6
    :catch_5
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
