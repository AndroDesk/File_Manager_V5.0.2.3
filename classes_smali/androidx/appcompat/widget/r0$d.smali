.class public final Landroidx/appcompat/widget/r0$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/appcompat/widget/r0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/r0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/r0$d;->b:Landroidx/appcompat/widget/r0;

    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/widget/r0$d;->a:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/r0$d;->a:Z

    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/r0$d;->a:Z

    .line 3
    if-eqz p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/r0$d;->b:Landroidx/appcompat/widget/r0;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/r0$d;->b:Landroidx/appcompat/widget/r0;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/r0$d;->b:Landroidx/appcompat/widget/r0;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/widget/r0$d;->a:Z

    .line 9
    return-void
.end method
