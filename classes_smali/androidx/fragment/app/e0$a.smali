.class public final Landroidx/fragment/app/e0$a;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/e0;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Landroidx/fragment/app/e0$a;->a:Landroid/view/View;

    iput-object p2, p0, Landroidx/fragment/app/e0$a;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object p1, p0, Landroidx/fragment/app/e0$a;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/fragment/app/e0$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, p1, :cond_22

    iget-object v2, p0, Landroidx/fragment/app/e0$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method
