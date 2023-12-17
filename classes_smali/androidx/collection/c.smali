.class public abstract Landroidx/collection/c;
.super Ljava/lang/Object;
.source "IndexBasedArrayIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/collection/c;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract b(I)V
.end method

.method public final hasNext()Z
    .registers 3

    iget v0, p0, Landroidx/collection/c;->b:I

    iget v1, p0, Landroidx/collection/c;->a:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Landroidx/collection/c;->b:I

    invoke-virtual {p0, v0}, Landroidx/collection/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/collection/c;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/c;->b:I

    iput-boolean v2, p0, Landroidx/collection/c;->c:Z

    return-object v0

    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    iget-boolean v0, p0, Landroidx/collection/c;->c:Z

    if-eqz v0, :cond_17

    iget v0, p0, Landroidx/collection/c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/c;->b:I

    invoke-virtual {p0, v0}, Landroidx/collection/c;->b(I)V

    iget v0, p0, Landroidx/collection/c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/c;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/c;->c:Z

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
