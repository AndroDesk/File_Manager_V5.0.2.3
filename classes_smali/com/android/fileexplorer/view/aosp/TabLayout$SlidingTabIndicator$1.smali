.class Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

.field public final synthetic val$finalTargetLeft:I

.field public final synthetic val$finalTargetRight:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 7
    invoke-static {v0}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->access$1200(Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;)I

    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$1;->val$finalTargetLeft:I

    .line 13
    invoke-static {v1, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;

    .line 19
    invoke-static {v2}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->access$1300(Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;)I

    .line 22
    move-result v2

    .line 23
    iget v3, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator$1;->val$finalTargetRight:I

    .line 25
    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    .line 28
    move-result p1

    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/view/aosp/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    .line 32
    return-void
.end method
