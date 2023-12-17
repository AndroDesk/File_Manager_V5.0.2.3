.class public final Lf1/n$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/n;->runAnimator(Landroid/animation/Animator;Landroidx/collection/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/collection/a;

.field public final synthetic b:Lf1/n;


# direct methods
.method public constructor <init>(Lf1/n;Landroidx/collection/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lf1/n$b;->b:Lf1/n;

    .line 3
    iput-object p2, p0, Lf1/n$b;->a:Landroidx/collection/a;

    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lf1/n$b;->a:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lf1/n$b;->b:Lf1/n;

    .line 8
    iget-object v0, v0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lf1/n$b;->b:Lf1/n;

    .line 3
    iget-object v0, v0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method
