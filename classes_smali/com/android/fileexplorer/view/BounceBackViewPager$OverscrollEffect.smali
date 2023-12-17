.class Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;
.super Ljava/lang/Object;
.source "BounceBackViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/BounceBackViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverscrollEffect"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mOverscroll:F

.field public final synthetic this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/view/BounceBackViewPager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/BounceBackViewPager;Lcom/android/fileexplorer/view/BounceBackViewPager$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;-><init>(Lcom/android/fileexplorer/view/BounceBackViewPager;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->startAnimation(F)V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->onRelease()V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->isOverscrolling()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    .line 3
    return p0
.end method

.method private isOverscrolling()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$300(Lcom/android/fileexplorer/view/BounceBackViewPager;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_11

    .line 11
    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    .line 13
    cmpg-float v0, v0, v1

    .line 15
    if-gez v0, :cond_11

    .line 17
    return v2

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 20
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Li1/a;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Li1/a;->getCount()I

    .line 27
    move-result v0

    .line 28
    sub-int/2addr v0, v2

    .line 29
    iget-object v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 31
    invoke-static {v3}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$300(Lcom/android/fileexplorer/view/BounceBackViewPager;)I

    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-ne v0, v3, :cond_27

    .line 38
    move v0, v2

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v0, v4

    .line 41
    :goto_28
    if-eqz v0, :cond_31

    .line 43
    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    .line 45
    cmpl-float v0, v0, v1

    .line 47
    if-lez v0, :cond_31

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v2, v4

    .line 51
    :goto_32
    return v2
.end method

.method private onRelease()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1a

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    .line 13
    new-instance v1, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect$1;

    .line 15
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect$1;-><init>(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    .line 23
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->startAnimation(F)V

    .line 31
    :goto_1e
    return-void
.end method

.method private startAnimation(F)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    iget v1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    .line 6
    const/4 v2, 0x0

    .line 7
    aput v1, v0, v2

    .line 9
    const/4 v1, 0x1

    .line 10
    aput p1, v0, v1

    .line 12
    const-string v1, "pull"

    .line 14
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    .line 20
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 22
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 25
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 28
    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    .line 30
    sub-float/2addr p1, v0

    .line 31
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 39
    invoke-static {v1}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$200(Lcom/android/fileexplorer/view/BounceBackViewPager;)I

    .line 42
    move-result v1

    .line 43
    int-to-float v1, v1

    .line 44
    mul-float/2addr v1, p1

    .line 45
    float-to-long v1, v1

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    .line 51
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 54
    return-void
.end method


# virtual methods
.method public setPull(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$000(Lcom/android/fileexplorer/view/BounceBackViewPager;)V

    .line 8
    return-void
.end method
