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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lf1/f;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 6

    iput-object p1, p0, Lf1/g;->g:Lf1/f;

    iput-object p2, p0, Lf1/g;->a:Ljava/lang/Object;

    iput-object p3, p0, Lf1/g;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lf1/g;->c:Ljava/lang/Object;

    iput-object p1, p0, Lf1/g;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lf1/g;->e:Ljava/lang/Object;

    iput-object p5, p0, Lf1/g;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Lf1/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Lf1/n;)V
    .registers 2

    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    return-void
.end method

.method public final onTransitionStart(Lf1/n;)V
    .registers 5

    iget-object p1, p0, Lf1/g;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v1, p0, Lf1/g;->g:Lf1/f;

    iget-object v2, p0, Lf1/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lf1/f;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_c
    iget-object p1, p0, Lf1/g;->c:Ljava/lang/Object;

    if-eqz p1, :cond_17

    iget-object v1, p0, Lf1/g;->g:Lf1/f;

    iget-object v2, p0, Lf1/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lf1/f;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_17
    iget-object p1, p0, Lf1/g;->e:Ljava/lang/Object;

    if-eqz p1, :cond_22

    iget-object v1, p0, Lf1/g;->g:Lf1/f;

    iget-object v2, p0, Lf1/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lf1/f;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_22
    return-void
.end method
