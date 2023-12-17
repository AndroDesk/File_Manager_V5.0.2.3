.class public Lcom/google/android/material/internal/TextScale;
.super Lf1/n;
.source "TextScale.java"


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lf1/n;-><init>()V

    return-void
.end method

.method private captureValues(Lf1/t;)V
    .registers 4

    iget-object v0, p1, Lf1/t;->b:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "android:textscale:scale"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method


# virtual methods
.method public captureEndValues(Lf1/t;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Lf1/t;)V

    return-void
.end method

.method public captureStartValues(Lf1/t;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextScale;->captureValues(Lf1/t;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 8

    const/4 p1, 0x0

    if-eqz p2, :cond_58

    if-eqz p3, :cond_58

    iget-object v0, p2, Lf1/t;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_58

    iget-object v0, p3, Lf1/t;->b:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_12

    goto :goto_58

    :cond_12
    check-cast v0, Landroid/widget/TextView;

    iget-object p2, p2, Lf1/t;->a:Ljava/util/HashMap;

    iget-object p3, p3, Lf1/t;->a:Ljava/util/HashMap;

    const-string v1, "android:textscale:scale"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_2d

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_2e

    :cond_2d
    move p2, v3

    :goto_2e
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_3e
    cmpl-float p3, p2, v3

    if-nez p3, :cond_43

    return-object p1

    :cond_43
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 p3, 0x0

    aput p2, p1, p3

    const/4 p2, 0x1

    aput v3, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/material/internal/TextScale$1;

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/internal/TextScale$1;-><init>(Lcom/google/android/material/internal/TextScale;Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_58
    :goto_58
    return-object p1
.end method
