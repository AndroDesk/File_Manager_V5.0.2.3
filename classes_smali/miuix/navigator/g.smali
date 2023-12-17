.class public final synthetic Lmiuix/navigator/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lmiuix/navigator/MiuixNavigationLayout;

.field public final synthetic b:Landroid/animation/ValueAnimator;

.field public final synthetic c:I

.field public final synthetic d:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/g;->a:Lmiuix/navigator/MiuixNavigationLayout;

    iput-object p2, p0, Lmiuix/navigator/g;->b:Landroid/animation/ValueAnimator;

    iput p3, p0, Lmiuix/navigator/g;->c:I

    iput-object p4, p0, Lmiuix/navigator/g;->d:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    iget-object v0, p0, Lmiuix/navigator/g;->a:Lmiuix/navigator/MiuixNavigationLayout;

    iget-object v1, p0, Lmiuix/navigator/g;->b:Landroid/animation/ValueAnimator;

    iget v2, p0, Lmiuix/navigator/g;->c:I

    iget-object v3, p0, Lmiuix/navigator/g;->d:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2, v3, p1}, Lmiuix/navigator/MiuixNavigationLayout;->d(Lmiuix/navigator/MiuixNavigationLayout;Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
