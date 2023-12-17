.class public Lmiuix/appcompat/internal/util/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimator(Landroidx/fragment/app/Fragment;I)Landroid/animation/Animator;
    .registers 5

    .line 1
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_open_enter:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_b

    .line 6
    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    .line 8
    invoke-direct {p1, p0, v1, v1}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    .line 11
    return-object p1

    .line 12
    :cond_b
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_open_exit:I

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne p1, v0, :cond_16

    .line 17
    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    .line 19
    invoke-direct {p1, p0, v1, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    .line 22
    return-object p1

    .line 23
    :cond_16
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    .line 25
    if-ne p1, v0, :cond_20

    .line 27
    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    .line 29
    invoke-direct {p1, p0, v2, v1}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    .line 32
    return-object p1

    .line 33
    :cond_20
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_close_exit:I

    .line 35
    if-ne p1, v0, :cond_2a

    .line 37
    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    .line 39
    invoke-direct {p1, p0, v2, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    .line 42
    return-object p1

    .line 43
    :cond_2a
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method
