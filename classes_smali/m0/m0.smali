.class public final synthetic Lm0/m0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lm0/q0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/a0$c;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/m0;->a:Lm0/q0;

    iput-object p2, p0, Lm0/m0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lm0/m0;->a:Lm0/q0;

    .line 3
    check-cast p1, Landroidx/appcompat/app/a0$c;

    .line 5
    iget-object p1, p1, Landroidx/appcompat/app/a0$c;->a:Landroidx/appcompat/app/a0;

    .line 7
    iget-object p1, p1, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/View;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 18
    return-void
.end method
