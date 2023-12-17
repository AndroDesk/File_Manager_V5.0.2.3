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
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroidx/collection/c;->a:I

    .line 6
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

    .line 1
    iget v0, p0, Landroidx/collection/c;->b:I

    .line 3
    iget v1, p0, Landroidx/collection/c;->a:I

    .line 5
    if-ge v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
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

    .line 1
    invoke-virtual {p0}, Landroidx/collection/c;->hasNext()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    iget v0, p0, Landroidx/collection/c;->b:I

    .line 9
    invoke-virtual {p0, v0}, Landroidx/collection/c;->a(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Landroidx/collection/c;->b:I

    .line 15
    const/4 v2, 0x1

    .line 16
    add-int/2addr v1, v2

    .line 17
    iput v1, p0, Landroidx/collection/c;->b:I

    .line 19
    iput-boolean v2, p0, Landroidx/collection/c;->c:Z

    .line 21
    return-object v0

    .line 22
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 24
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 27
    throw v0
.end method

.method public final remove()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/collection/c;->c:Z

    .line 3
    if-eqz v0, :cond_17

    .line 5
    iget v0, p0, Landroidx/collection/c;->b:I

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    iput v0, p0, Landroidx/collection/c;->b:I

    .line 11
    invoke-virtual {p0, v0}, Landroidx/collection/c;->b(I)V

    .line 14
    iget v0, p0, Landroidx/collection/c;->a:I

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 18
    iput v0, p0, Landroidx/collection/c;->a:I

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroidx/collection/c;->c:Z

    .line 23
    return-void

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method
