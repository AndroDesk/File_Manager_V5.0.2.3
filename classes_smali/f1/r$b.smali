.class public final Lf1/r$b;
.super Lf1/o;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lf1/r;


# direct methods
.method public constructor <init>(Lf1/r;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lf1/o;-><init>()V

    .line 4
    iput-object p1, p0, Lf1/r$b;->a:Lf1/r;

    .line 6
    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Lf1/n;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lf1/r$b;->a:Lf1/r;

    .line 3
    iget v1, v0, Lf1/r;->c:I

    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 7
    iput v1, v0, Lf1/r;->c:I

    .line 9
    if-nez v1, :cond_10

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lf1/r;->d:Z

    .line 14
    invoke-virtual {v0}, Lf1/n;->end()V

    .line 17
    :cond_10
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 20
    return-void
.end method

.method public final onTransitionStart(Lf1/n;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lf1/r$b;->a:Lf1/r;

    .line 3
    iget-boolean v0, p1, Lf1/r;->d:Z

    .line 5
    if-nez v0, :cond_e

    .line 7
    invoke-virtual {p1}, Lf1/n;->start()V

    .line 10
    iget-object p1, p0, Lf1/r$b;->a:Lf1/r;

    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Lf1/r;->d:Z

    .line 15
    :cond_e
    return-void
.end method
