.class public final Landroidx/fragment/app/m$b;
.super Landroid/view/animation/AnimationSet;
.source "FragmentAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Landroid/view/View;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/m$b;->e:Z

    iput-object p2, p0, Landroidx/fragment/app/m$b;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/m$b;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/m$b;->e:Z

    iget-boolean v1, p0, Landroidx/fragment/app/m$b;->c:Z

    if-eqz v1, :cond_b

    iget-boolean p1, p0, Landroidx/fragment/app/m$b;->d:Z

    xor-int/2addr p1, v0

    return p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    if-nez p1, :cond_18

    iput-boolean v0, p0, Landroidx/fragment/app/m$b;->c:Z

    iget-object p1, p0, Landroidx/fragment/app/m$b;->a:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Lm0/y;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    :cond_18
    return v0
.end method

.method public final getTransformation(JLandroid/view/animation/Transformation;F)Z
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/m$b;->e:Z

    iget-boolean v1, p0, Landroidx/fragment/app/m$b;->c:Z

    if-eqz v1, :cond_b

    iget-boolean p1, p0, Landroidx/fragment/app/m$b;->d:Z

    xor-int/2addr p1, v0

    return p1

    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    if-nez p1, :cond_18

    iput-boolean v0, p0, Landroidx/fragment/app/m$b;->c:Z

    iget-object p1, p0, Landroidx/fragment/app/m$b;->a:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Lm0/y;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    :cond_18
    return v0
.end method

.method public final run()V
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/m$b;->c:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroidx/fragment/app/m$b;->e:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/m$b;->e:Z

    iget-object v0, p0, Landroidx/fragment/app/m$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/m$b;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/m$b;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/m$b;->d:Z

    :goto_1b
    return-void
.end method
