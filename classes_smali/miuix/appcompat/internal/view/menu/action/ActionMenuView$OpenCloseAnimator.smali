.class Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCloseAnimator"
.end annotation


# instance fields
.field public mCloseAnimator:Landroid/animation/Animator;

.field public mCurrentAnimator:Landroid/animation/Animator;

.field public mIsOpen:Z

.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->initialize()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 6
    if-eqz v0, :cond_d

    .line 8
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 14
    :cond_d
    return-void
.end method

.method public close()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->cancel()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mIsOpen:Z

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    .line 9
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 12
    return-void
.end method

.method public initialize()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    .line 3
    if-nez v0, :cond_2e

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [F

    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    aput v2, v0, v1

    .line 18
    const-string v1, "TranslationY"

    .line 20
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    .line 26
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v1

    .line 32
    const/high16 v2, 0x10e0000

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 37
    move-result v1

    .line 38
    int-to-long v1, v1

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCloseAnimator:Landroid/animation/Animator;

    .line 44
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    :cond_2e
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 4
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mCurrentAnimator:Landroid/animation/Animator;

    .line 3
    return-void
.end method

.method public open()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->cancel()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->mIsOpen:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->setTranslationY(F)V

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 16
    return-void
.end method

.method public setTranslationY(F)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_15

    .line 10
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$OpenCloseAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_15
    return-void
.end method
