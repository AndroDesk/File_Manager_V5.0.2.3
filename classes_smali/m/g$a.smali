.class public final Lm/g$a;
.super La/b;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public l:Z

.field public m:I

.field public final synthetic n:Lm/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm/g;)V
    .registers 2

    iput-object p1, p0, Lm/g$a;->n:Lm/g;

    invoke-direct {p0}, La/b;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm/g$a;->l:Z

    iput p1, p0, Lm/g$a;->m:I

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    iget-boolean v0, p0, Lm/g$a;->l:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/g$a;->l:Z

    iget-object v0, p0, Lm/g$a;->n:Lm/g;

    iget-object v0, v0, Lm/g;->d:Lm0/p0;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lm0/p0;->b()V

    :cond_11
    return-void
.end method

.method public final onAnimationEnd()V
    .registers 3

    iget v0, p0, Lm/g$a;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm/g$a;->m:I

    iget-object v1, p0, Lm/g$a;->n:Lm/g;

    iget-object v1, v1, Lm/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lm/g$a;->n:Lm/g;

    iget-object v0, v0, Lm/g;->d:Lm0/p0;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lm0/p0;->onAnimationEnd()V

    :cond_19
    const/4 v0, 0x0

    iput v0, p0, Lm/g$a;->m:I

    iput-boolean v0, p0, Lm/g$a;->l:Z

    iget-object v1, p0, Lm/g$a;->n:Lm/g;

    iput-boolean v0, v1, Lm/g;->e:Z

    :cond_22
    return-void
.end method
