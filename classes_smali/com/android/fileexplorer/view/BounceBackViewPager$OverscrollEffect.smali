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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/BounceBackViewPager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/BounceBackViewPager;Lcom/android/fileexplorer/view/BounceBackViewPager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;-><init>(Lcom/android/fileexplorer/view/BounceBackViewPager;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->startAnimation(F)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->onRelease()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->isOverscrolling()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)F
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    return p0
.end method

.method private isOverscrolling()Z
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-static {v0}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$300(Lcom/android/fileexplorer/view/BounceBackViewPager;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    return v2

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Li1/a;

    move-result-object v0

    invoke-virtual {v0}, Li1/a;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-static {v3}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$300(Lcom/android/fileexplorer/view/BounceBackViewPager;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    move v0, v4

    :goto_28
    if-eqz v0, :cond_31

    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_31

    goto :goto_32

    :cond_31
    move v2, v4

    :goto_32
    return v2
.end method

.method private onRelease()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect$1;-><init>(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_1e

    :cond_1a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->startAnimation(F)V

    :goto_1e
    return-void
.end method

.method private startAnimation(F)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string v1, "pull"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-static {v1}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$200(Lcom/android/fileexplorer/view/BounceBackViewPager;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public setPull(F)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->mOverscroll:F

    iget-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->this$0:Lcom/android/fileexplorer/view/BounceBackViewPager;

    invoke-static {p1}, Lcom/android/fileexplorer/view/BounceBackViewPager;->access$000(Lcom/android/fileexplorer/view/BounceBackViewPager;)V

    return-void
.end method
