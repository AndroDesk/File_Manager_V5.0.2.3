.class public final Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroidx/fragment/app/b$b;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/b$b;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .registers 5

    .line 1
    iput-object p4, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/f;->b:Landroid/view/ViewGroup;

    .line 5
    iput-object p1, p0, Landroidx/fragment/app/f;->c:Landroid/view/View;

    .line 7
    iput-object p3, p0, Landroidx/fragment/app/f;->d:Landroidx/fragment/app/b$b;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/f;->b:Landroid/view/ViewGroup;

    .line 3
    new-instance v0, Landroidx/fragment/app/f$a;

    .line 5
    invoke-direct {v0, p0}, Landroidx/fragment/app/f$a;-><init>(Landroidx/fragment/app/f;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_2a

    .line 18
    const-string p1, "Animation from operation "

    .line 20
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, " has ended."

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const-string v0, "FragmentManager"

    .line 40
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2a
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_20

    .line 8
    const-string p1, "Animation from operation "

    .line 10
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Landroidx/fragment/app/f;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string v0, " has reached onAnimationStart."

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "FragmentManager"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_20
    return-void
.end method
