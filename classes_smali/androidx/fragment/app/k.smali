.class public final Landroidx/fragment/app/k;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/b$d;

.field public final synthetic b:Landroidx/fragment/app/SpecialEffectsController$Operation;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/b$d;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/b$d;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/k;->b:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/b$d;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/b$c;->a()V

    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_25

    .line 13
    const-string v0, "Transition for operation "

    .line 15
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroidx/fragment/app/k;->b:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "has completed"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "FragmentManager"

    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_25
    return-void
.end method
