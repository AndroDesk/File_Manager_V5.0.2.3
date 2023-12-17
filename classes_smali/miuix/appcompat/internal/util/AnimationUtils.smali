.class public Lmiuix/appcompat/internal/util/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnimator(Landroidx/fragment/app/Fragment;I)Landroid/animation/Animator;
    .registers 5

    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_open_enter:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_b

    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    invoke-direct {p1, p0, v1, v1}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    return-object p1

    :cond_b
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_open_exit:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_16

    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    invoke-direct {p1, p0, v1, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    return-object p1

    :cond_16
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    if-ne p1, v0, :cond_20

    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    invoke-direct {p1, p0, v2, v1}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    return-object p1

    :cond_20
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_fragment_transition_activity_close_exit:I

    if-ne p1, v0, :cond_2a

    new-instance p1, Lmiuix/appcompat/internal/app/FragmentAnimator;

    invoke-direct {p1, p0, v2, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;-><init>(Landroidx/fragment/app/Fragment;ZZ)V

    return-object p1

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method
