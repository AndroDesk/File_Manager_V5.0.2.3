.class public final Landroidx/fragment/app/b$b;
.super Landroidx/fragment/app/b$c;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Z

.field public d:Z

.field public e:Landroidx/fragment/app/m$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/b$c;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/b$b;->d:Z

    iput-boolean p3, p0, Landroidx/fragment/app/b$b;->c:Z

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Landroidx/fragment/app/m$a;
    .registers 11

    iget-boolean v0, p0, Landroidx/fragment/app/b$b;->d:Z

    if-eqz v0, :cond_7

    iget-object p1, p0, Landroidx/fragment/app/b$b;->e:Landroidx/fragment/app/m$a;

    return-object p1

    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_15

    move v0, v4

    goto :goto_16

    :cond_15
    move v0, v3

    :goto_16
    iget-boolean v2, p0, Landroidx/fragment/app/b$b;->c:Z

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v5

    if-eqz v2, :cond_2a

    if-eqz v0, :cond_25

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v2

    goto :goto_35

    :cond_25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v2

    goto :goto_35

    :cond_2a
    if-eqz v0, :cond_31

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v2

    goto :goto_35

    :cond_31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v2

    :goto_35
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    if-eqz v6, :cond_4a

    sget v8, Lw0/b;->visible_removing_fragment_view_tag:I

    invoke-virtual {v6, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4a

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4a
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_56

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v6

    if-eqz v6, :cond_56

    goto/16 :goto_108

    :cond_56
    invoke-virtual {v1, v5, v0, v2}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_63

    new-instance v7, Landroidx/fragment/app/m$a;

    invoke-direct {v7, v6}, Landroidx/fragment/app/m$a;-><init>(Landroid/view/animation/Animation;)V

    goto/16 :goto_108

    :cond_63
    invoke-virtual {v1, v5, v0, v2}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_70

    new-instance v7, Landroidx/fragment/app/m$a;

    invoke-direct {v7, v1}, Landroidx/fragment/app/m$a;-><init>(Landroid/animation/Animator;)V

    goto/16 :goto_108

    :cond_70
    if-nez v2, :cond_c6

    if-eqz v5, :cond_c6

    const/16 v1, 0x1001

    if-eq v5, v1, :cond_be

    const/16 v1, 0x2002

    if-eq v5, v1, :cond_b6

    const/16 v1, 0x2005

    if-eq v5, v1, :cond_a4

    const/16 v1, 0x1003

    if-eq v5, v1, :cond_9c

    const/16 v1, 0x1004

    if-eq v5, v1, :cond_8a

    const/4 v0, -0x1

    goto :goto_c5

    :cond_8a
    if-eqz v0, :cond_94

    const v0, 0x10100b8

    invoke-static {p1, v0}, Landroidx/fragment/app/m;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_c5

    :cond_94
    const v0, 0x10100b9

    invoke-static {p1, v0}, Landroidx/fragment/app/m;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_c5

    :cond_9c
    if-eqz v0, :cond_a1

    sget v0, Lw0/a;->fragment_fade_enter:I

    goto :goto_c5

    :cond_a1
    sget v0, Lw0/a;->fragment_fade_exit:I

    goto :goto_c5

    :cond_a4
    if-eqz v0, :cond_ae

    const v0, 0x10100ba

    invoke-static {p1, v0}, Landroidx/fragment/app/m;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_c5

    :cond_ae
    const v0, 0x10100bb

    invoke-static {p1, v0}, Landroidx/fragment/app/m;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_c5

    :cond_b6
    if-eqz v0, :cond_bb

    sget v0, Lw0/a;->fragment_close_enter:I

    goto :goto_c5

    :cond_bb
    sget v0, Lw0/a;->fragment_close_exit:I

    goto :goto_c5

    :cond_be
    if-eqz v0, :cond_c3

    sget v0, Lw0/a;->fragment_open_enter:I

    goto :goto_c5

    :cond_c3
    sget v0, Lw0/a;->fragment_open_exit:I

    :goto_c5
    move v2, v0

    :cond_c6
    if-eqz v2, :cond_108

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    :try_start_d8
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_e5

    new-instance v5, Landroidx/fragment/app/m$a;

    invoke-direct {v5, v1}, Landroidx/fragment/app/m$a;-><init>(Landroid/view/animation/Animation;)V
    :try_end_e3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d8 .. :try_end_e3} :catch_e7
    .catch Ljava/lang/RuntimeException; {:try_start_d8 .. :try_end_e3} :catch_e9

    move-object v7, v5

    goto :goto_108

    :cond_e5
    move v3, v4

    goto :goto_e9

    :catch_e7
    move-exception p1

    throw p1

    :catch_e9
    :cond_e9
    :goto_e9
    if-nez v3, :cond_108

    :try_start_eb
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_108

    new-instance v3, Landroidx/fragment/app/m$a;

    invoke-direct {v3, v1}, Landroidx/fragment/app/m$a;-><init>(Landroid/animation/Animator;)V
    :try_end_f6
    .catch Ljava/lang/RuntimeException; {:try_start_eb .. :try_end_f6} :catch_f8

    move-object v7, v3

    goto :goto_108

    :catch_f8
    move-exception v1

    if-nez v0, :cond_107

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_108

    new-instance v7, Landroidx/fragment/app/m$a;

    invoke-direct {v7, p1}, Landroidx/fragment/app/m$a;-><init>(Landroid/view/animation/Animation;)V

    goto :goto_108

    :cond_107
    throw v1

    :cond_108
    :goto_108
    iput-object v7, p0, Landroidx/fragment/app/b$b;->e:Landroidx/fragment/app/m$a;

    iput-boolean v4, p0, Landroidx/fragment/app/b$b;->d:Z

    return-object v7
.end method
