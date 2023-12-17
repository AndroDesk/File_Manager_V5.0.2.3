.class public final Landroidx/fragment/app/SpecialEffectsController$a;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/SpecialEffectsController;->a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/SpecialEffectsController$d;

.field public final synthetic b:Landroidx/fragment/app/SpecialEffectsController;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$a;->b:Landroidx/fragment/app/SpecialEffectsController;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$a;->a:Landroidx/fragment/app/SpecialEffectsController$d;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$a;->b:Landroidx/fragment/app/SpecialEffectsController;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController;->b:Ljava/util/ArrayList;

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$a;->a:Landroidx/fragment/app/SpecialEffectsController$d;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_17

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$a;->a:Landroidx/fragment/app/SpecialEffectsController$d;

    .line 15
    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 17
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 19
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 21
    invoke-virtual {v1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    .line 24
    :cond_17
    return-void
.end method
