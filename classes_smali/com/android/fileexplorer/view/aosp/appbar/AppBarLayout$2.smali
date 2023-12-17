.class Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$2;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->startLiftOnScrollElevationOverlayAnimation(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

.field public final synthetic val$background:Lcom/google/android/material/shape/MaterialShapeDrawable;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$2;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$2;->val$background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$2;->val$background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 16
    return-void
.end method
