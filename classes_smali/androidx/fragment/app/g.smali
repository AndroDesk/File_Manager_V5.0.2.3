.class public final Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Li0/d$b;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroidx/fragment/app/b$b;

.field public final synthetic d:Landroidx/fragment/app/SpecialEffectsController$Operation;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/b$b;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/g;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/g;->b:Landroid/view/ViewGroup;

    .line 5
    iput-object p3, p0, Landroidx/fragment/app/g;->c:Landroidx/fragment/app/b$b;

    .line 7
    iput-object p4, p0, Landroidx/fragment/app/g;->d:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/g;->b:Landroid/view/ViewGroup;

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/g;->a:Landroid/view/View;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/g;->c:Landroidx/fragment/app/b$b;

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/b$c;->a()V

    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_31

    .line 25
    const-string v0, "Animation from operation "

    .line 27
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Landroidx/fragment/app/g;->d:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " has been cancelled."

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "FragmentManager"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_31
    return-void
.end method
