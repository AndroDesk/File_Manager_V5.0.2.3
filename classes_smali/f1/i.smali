.class public final Lf1/i;
.super Ljava/lang/Object;
.source "FragmentTransitionSupport.java"

# interfaces
.implements Lf1/n$g;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lf1/i;->a:Ljava/lang/Runnable;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Lf1/n;)V
    .registers 2

    return-void
.end method

.method public final onTransitionEnd(Lf1/n;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lf1/i;->a:Ljava/lang/Runnable;

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    return-void
.end method

.method public final onTransitionPause(Lf1/n;)V
    .registers 2

    return-void
.end method

.method public final onTransitionResume(Lf1/n;)V
    .registers 2

    return-void
.end method

.method public final onTransitionStart(Lf1/n;)V
    .registers 2

    return-void
.end method
