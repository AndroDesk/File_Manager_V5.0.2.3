.class public final Landroidx/fragment/app/h;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic b:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/a;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 5
    iput-boolean p3, p0, Landroidx/fragment/app/h;->c:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 7
    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 9
    iget-boolean v2, p0, Landroidx/fragment/app/h;->c:Z

    .line 11
    sget-object v3, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/e0;

    .line 13
    if-eqz v2, :cond_12

    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld0/o;

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld0/o;

    .line 22
    :goto_15
    return-void
.end method
