.class Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;
.super Ljava/lang/Object;
.source "PhoneActionMenuView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverflowMenuViewAnimator"
.end annotation


# instance fields
.field private mCollapseAnimator:Landroid/animation/AnimatorSet;

.field private mExpandAnimator:Landroid/animation/AnimatorSet;

.field private overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)V

    return-void
.end method

.method private setContentViewImportantForAccessibility(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_d

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 13
    goto :goto_17

    .line 14
    :cond_d
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 16
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentView()Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x4

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 24
    :goto_17
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_f

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 13
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 18
    if-eqz v0, :cond_1e

    .line 20
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1e

    .line 26
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 28
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 31
    :cond_1e
    return-void
.end method

.method public ensureAnimators(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 11

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 5
    if-nez v0, :cond_98

    .line 7
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 9
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 14
    const/4 v2, 0x2

    .line 15
    new-array v3, v2, [F

    .line 17
    fill-array-data v3, :array_9a

    .line 20
    const-string v4, "Value"

    .line 22
    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 25
    move-result-object v1

    .line 26
    new-array v3, v2, [Landroid/animation/Animator;

    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v1, v3, v5

    .line 31
    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    .line 38
    move-result-object v1

    .line 39
    const/4 v6, 0x1

    .line 40
    aput-object v1, v3, v6

    .line 42
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 45
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v1

    .line 51
    const/high16 v3, 0x10e0000

    .line 53
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 56
    move-result v1

    .line 57
    int-to-long v7, v1

    .line 58
    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 61
    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 63
    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 74
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 76
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 79
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 81
    new-array v7, v2, [F

    .line 83
    fill-array-data v7, :array_a2

    .line 86
    invoke-static {v1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 89
    move-result-object v1

    .line 90
    new-array v2, v2, [Landroid/animation/Animator;

    .line 92
    aput-object v1, v2, v5

    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    .line 102
    move-result-object p1

    .line 103
    aput-object p1, v2, v6

    .line 105
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 108
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 117
    move-result p1

    .line 118
    int-to-long v1, p1

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 122
    new-instance p1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    .line 124
    invoke-direct {p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 127
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 135
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_98

    .line 141
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 143
    const-wide/16 v0, 0x0

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 148
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 153
    :cond_98
    return-void

    .line 154
    nop

    .line 155
    :array_9a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    .line 163
    :array_a2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public hide(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 6
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 11
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 16
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 19
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 9
    if-eq p1, v0, :cond_35

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 13
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 19
    if-ne p1, v0, :cond_15

    .line 21
    goto :goto_35

    .line 22
    :cond_15
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 24
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 27
    move-result-object p1

    .line 28
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 30
    if-eq p1, v0, :cond_29

    .line 32
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 34
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 40
    if-ne p1, v0, :cond_3f

    .line 42
    :cond_29
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 44
    const/high16 v0, 0x3f800000  # 1.0f

    .line 46
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setValue(F)V

    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 53
    goto :goto_3f

    .line 54
    :cond_35
    :goto_35
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setValue(F)V

    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 64
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 69
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$100(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_52

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 11
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$100(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    cmpl-float p1, p1, v0

    .line 22
    if-nez p1, :cond_23

    .line 24
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 26
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 28
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$202(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 35
    goto :goto_52

    .line 36
    :cond_23
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 38
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$100(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 45
    move-result p1

    .line 46
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 51
    move-result v0

    .line 52
    int-to-float v0, v0

    .line 53
    cmpl-float p1, p1, v0

    .line 55
    if-nez p1, :cond_52

    .line 57
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 59
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 61
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$202(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 64
    const/4 p1, 0x1

    .line 65
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->setContentViewImportantForAccessibility(Z)V

    .line 68
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 70
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$400(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;

    .line 73
    move-result-object p1

    .line 74
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 76
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$300(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_52
    :goto_52
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 88
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 9
    if-ne p1, v0, :cond_14

    .line 11
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->this$0:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 13
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getPresenter()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 21
    :cond_14
    return-void
.end method

.method public reverse()V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_3d

    .line 7
    :try_start_6
    const-string v0, "android.animation.AnimatorSet"

    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "reverse"

    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v3, v2, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 24
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_24

    .line 30
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 32
    new-array v3, v2, [Ljava/lang/Object;

    .line 34
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_24
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 39
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_73

    .line 45
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 47
    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_34

    .line 52
    goto :goto_73

    .line 53
    :catch_34
    move-exception v0

    .line 54
    const-string v1, "PhoneActionMenuView"

    .line 56
    const-string v2, "reverse: "

    .line 58
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    goto :goto_73

    .line 62
    :cond_3d
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 65
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4c

    .line 71
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 73
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    .line 76
    move-result-object v0

    .line 77
    :cond_4c
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 79
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5a

    .line 85
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 87
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    .line 90
    move-result-object v0

    .line 91
    :cond_5a
    if-nez v0, :cond_5d

    .line 93
    return-void

    .line 94
    :cond_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object v0

    .line 98
    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_73

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroid/animation/Animator;

    .line 110
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 112
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 115
    goto :goto_61

    .line 116
    :cond_73
    :goto_73
    return-void
.end method

.method public show(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->ensureAnimators(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mCollapseAnimator:Landroid/animation/AnimatorSet;

    .line 6
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 11
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 14
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->mExpandAnimator:Landroid/animation/AnimatorSet;

    .line 16
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 19
    return-void
.end method
