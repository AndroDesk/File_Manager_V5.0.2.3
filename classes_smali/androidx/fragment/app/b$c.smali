.class public Landroidx/fragment/app/b$c;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final b:Li0/d;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 6
    iput-object p2, p0, Landroidx/fragment/app/b$c;->b:Li0/d;

    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/b$c;->b:Li0/d;

    .line 5
    iget-object v2, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->e:Ljava/util/HashSet;

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_17

    .line 13
    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->e:Ljava/util/HashSet;

    .line 15
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_17

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->b()V

    .line 24
    :cond_17
    return-void
.end method

.method public final b()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 7
    invoke-static {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 13
    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 15
    if-eq v0, v1, :cond_19

    .line 17
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 19
    if-eq v0, v2, :cond_17

    .line 21
    if-eq v1, v2, :cond_17

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 27
    :goto_1a
    return v0
.end method
