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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/p;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/b0;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/b0;->r:Z

    iput-object p1, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/p;

    iput-object p2, p0, Landroidx/fragment/app/b0;->b:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/fragment/app/b0$a;)V
    .registers 3

    iget-object v0, p0, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroidx/fragment/app/b0;->d:I

    iput v0, p1, Landroidx/fragment/app/b0$a;->d:I

    iget v0, p0, Landroidx/fragment/app/b0;->e:I

    iput v0, p1, Landroidx/fragment/app/b0$a;->e:I

    iget v0, p0, Landroidx/fragment/app/b0;->f:I

    iput v0, p1, Landroidx/fragment/app/b0$a;->f:I

    iget v0, p0, Landroidx/fragment/app/b0;->g:I

    iput v0, p1, Landroidx/fragment/app/b0$a;->g:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/b0;->j:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/b0;->i:Z

    iput-object p1, p0, Landroidx/fragment/app/b0;->k:Ljava/lang/String;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    iget-object v0, p0, Landroidx/fragment/app/b0;->a:Landroidx/fragment/app/p;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Landroidx/fragment/app/b0;->b:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p2, :cond_15

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_15
    return-object p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The FragmentManager must be attached to itshost to create a Fragment"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Creating a Fragment requires that this FragmentTransaction was built with FragmentManager.beginTransaction()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
.end method

.method public final g()V
    .registers 3

    iget-boolean v0, p0, Landroidx/fragment/app/b0;->i:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/b0;->j:Z

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    if-eqz p1, :cond_7

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/b0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(IIII)V
    .registers 5

    iput p1, p0, Landroidx/fragment/app/b0;->d:I

    iput p2, p0, Landroidx/fragment/app/b0;->e:I

    iput p3, p0, Landroidx/fragment/app/b0;->f:I

    iput p4, p0, Landroidx/fragment/app/b0;->g:I

    return-void
.end method

.method public abstract m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/a;
.end method

.method public abstract n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
.end method
