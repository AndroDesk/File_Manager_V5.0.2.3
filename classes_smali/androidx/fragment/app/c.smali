.class public final Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic c:Landroidx/fragment/app/b;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b;Ljava/util/ArrayList;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c;->c:Landroidx/fragment/app/b;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/c;->a:Ljava/util/List;

    .line 5
    iput-object p3, p0, Landroidx/fragment/app/c;->b:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Ljava/util/List;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/c;->b:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_21

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Ljava/util/List;

    .line 13
    iget-object v1, p0, Landroidx/fragment/app/c;->b:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/c;->c:Landroidx/fragment/app/b;

    .line 20
    iget-object v1, p0, Landroidx/fragment/app/c;->b:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-object v0, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 27
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 29
    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 31
    invoke-virtual {v1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    .line 34
    :cond_21
    return-void
.end method
