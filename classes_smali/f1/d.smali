.class public final Lf1/d;
.super Lf1/d0;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/d$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lf1/d0;-><init>()V

    invoke-virtual {p0, p1}, Lf1/d0;->setMode(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .registers 6

    cmpl-float v0, p2, p3

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    sget-object v0, Lf1/w;->a:Lf1/b0;

    invoke-virtual {v0, p2, p1}, Lf1/y;->h0(FLandroid/view/View;)V

    sget-object p2, Lf1/w;->b:Lf1/w$a;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Lf1/d$a;

    invoke-direct {p3, p1}, Lf1/d$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Lf1/c;

    invoke-direct {p3, p1}, Lf1/c;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    return-object p2
.end method

.method public final captureStartValues(Lf1/t;)V
    .registers 4

    invoke-super {p0, p1}, Lf1/d0;->captureStartValues(Lf1/t;)V

    iget-object v0, p1, Lf1/t;->a:Ljava/util/HashMap;

    iget-object p1, p1, Lf1/t;->b:Landroid/view/View;

    sget-object v1, Lf1/w;->a:Lf1/b0;

    invoke-virtual {v1, p1}, Lf1/y;->g0(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:fade:transitionAlpha"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 6

    const/4 p1, 0x0

    if-eqz p3, :cond_14

    iget-object p3, p3, Lf1/t;->a:Ljava/util/HashMap;

    const-string p4, "android:fade:transitionAlpha"

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    goto :goto_15

    :cond_14
    move p3, p1

    :goto_15
    const/high16 p4, 0x3f800000  # 1.0f

    cmpl-float v0, p3, p4

    if-nez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move p1, p3

    :goto_1d
    invoke-virtual {p0, p2, p1, p4}, Lf1/d;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 5

    sget-object p1, Lf1/w;->a:Lf1/b0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_18

    iget-object p1, p3, Lf1/t;->a:Ljava/util/HashMap;

    const-string p3, "android:fade:transitionAlpha"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1a

    :cond_18
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_1a
    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lf1/d;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method
