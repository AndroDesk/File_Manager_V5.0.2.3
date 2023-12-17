.class public Lcom/google/android/material/internal/TextScale;
.super Lf1/n;
.source "TextScale.java"


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf1/n;-><init>()V

    .line 4
    return-void
.end method

.method private captureValues(Lf1/t;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lf1/t;->b:Landroid/view/View;

    .line 3
    instance-of v1, v0, Landroid/widget/TextView;

    .line 5
    if-eqz v1, :cond_17

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 9
    iget-object p1, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "android:textscale:scale"

    .line 21
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_17
    return-void
.end method


# virtual methods
.method public captureEndValues(Lf1/t;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Lf1/t;)V

    .line 4
    return-void
.end method

.method public captureStartValues(Lf1/t;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Lf1/t;)V

    .line 4
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 8

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_58

    .line 4
    if-eqz p3, :cond_58

    .line 6
    iget-object v0, p2, Lf1/t;->b:Landroid/view/View;

    .line 8
    instance-of v0, v0, Landroid/widget/TextView;

    .line 10
    if-eqz v0, :cond_58

    .line 12
    iget-object v0, p3, Lf1/t;->b:Landroid/view/View;

    .line 14
    instance-of v1, v0, Landroid/widget/TextView;

    .line 16
    if-nez v1, :cond_12

    .line 18
    goto :goto_58

    .line 19
    :cond_12
    check-cast v0, Landroid/widget/TextView;

    .line 21
    iget-object p2, p2, Lf1/t;->a:Ljava/util/HashMap;

    .line 23
    iget-object p3, p3, Lf1/t;->a:Ljava/util/HashMap;

    .line 25
    const-string v1, "android:textscale:scale"

    .line 27
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    const/high16 v3, 0x3f800000  # 1.0f

    .line 33
    if-eqz v2, :cond_2d

    .line 35
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Ljava/lang/Float;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 44
    move-result p2

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move p2, v3

    .line 47
    :goto_2e
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_3e

    .line 53
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p3

    .line 57
    check-cast p3, Ljava/lang/Float;

    .line 59
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 62
    move-result v3

    .line 63
    :cond_3e
    cmpl-float p3, p2, v3

    .line 65
    if-nez p3, :cond_43

    .line 67
    return-object p1

    .line 68
    :cond_43
    const/4 p1, 0x2

    .line 69
    new-array p1, p1, [F

    .line 71
    const/4 p3, 0x0

    .line 72
    aput p2, p1, p3

    .line 74
    const/4 p2, 0x1

    .line 75
    aput v3, p1, p2

    .line 77
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 80
    move-result-object p1

    .line 81
    new-instance p2, Lcom/google/android/material/internal/TextScale$1;

    .line 83
    invoke-direct {p2, p0, v0}, Lcom/google/android/material/internal/TextScale$1;-><init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V

    .line 86
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    :cond_58
    :goto_58
    return-object p1
.end method
