.class public Lcom/android/fileexplorer/util/AnimatorFactory;
.super Ljava/lang/Object;
.source "AnimatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;
    }
.end annotation


# static fields
.field public static final ANIMATE_DURATION:I = 0x1c2

.field public static final ANIMATE_DURATION_130:I = 0x82

.field public static final ANIMATE_DURATION_150:I = 0x96

.field public static final ANIMATE_DURATION_200:I = 0xc8

.field public static final ANIMATE_DURATION_250:I = 0xfa

.field public static final ANIMATE_DURATION_300:I = 0x12c

.field public static final ANIMATE_DURATION_350:I = 0x15e

.field public static final ANIMATE_DURATION_400:I = 0x190

.field public static final ANIMATE_DURATION_450:I = 0x1c2

.field public static final ANIMATE_DURATION_650:I = 0x28a

.field public static final AUTO_AUDIO_DISMISS_TIMER:I = 0x7d0

.field public static final AUTO_DISMISS_TIMER:I = 0x1f40

.field public static final QUICK_ANIMATE_DURATION:I = 0x96

.field public static final QUICK_ANIMATE_DURATION_100:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alpha(Landroid/view/View;IZ)Landroid/animation/Animator;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "alpha"

    .line 4
    if-eqz p2, :cond_f

    .line 6
    new-array p2, v0, [F

    .line 8
    fill-array-data p2, :array_28

    .line 11
    invoke-static {p0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 14
    move-result-object p0

    .line 15
    goto :goto_18

    .line 16
    :cond_f
    new-array p2, v0, [F

    .line 18
    fill-array-data p2, :array_30

    .line 21
    invoke-static {p0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 24
    move-result-object p0

    .line 25
    :goto_18
    int-to-long p1, p1

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 29
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 31
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 40
    return-object p0

    .line 41
    :array_28
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    .line 49
    :array_30
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public static alphaAndTranslationYInBottom(Landroid/view/View;I)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/util/AnimatorFactory;->getHeight(Landroid/view/View;)I

    .line 7
    move-result v2

    .line 8
    int-to-float v2, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    aput v2, v1, v3

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    aput v2, v1, v4

    .line 16
    const-string v2, "translationY"

    .line 18
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 21
    move-result-object v1

    .line 22
    new-array v2, v0, [F

    .line 24
    fill-array-data v2, :array_42

    .line 27
    const-string v5, "alpha"

    .line 29
    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    move-result-object v2

    .line 33
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 35
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 38
    new-array v0, v0, [Landroid/animation/Animator;

    .line 40
    aput-object v1, v0, v3

    .line 42
    aput-object v2, v0, v4

    .line 44
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 47
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 49
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 52
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    int-to-long v0, p1

    .line 56
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 59
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 62
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-object v5

    .line 66
    nop

    .line 67
    :array_42
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static alphaAndTranslationYInTop(Landroid/view/View;I)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/util/AnimatorFactory;->getHeight(Landroid/view/View;)I

    .line 7
    move-result v2

    .line 8
    neg-int v2, v2

    .line 9
    int-to-float v2, v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput v2, v1, v3

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    aput v2, v1, v4

    .line 17
    const-string v2, "translationY"

    .line 19
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 22
    move-result-object v1

    .line 23
    new-array v2, v0, [F

    .line 25
    fill-array-data v2, :array_42

    .line 28
    const-string v5, "alpha"

    .line 30
    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 33
    move-result-object v2

    .line 34
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 36
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 39
    new-array v0, v0, [Landroid/animation/Animator;

    .line 41
    aput-object v1, v0, v3

    .line 43
    aput-object v2, v0, v4

    .line 45
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 48
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 50
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 53
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    int-to-long v0, p1

    .line 57
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 60
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 63
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    return-object v5

    .line 67
    :array_42
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static alphaAndTranslationYOutBottom(Landroid/view/View;I)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    aput v2, v1, v3

    .line 8
    invoke-static {p0}, Lcom/android/fileexplorer/util/AnimatorFactory;->getHeight(Landroid/view/View;)I

    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    const/4 v4, 0x1

    .line 14
    aput v2, v1, v4

    .line 16
    const-string v2, "translationY"

    .line 18
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 21
    move-result-object v1

    .line 22
    new-array v2, v0, [F

    .line 24
    fill-array-data v2, :array_3e

    .line 27
    const-string v5, "alpha"

    .line 29
    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 32
    move-result-object p0

    .line 33
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 35
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 38
    new-array v0, v0, [Landroid/animation/Animator;

    .line 40
    aput-object v1, v0, v3

    .line 42
    aput-object p0, v0, v4

    .line 44
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 47
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 49
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 52
    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    int-to-long p0, p1

    .line 56
    invoke-virtual {v2, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 59
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 62
    return-object v2

    .line 63
    :array_3e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public static alphaAndTranslationYOutTop(Landroid/view/View;I)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    aput v2, v1, v3

    .line 8
    invoke-static {p0}, Lcom/android/fileexplorer/util/AnimatorFactory;->getHeight(Landroid/view/View;)I

    .line 11
    move-result v2

    .line 12
    neg-int v2, v2

    .line 13
    int-to-float v2, v2

    .line 14
    const/4 v4, 0x1

    .line 15
    aput v2, v1, v4

    .line 17
    const-string v2, "translationY"

    .line 19
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 22
    move-result-object v1

    .line 23
    new-array v2, v0, [F

    .line 25
    fill-array-data v2, :array_40

    .line 28
    const-string v5, "alpha"

    .line 30
    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 33
    move-result-object p0

    .line 34
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 36
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 39
    new-array v0, v0, [Landroid/animation/Animator;

    .line 41
    aput-object v1, v0, v3

    .line 43
    aput-object p0, v0, v4

    .line 45
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 48
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 50
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 53
    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    int-to-long p0, p1

    .line 57
    invoke-virtual {v2, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 60
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 63
    return-object v2

    .line 64
    nop

    .line 65
    :array_40
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public static animateAlphaIn(Landroid/view/View;I)Landroid/animation/Animator;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_20

    .line 7
    const-string v1, "alpha"

    .line 9
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 15
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    int-to-long v1, p1

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 25
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    return-object v0

    .line 33
    :array_20
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static animateAlphaInQuick(Landroid/view/View;)Landroid/animation/Animator;
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_22

    .line 7
    const-string v1, "alpha"

    .line 9
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 15
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    const-wide/16 v1, 0x96

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 26
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :array_22
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static animateInBottomView(Landroid/view/View;)Landroid/animation/Animator;
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/util/AnimatorFactory;->getHeight(Landroid/view/View;)I

    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aput v1, v0, v2

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    aput v3, v0, v1

    .line 16
    const-string v1, "translationY"

    .line 18
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 24
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 27
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    const-wide/16 v3, 0x1c2

    .line 32
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 35
    new-instance v1, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;

    .line 37
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;-><init>(Landroid/view/View;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 46
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-object v0
.end method

.method public static animateInBottomViewQuick(Landroid/view/View;)Landroid/animation/Animator;
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/util/AnimatorFactory;->getHeight(Landroid/view/View;)I

    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aput v1, v0, v2

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    aput v3, v0, v1

    .line 16
    const-string v1, "translationY"

    .line 18
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 24
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 27
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    const-wide/16 v3, 0x96

    .line 32
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 35
    new-instance v1, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;

    .line 37
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;-><init>(Landroid/view/View;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 46
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    return-object v0
.end method

.method public static animateInLeftView(Landroid/view/View;I)Landroid/animation/Animator;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/util/AnimatorFactory;->getWidth(Landroid/view/View;)I

    .line 7
    move-result v1

    .line 8
    neg-int v1, v1

    .line 9
    int-to-float v1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput v1, v0, v2

    .line 13
    int-to-float p1, p1

    .line 14
    const/4 v1, 0x1

    .line 15
    aput p1, v0, v1

    .line 17
    const-string p1, "translationX"

    .line 19
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 25
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 28
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    const-wide/16 v0, 0x1c2

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 36
    new-instance v0, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;

    .line 38
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;-><init>(Landroid/view/View;)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 47
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-object p1
.end method

.method public static animateInRightView(Landroid/view/View;)Landroid/animation/Animator;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 8
    invoke-static {p0}, Lcom/android/fileexplorer/util/AnimatorFactory;->getWidth(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    const-string v1, "translationX"

    .line 9
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x1c2

    .line 11
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 12
    new-instance v1, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-object v0
.end method

.method public static animateInRightView(Landroid/view/View;I)Landroid/animation/Animator;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/AnimatorFactory;->getWidth(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    neg-int p1, p1

    int-to-float p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const-string p1, "translationX"

    .line 2
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1c2

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    new-instance v0, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-object p1
.end method

.method public static animateInTopView(Landroid/view/View;)Landroid/animation/Animator;
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    invoke-static {p0}, Lcom/android/fileexplorer/util/AnimatorFactory;->getHeight(Landroid/view/View;)I

    .line 7
    move-result v1

    .line 8
    neg-int v1, v1

    .line 9
    int-to-float v1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput v1, v0, v2

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    aput v3, v0, v1

    .line 17
    const-string v1, "translationY"

    .line 19
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 25
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 28
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    const-wide/16 v3, 0x1c2

    .line 33
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 36
    new-instance v1, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;

    .line 38
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/AnimatorFactory$AnimatorInvalidateUpdateListener;-><init>(Landroid/view/View;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 47
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-object v0
.end method

.method public static animatePressScaleAndAlpha(Landroid/view/View;)Landroid/animation/Animator;
    .registers 7

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const/4 v0, 0x2

    .line 6
    new-array v1, v0, [F

    .line 8
    fill-array-data v1, :array_4a

    .line 11
    const-string v2, "scaleX"

    .line 13
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 16
    move-result-object v1

    .line 17
    new-array v2, v0, [F

    .line 19
    fill-array-data v2, :array_52

    .line 22
    const-string v3, "scaleY"

    .line 24
    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 27
    move-result-object v2

    .line 28
    new-array v3, v0, [F

    .line 30
    fill-array-data v3, :array_5a

    .line 33
    const-string v4, "alpha"

    .line 35
    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 38
    move-result-object p0

    .line 39
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 41
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 44
    const/4 v4, 0x3

    .line 45
    new-array v4, v4, [Landroid/animation/Animator;

    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v1, v4, v5

    .line 50
    const/4 v1, 0x1

    .line 51
    aput-object v2, v4, v1

    .line 53
    aput-object p0, v4, v0

    .line 55
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 58
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 60
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 63
    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    const-wide/16 v0, 0x96

    .line 68
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 71
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 74
    return-object v3

    .line 75
    :array_4a
    .array-data 4
        0x3f800000  # 1.0f
        0x3f59999a  # 0.85f
    .end array-data

    .line 83
    :array_52
    .array-data 4
        0x3f800000  # 1.0f
        0x3f59999a  # 0.85f
    .end array-data

    :array_5a
    .array-data 4
        0x3f800000  # 1.0f
        0x3f19999a  # 0.6f
    .end array-data
.end method

.method public static animateRotation(Landroid/view/View;IFF)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    const/4 v1, 0x0

    .line 5
    aput p2, v0, v1

    .line 7
    const/4 p2, 0x1

    .line 8
    aput p3, v0, p2

    .line 10
    const-string p2, "rotation"

    .line 12
    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 15
    move-result-object p2

    .line 16
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    .line 18
    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 21
    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    int-to-long v2, p1

    .line 25
    invoke-virtual {p2, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 34
    return-object p2
.end method

.method public static animateScale(Landroid/view/View;FI)Landroid/animation/Animator;
    .registers 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput v2, v1, v3

    .line 11
    const/4 v2, 0x1

    .line 12
    aput p1, v1, v2

    .line 14
    const-string v4, "scaleX"

    .line 16
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object v1

    .line 20
    new-array v4, v0, [F

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    .line 25
    move-result v5

    .line 26
    aput v5, v4, v3

    .line 28
    aput p1, v4, v2

    .line 30
    const-string p1, "scaleY"

    .line 32
    invoke-static {p0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 35
    move-result-object p1

    .line 36
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 38
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 41
    new-array v0, v0, [Landroid/animation/Animator;

    .line 43
    aput-object v1, v0, v3

    .line 45
    aput-object p1, v0, v2

    .line 47
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 50
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 52
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 55
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 58
    int-to-long p1, p2

    .line 59
    invoke-virtual {v4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 62
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 65
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-object v4
.end method

.method public static animateScaleAndAlphaIn(Landroid/view/View;FFI)Landroid/animation/Animator;
    .registers 10

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    const/4 v2, 0x0

    .line 5
    aput p1, v1, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    aput p2, v1, v3

    .line 10
    const-string v4, "scaleX"

    .line 12
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 15
    move-result-object v1

    .line 16
    new-array v4, v0, [F

    .line 18
    aput p1, v4, v2

    .line 20
    aput p2, v4, v3

    .line 22
    const-string p1, "scaleY"

    .line 24
    invoke-static {p0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 27
    move-result-object p1

    .line 28
    new-array p2, v0, [F

    .line 30
    fill-array-data p2, :array_4a

    .line 33
    const-string v4, "alpha"

    .line 35
    invoke-static {p0, v4, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 38
    move-result-object p2

    .line 39
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 41
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 44
    const/4 v5, 0x3

    .line 45
    new-array v5, v5, [Landroid/animation/Animator;

    .line 47
    aput-object v1, v5, v2

    .line 49
    aput-object p1, v5, v3

    .line 51
    aput-object p2, v5, v0

    .line 53
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 56
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 58
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 61
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    int-to-long p1, p3

    .line 65
    invoke-virtual {v4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 68
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 71
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-object v4

    .line 75
    :array_4a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static animateScaleFromTo(Landroid/view/View;FFI)Landroid/animation/Animator;
    .registers 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    const/4 v2, 0x0

    .line 5
    aput p1, v1, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    aput p2, v1, v3

    .line 10
    const-string v4, "scaleX"

    .line 12
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 15
    move-result-object v1

    .line 16
    new-array v4, v0, [F

    .line 18
    aput p1, v4, v2

    .line 20
    aput p2, v4, v3

    .line 22
    const-string p1, "scaleY"

    .line 24
    invoke-static {p0, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 30
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 33
    new-array v0, v0, [Landroid/animation/Animator;

    .line 35
    aput-object v1, v0, v2

    .line 37
    aput-object p1, v0, v3

    .line 39
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 42
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 44
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 47
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    int-to-long v0, p3

    .line 51
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 54
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 57
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-object p2
.end method

.method public static animateToCenterY(Landroid/view/View;)Landroid/animation/Animator;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [F

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    aput v4, v2, v3

    .line 22
    sub-int/2addr v0, v1

    .line 23
    int-to-float v0, v0

    .line 24
    const/high16 v1, 0x40000000  # 2.0f

    .line 26
    div-float/2addr v0, v1

    .line 27
    const/4 v1, 0x1

    .line 28
    aput v0, v2, v1

    .line 30
    const-string v0, "translationY"

    .line 32
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 38
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 41
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    const-wide/16 v0, 0x1c2

    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 49
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 52
    return-object p0
.end method

.method public static animateToOrigin(Landroid/view/View;)Landroid/animation/Animator;
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput v1, v0, v2

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput v2, v0, v1

    .line 15
    const-string v1, "translationY"

    .line 17
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 20
    move-result-object p0

    .line 21
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 23
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 26
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 29
    const-wide/16 v0, 0x1c2

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 34
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 37
    return-object p0
.end method

.method public static animatorInAlphaAndTranslationXLeft(Landroid/view/View;II)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    neg-int p2, p2

    .line 5
    int-to-float p2, p2

    .line 6
    const/4 v2, 0x0

    .line 7
    aput p2, v1, v2

    .line 9
    const/4 p2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    aput p2, v1, v3

    .line 13
    const-string p2, "translationX"

    .line 15
    invoke-static {p0, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 18
    move-result-object p2

    .line 19
    new-array v1, v0, [F

    .line 21
    fill-array-data v1, :array_3e

    .line 24
    const-string v4, "alpha"

    .line 26
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 29
    move-result-object v1

    .line 30
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 32
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 35
    new-array v0, v0, [Landroid/animation/Animator;

    .line 37
    aput-object p2, v0, v2

    .line 39
    aput-object v1, v0, v3

    .line 41
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 44
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 46
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 49
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    int-to-long p1, p1

    .line 53
    invoke-virtual {v4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 56
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 59
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    return-object v4

    .line 63
    :array_3e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static animatorInAlphaAndTranslationXLeftAtVisiable(Landroid/view/View;II)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    neg-int p2, p2

    .line 5
    int-to-float p2, p2

    .line 6
    const/4 v2, 0x0

    .line 7
    aput p2, v1, v2

    .line 9
    const/4 p2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    aput p2, v1, v3

    .line 13
    const-string p2, "translationX"

    .line 15
    invoke-static {p0, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 18
    move-result-object p2

    .line 19
    new-array v1, v0, [F

    .line 21
    fill-array-data v1, :array_3c

    .line 24
    const-string v4, "alpha"

    .line 26
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 29
    move-result-object p0

    .line 30
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 32
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 35
    new-array v0, v0, [Landroid/animation/Animator;

    .line 37
    aput-object p2, v0, v2

    .line 39
    aput-object p0, v0, v3

    .line 41
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 44
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 46
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 49
    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    int-to-long p0, p1

    .line 53
    invoke-virtual {v1, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 56
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 59
    return-object v1

    .line 60
    nop

    .line 61
    :array_3c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static animatorInAlphaAndTranslationXRight(Landroid/view/View;II)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 4
    int-to-float p2, p2

    .line 5
    const/4 v2, 0x0

    .line 6
    aput p2, v1, v2

    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    aput p2, v1, v3

    .line 12
    const-string p2, "translationX"

    .line 14
    invoke-static {p0, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 17
    move-result-object p2

    .line 18
    new-array v1, v0, [F

    .line 20
    fill-array-data v1, :array_3e

    .line 23
    const-string v4, "alpha"

    .line 25
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 28
    move-result-object v1

    .line 29
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 31
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 34
    new-array v0, v0, [Landroid/animation/Animator;

    .line 36
    aput-object p2, v0, v2

    .line 38
    aput-object v1, v0, v3

    .line 40
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 43
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 45
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 48
    invoke-virtual {v4, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    int-to-long p1, p1

    .line 52
    invoke-virtual {v4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 55
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 58
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-object v4

    .line 62
    nop

    .line 63
    :array_3e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static animatorInTranslationXLeft(Landroid/view/View;II)Landroid/animation/Animator;
    .registers 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    neg-int p2, p2

    .line 5
    int-to-float p2, p2

    .line 6
    const/4 v1, 0x0

    .line 7
    aput p2, v0, v1

    .line 9
    const/4 p2, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput v2, v0, p2

    .line 13
    const-string p2, "translationX"

    .line 15
    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 18
    move-result-object p2

    .line 19
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 21
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 24
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    int-to-long v2, p1

    .line 28
    invoke-virtual {p2, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 31
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 34
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    return-object p2
.end method

.method public static animatorNormalScaleAndAlpha(Landroid/view/View;)Landroid/animation/Animator;
    .registers 7

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const/4 v0, 0x2

    .line 6
    new-array v1, v0, [F

    .line 8
    fill-array-data v1, :array_4a

    .line 11
    const-string v2, "scaleX"

    .line 13
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 16
    move-result-object v1

    .line 17
    new-array v2, v0, [F

    .line 19
    fill-array-data v2, :array_52

    .line 22
    const-string v3, "scaleY"

    .line 24
    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 27
    move-result-object v2

    .line 28
    new-array v3, v0, [F

    .line 30
    fill-array-data v3, :array_5a

    .line 33
    const-string v4, "alpha"

    .line 35
    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 38
    move-result-object p0

    .line 39
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 41
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 44
    const/4 v4, 0x3

    .line 45
    new-array v4, v4, [Landroid/animation/Animator;

    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v1, v4, v5

    .line 50
    const/4 v1, 0x1

    .line 51
    aput-object v2, v4, v1

    .line 53
    aput-object p0, v4, v0

    .line 55
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 58
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 60
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 63
    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    const-wide/16 v0, 0x64

    .line 68
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 71
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 74
    return-object v3

    .line 75
    :array_4a
    .array-data 4
        0x3f59999a  # 0.85f
        0x3f800000  # 1.0f
    .end array-data

    .line 83
    :array_52
    .array-data 4
        0x3f59999a  # 0.85f
        0x3f800000  # 1.0f
    .end array-data

    :array_5a
    .array-data 4
        0x3f19999a  # 0.6f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static getHeight(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_14

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    move-result-object p0

    .line 19
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 21
    :cond_14
    return v0
.end method

.method private static getWidth(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_14

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    move-result-object p0

    .line 19
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 21
    :cond_14
    return v0
.end method

.method public static miuiAnimateRotation(Landroid/view/View;IFF)Landroid/animation/Animator;
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, v0

    .line 4
    const/high16 v2, 0x43b40000  # 360.0f

    .line 6
    const/high16 v3, 0x42b40000  # 90.0f

    .line 8
    const/high16 v4, 0x43340000  # 180.0f

    .line 10
    const/high16 v5, 0x43870000  # 270.0f

    .line 12
    if-ltz v1, :cond_13

    .line 14
    cmpg-float v1, p2, v3

    .line 16
    if-gez v1, :cond_13

    .line 18
    move p2, v0

    .line 19
    goto :goto_30

    .line 20
    :cond_13
    cmpl-float v1, p2, v3

    .line 22
    if-ltz v1, :cond_1d

    .line 24
    cmpg-float v1, p2, v4

    .line 26
    if-gez v1, :cond_1d

    .line 28
    move p2, v3

    .line 29
    goto :goto_30

    .line 30
    :cond_1d
    cmpl-float v1, p2, v4

    .line 32
    if-ltz v1, :cond_27

    .line 34
    cmpg-float v1, p2, v5

    .line 36
    if-gez v1, :cond_27

    .line 38
    move p2, v4

    .line 39
    goto :goto_30

    .line 40
    :cond_27
    cmpl-float v1, p2, v5

    .line 42
    if-ltz v1, :cond_30

    .line 44
    cmpg-float v1, p2, v2

    .line 46
    if-gez v1, :cond_30

    .line 48
    move p2, v5

    .line 49
    :cond_30
    :goto_30
    cmpg-float v1, p2, v0

    .line 51
    const/high16 v6, -0x3c4c0000  # -360.0f

    .line 53
    const/high16 v7, -0x3c790000  # -270.0f

    .line 55
    const/high16 v8, -0x3d4c0000  # -90.0f

    .line 57
    const/high16 v9, -0x3ccc0000  # -180.0f

    .line 59
    if-gtz v1, :cond_42

    .line 61
    cmpl-float v1, p2, v8

    .line 63
    if-lez v1, :cond_42

    .line 65
    move p2, v0

    .line 66
    goto :goto_5f

    .line 67
    :cond_42
    cmpg-float v1, p2, v8

    .line 69
    if-gtz v1, :cond_4c

    .line 71
    cmpl-float v1, p2, v9

    .line 73
    if-lez v1, :cond_4c

    .line 75
    move p2, v8

    .line 76
    goto :goto_5f

    .line 77
    :cond_4c
    cmpg-float v1, p2, v9

    .line 79
    if-gtz v1, :cond_56

    .line 81
    cmpl-float v1, p2, v7

    .line 83
    if-lez v1, :cond_56

    .line 85
    move p2, v9

    .line 86
    goto :goto_5f

    .line 87
    :cond_56
    cmpg-float v1, p2, v5

    .line 89
    if-gtz v1, :cond_5f

    .line 91
    cmpl-float v1, p2, v6

    .line 93
    if-lez v1, :cond_5f

    .line 95
    move p2, v7

    .line 96
    :cond_5f
    :goto_5f
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 99
    move-result v1

    .line 100
    cmpl-float v1, v1, v2

    .line 102
    if-ltz v1, :cond_6b

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 107
    move p2, v0

    .line 108
    :cond_6b
    cmpl-float v1, p3, v0

    .line 110
    if-nez v1, :cond_7d

    .line 112
    cmpl-float p3, p2, v5

    .line 114
    if-nez p3, :cond_76

    .line 116
    :goto_73
    move v0, v2

    .line 117
    goto/16 :goto_d0

    .line 119
    :cond_76
    cmpl-float p3, p2, v7

    .line 121
    if-nez p3, :cond_d0

    .line 123
    :goto_7a
    move v0, v6

    .line 124
    goto/16 :goto_d0

    .line 126
    :cond_7d
    cmpl-float v1, p3, v3

    .line 128
    if-nez v1, :cond_92

    .line 130
    cmpl-float p3, p2, v9

    .line 132
    if-nez p3, :cond_87

    .line 134
    :goto_85
    move v0, v8

    .line 135
    goto :goto_d0

    .line 136
    :cond_87
    cmpl-float p3, p2, v4

    .line 138
    if-nez p3, :cond_8d

    .line 140
    :goto_8b
    move v0, v5

    .line 141
    goto :goto_d0

    .line 142
    :cond_8d
    cmpl-float p3, p2, v0

    .line 144
    if-nez p3, :cond_cf

    .line 146
    goto :goto_85

    .line 147
    :cond_92
    cmpl-float v1, p3, v4

    .line 149
    if-nez v1, :cond_ac

    .line 151
    cmpl-float p3, p2, v3

    .line 153
    if-nez p3, :cond_9c

    .line 155
    :goto_9a
    move v0, v4

    .line 156
    goto :goto_d0

    .line 157
    :cond_9c
    cmpl-float p3, p2, v8

    .line 159
    if-nez p3, :cond_a2

    .line 161
    :goto_a0
    move v0, v9

    .line 162
    goto :goto_d0

    .line 163
    :cond_a2
    cmpl-float p3, p2, v5

    .line 165
    if-nez p3, :cond_a7

    .line 167
    goto :goto_9a

    .line 168
    :cond_a7
    cmpl-float p3, p2, v7

    .line 170
    if-nez p3, :cond_cf

    .line 172
    goto :goto_a0

    .line 173
    :cond_ac
    cmpl-float v1, p3, v5

    .line 175
    if-nez v1, :cond_c1

    .line 177
    cmpl-float p3, p2, v9

    .line 179
    if-nez p3, :cond_b6

    .line 181
    move v0, v7

    .line 182
    goto :goto_d0

    .line 183
    :cond_b6
    cmpl-float p3, p2, v4

    .line 185
    if-nez p3, :cond_bb

    .line 187
    goto :goto_8b

    .line 188
    :cond_bb
    cmpl-float p3, p2, v0

    .line 190
    if-nez p3, :cond_cf

    .line 192
    move v0, v3

    .line 193
    goto :goto_d0

    .line 194
    :cond_c1
    cmpl-float p3, p3, v2

    .line 196
    if-nez p3, :cond_cf

    .line 198
    cmpl-float p3, p2, v7

    .line 200
    if-nez p3, :cond_ca

    .line 202
    goto :goto_7a

    .line 203
    :cond_ca
    cmpl-float p3, p2, v5

    .line 205
    if-nez p3, :cond_d0

    .line 207
    goto :goto_73

    .line 208
    :cond_cf
    move v0, p2

    .line 209
    :cond_d0
    :goto_d0
    const/4 p3, 0x2

    .line 210
    new-array p3, p3, [F

    .line 212
    const/4 v1, 0x0

    .line 213
    aput p2, p3, v1

    .line 215
    const/4 p2, 0x1

    .line 216
    aput v0, p3, p2

    .line 218
    const-string p2, "rotation"

    .line 220
    invoke-static {p0, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 223
    move-result-object p2

    .line 224
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    .line 226
    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 229
    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    int-to-long v2, p1

    .line 233
    invoke-virtual {p2, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 236
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 242
    return-object p2
.end method

.method public static setViewPressAnimator(Landroid/view/View;)V
    .registers 2

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Lcom/android/fileexplorer/util/AnimatorFactory$1;

    .line 6
    invoke-direct {v0}, Lcom/android/fileexplorer/util/AnimatorFactory$1;-><init>()V

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    return-void
.end method

.method public static translationY(Landroid/view/View;II)Landroid/animation/Animator;
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput v1, v0, v2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 14
    move-result v1

    .line 15
    int-to-float p2, p2

    .line 16
    add-float/2addr v1, p2

    .line 17
    const/4 p2, 0x1

    .line 18
    aput v1, v0, p2

    .line 20
    const-string p2, "translationY"

    .line 22
    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 25
    move-result-object p2

    .line 26
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 28
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 31
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    int-to-long v0, p1

    .line 35
    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 38
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 41
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    return-object p2
.end method
