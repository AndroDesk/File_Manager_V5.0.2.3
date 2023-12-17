.class public final Landroidx/fragment/app/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultSpecialEffectsController.java"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/SpecialEffectsController$Operation;

.field public final synthetic e:Landroidx/fragment/app/b$b;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/b$b;)V
    .registers 6

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/d;->a:Landroid/view/ViewGroup;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/d;->b:Landroid/view/View;

    .line 5
    iput-boolean p3, p0, Landroidx/fragment/app/d;->c:Z

    .line 7
    iput-object p4, p0, Landroidx/fragment/app/d;->d:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 9
    iput-object p5, p0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/b$b;

    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/d;->a:Landroid/view/ViewGroup;

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroid/view/View;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 8
    iget-boolean p1, p0, Landroidx/fragment/app/d;->c:Z

    .line 10
    if-eqz p1, :cond_14

    .line 12
    iget-object p1, p0, Landroidx/fragment/app/d;->d:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 14
    iget-object p1, p1, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroid/view/View;

    .line 18
    invoke-virtual {p1, v0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    .line 21
    :cond_14
    iget-object p1, p0, Landroidx/fragment/app/d;->e:Landroidx/fragment/app/b$b;

    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/b$c;->a()V

    .line 26
    const/4 p1, 0x2

    .line 27
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_39

    .line 33
    const-string p1, "Animator from operation "

    .line 35
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Landroidx/fragment/app/d;->d:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v0, " has ended."

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    const-string v0, "FragmentManager"

    .line 55
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_39
    return-void
.end method
