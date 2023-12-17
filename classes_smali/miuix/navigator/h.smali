.class public final synthetic Lmiuix/navigator/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lmiuix/navigator/MiuixNavigationLayout;

.field public final synthetic b:Landroid/animation/ValueAnimator;

.field public final synthetic c:I

.field public final synthetic d:Landroid/widget/FrameLayout;

.field public final synthetic e:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/h;->a:Lmiuix/navigator/MiuixNavigationLayout;

    iput-object p2, p0, Lmiuix/navigator/h;->b:Landroid/animation/ValueAnimator;

    iput p3, p0, Lmiuix/navigator/h;->c:I

    iput-object p4, p0, Lmiuix/navigator/h;->d:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lmiuix/navigator/h;->e:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object v0, p0, Lmiuix/navigator/h;->a:Lmiuix/navigator/MiuixNavigationLayout;

    iget-object v1, p0, Lmiuix/navigator/h;->b:Landroid/animation/ValueAnimator;

    iget v2, p0, Lmiuix/navigator/h;->c:I

    iget-object v3, p0, Lmiuix/navigator/h;->d:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmiuix/navigator/h;->e:Landroid/widget/FrameLayout$LayoutParams;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lmiuix/navigator/MiuixNavigationLayout;->f(Lmiuix/navigator/MiuixNavigationLayout;Landroid/animation/ValueAnimator;ILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method
