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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lf1/r;)V
    .registers 2

    invoke-direct {p0}, Lf1/o;-><init>()V

    iput-object p1, p0, Lf1/r$b;->a:Lf1/r;

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Lf1/n;)V
    .registers 4

    iget-object v0, p0, Lf1/r$b;->a:Lf1/r;

    iget v1, v0, Lf1/r;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lf1/r;->c:I

    if-nez v1, :cond_10

    const/4 v1, 0x0

    iput-boolean v1, v0, Lf1/r;->d:Z

    invoke-virtual {v0}, Lf1/n;->end()V

    :cond_10
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    return-void
.end method

.method public final onTransitionStart(Lf1/n;)V
    .registers 3

    iget-object p1, p0, Lf1/r$b;->a:Lf1/r;

    iget-boolean v0, p1, Lf1/r;->d:Z

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lf1/n;->start()V

    iget-object p1, p0, Lf1/r$b;->a:Lf1/r;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lf1/r;->d:Z

    :cond_e
    return-void
.end method
