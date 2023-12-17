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
.method public constructor <init>(Lm/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lm/g$a;->n:Lm/g;

    .line 3
    invoke-direct {p0}, La/b;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lm/g$a;->l:Z

    .line 9
    iput p1, p0, Lm/g$a;->m:I

    .line 11
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm/g$a;->l:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lm/g$a;->l:Z

    .line 9
    iget-object v0, p0, Lm/g$a;->n:Lm/g;

    .line 11
    iget-object v0, v0, Lm/g;->d:Lm0/p0;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-interface {v0}, Lm0/p0;->b()V

    .line 18
    :cond_11
    return-void
.end method

.method public final onAnimationEnd()V
    .registers 3

    .line 1
    iget v0, p0, Lm/g$a;->m:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lm/g$a;->m:I

    .line 7
    iget-object v1, p0, Lm/g$a;->n:Lm/g;

    .line 9
    iget-object v1, v1, Lm/g;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_22

    .line 17
    iget-object v0, p0, Lm/g$a;->n:Lm/g;

    .line 19
    iget-object v0, v0, Lm/g;->d:Lm0/p0;

    .line 21
    if-eqz v0, :cond_19

    .line 23
    invoke-interface {v0}, Lm0/p0;->onAnimationEnd()V

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lm/g$a;->m:I

    .line 29
    iput-boolean v0, p0, Lm/g$a;->l:Z

    .line 31
    iget-object v1, p0, Lm/g$a;->n:Lm/g;

    .line 33
    iput-boolean v0, v1, Lm/g;->e:Z

    .line 35
    :cond_22
    return-void
.end method
