.class public abstract Landroidx/fragment/app/b0;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/b0$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/fragment/app/p;

.field public final b:Ljava/lang/ClassLoader;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/b0$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/CharSequence;

.field public n:I

.field public o:Ljava/lang/CharSequence;

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p;Ljava/lang/ClassLoader;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/fragment/app/b0;->j:Z

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/fragment/app/b0;->r:Z

    .line 17
    iput-object p1, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/p;

    .line 19
    iput-object p2, p0, Landroidx/fragment/app/b0;->b:Ljava/lang/ClassLoader;

    .line 21
    return-void
.end method


# virtual methods
.method public final b(Landroidx/fragment/app/b0$a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget v0, p0, Landroidx/fragment/app/b0;->d:I

    .line 8
    iput v0, p1, Landroidx/fragment/app/b0$a;->d:I

    .line 10
    iget v0, p0, Landroidx/fragment/app/b0;->e:I

    .line 12
    iput v0, p1, Landroidx/fragment/app/b0$a;->e:I

    .line 14
    iget v0, p0, Landroidx/fragment/app/b0;->f:I

    .line 16
    iput v0, p1, Landroidx/fragment/app/b0$a;->f:I

    .line 18
    iget v0, p0, Landroidx/fragment/app/b0;->g:I

    .line 20
    iput v0, p1, Landroidx/fragment/app/b0$a;->g:I

    .line 22
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/b0;->j:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/b0;->i:Z

    .line 8
    iput-object p1, p0, Landroidx/fragment/app/b0;->k:Ljava/lang/String;

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method public abstract d()I
.end method

.method public final e(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/p;

    .line 3
    if-eqz v0, :cond_1e

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/b0;->b:Ljava/lang/ClassLoader;

    .line 7
    if-eqz v1, :cond_16

    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p2, :cond_15

    .line 19
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    :cond_15
    return-object p1

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    const-string p2, "The FragmentManager must be attached to itshost to create a Fragment"

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1

    .line 31
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    const-string p2, "Creating a Fragment requires that this FragmentTransaction was built with FragmentManager.beginTransaction()"

    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1
.end method

.method public abstract f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
.end method

.method public final g()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/b0;->i:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/b0;->j:Z

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    const-string v1, "This transaction is already being added to the back stack"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method public abstract h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method

.method public abstract i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
.end method

.method public abstract j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
.end method

.method public final k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_7

    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/b0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string p2, "Must use non-zero containerViewId"

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method

.method public final l(IIII)V
    .registers 5

    .line 1
    iput p1, p0, Landroidx/fragment/app/b0;->d:I

    .line 3
    iput p2, p0, Landroidx/fragment/app/b0;->e:I

    .line 5
    iput p3, p0, Landroidx/fragment/app/b0;->f:I

    .line 7
    iput p4, p0, Landroidx/fragment/app/b0;->g:I

    .line 9
    return-void
.end method

.method public abstract m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;
.end method

.method public abstract n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
.end method
