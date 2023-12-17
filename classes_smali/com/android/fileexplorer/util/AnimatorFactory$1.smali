.class Lcom/android/fileexplorer/util/AnimatorFactory$1;
.super Ljava/lang/Object;
.source "AnimatorFactory.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/AnimatorFactory;->setViewPressAnimator(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 10
    invoke-static {p1}, Lcom/android/fileexplorer/util/AnimatorFactory;->animatePressScaleAndAlpha(Landroid/view/View;)Landroid/animation/Animator;

    .line 13
    goto :goto_21

    .line 14
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_1b

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 24
    move-result p2

    .line 25
    const/4 v0, 0x3

    .line 26
    if-ne p2, v0, :cond_21

    .line 28
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 31
    invoke-static {p1}, Lcom/android/fileexplorer/util/AnimatorFactory;->animatorNormalScaleAndAlpha(Landroid/view/View;)Landroid/animation/Animator;

    .line 34
    :cond_21
    :goto_21
    const/4 p1, 0x0

    .line 35
    return p1
.end method
