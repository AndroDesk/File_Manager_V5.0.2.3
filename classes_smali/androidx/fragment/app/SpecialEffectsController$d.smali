.class public final Landroidx/fragment/app/SpecialEffectsController$d;
.super Landroidx/fragment/app/SpecialEffectsController$Operation;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final h:Landroidx/fragment/app/y;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/y;Li0/d;)V
    .registers 6

    .line 1
    iget-object v0, p3, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;Li0/d;)V

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/SpecialEffectsController$d;->h:Landroidx/fragment/app/y;

    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->b()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$d;->h:Landroidx/fragment/app/y;

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/y;->k()V

    .line 9
    return-void
.end method

.method public final d()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->b:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 3
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 5
    const-string v2, " for Fragment "

    .line 7
    const-string v3, "FragmentManager"

    .line 9
    const/4 v4, 0x2

    .line 10
    if-ne v0, v1, :cond_69

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$d;->h:Landroidx/fragment/app/y;

    .line 14
    iget-object v0, v0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 16
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_3a

    .line 24
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 27
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_3a

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v5, "requestFocus: Saved focused view "

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_3a
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 61
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x0

    .line 70
    if-nez v2, :cond_4f

    .line 72
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController$d;->h:Landroidx/fragment/app/y;

    .line 74
    invoke-virtual {v2}, Landroidx/fragment/app/y;->b()V

    .line 77
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 80
    :cond_4f
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 83
    move-result v2

    .line 84
    cmpl-float v2, v2, v3

    .line 86
    if-nez v2, :cond_61

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_61

    .line 94
    const/4 v2, 0x4

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_61
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    .line 101
    move-result v0

    .line 102
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 105
    goto :goto_a0

    .line 106
    :cond_69
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 108
    if-ne v0, v1, :cond_a0

    .line 110
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$d;->h:Landroidx/fragment/app/y;

    .line 112
    iget-object v0, v0, Landroidx/fragment/app/y;->c:Landroidx/fragment/app/Fragment;

    .line 114
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 117
    move-result-object v1

    .line 118
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_9d

    .line 124
    const-string v4, "Clearing focus "

    .line 126
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string v5, " on view "

    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_9d
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 161
    :cond_a0
    :goto_a0
    return-void
.end method
