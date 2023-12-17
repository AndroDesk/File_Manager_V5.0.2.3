.class public final Lf1/g;
.super Lf1/o;
.source "FragmentTransitionSupport.java"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Lf1/f;


# direct methods
.method public constructor <init>(Lf1/f;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lf1/g;->g:Lf1/f;

    .line 3
    iput-object p2, p0, Lf1/g;->a:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lf1/g;->b:Ljava/util/ArrayList;

    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lf1/g;->c:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lf1/g;->d:Ljava/util/ArrayList;

    .line 12
    iput-object p4, p0, Lf1/g;->e:Ljava/lang/Object;

    .line 14
    iput-object p5, p0, Lf1/g;->f:Ljava/util/ArrayList;

    .line 16
    invoke-direct {p0}, Lf1/o;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Lf1/n;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 4
    return-void
.end method

.method public final onTransitionStart(Lf1/n;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lf1/g;->a:Ljava/lang/Object;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_c

    .line 6
    iget-object v1, p0, Lf1/g;->g:Lf1/f;

    .line 8
    iget-object v2, p0, Lf1/g;->b:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1, p1, v2, v0}, Lf1/f;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 13
    :cond_c
    iget-object p1, p0, Lf1/g;->c:Ljava/lang/Object;

    .line 15
    if-eqz p1, :cond_17

    .line 17
    iget-object v1, p0, Lf1/g;->g:Lf1/f;

    .line 19
    iget-object v2, p0, Lf1/g;->d:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1, p1, v2, v0}, Lf1/f;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 24
    :cond_17
    iget-object p1, p0, Lf1/g;->e:Ljava/lang/Object;

    .line 26
    if-eqz p1, :cond_22

    .line 28
    iget-object v1, p0, Lf1/g;->g:Lf1/f;

    .line 30
    iget-object v2, p0, Lf1/g;->f:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v1, p1, v2, v0}, Lf1/f;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 35
    :cond_22
    return-void
.end method
