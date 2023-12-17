.class public final Ls1/n$b;
.super Ljava/lang/Object;
.source "TwoKeyHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:I

.field public e:Ls1/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/n$a<",
            "TE;TK;TV;>;"
        }
    .end annotation
.end field

.field public f:Ls1/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/n$a<",
            "TE;TK;TV;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Ls1/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ls1/n;)V
    .registers 3

    iput-object p1, p0, Ls1/n$b;->g:Ls1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ls1/n$b;->c:I

    iput v0, p0, Ls1/n$b;->d:I

    iget p1, p1, Ls1/n;->e:I

    iput p1, p0, Ls1/n$b;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ls1/n$a;
    .registers 3

    iget-object v0, p0, Ls1/n$b;->g:Ls1/n;

    iget v0, v0, Ls1/n;->e:I

    iget v1, p0, Ls1/n$b;->a:I

    if-ne v0, v1, :cond_20

    invoke-virtual {p0}, Ls1/n$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls1/n$b;->b:Z

    iget v0, p0, Ls1/n$b;->c:I

    iput v0, p0, Ls1/n$b;->d:I

    iget-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    iput-object v0, p0, Ls1/n$b;->f:Ls1/n$a;

    return-object v0

    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_20
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 5

    iget-boolean v0, p0, Ls1/n$b;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    if-eqz v0, :cond_e

    iget-object v0, v0, Ls1/n$a;->e:Ls1/n$a;

    iput-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    :cond_e
    iget-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    if-nez v0, :cond_2e

    iget v0, p0, Ls1/n$b;->c:I

    add-int/2addr v0, v1

    :goto_15
    iput v0, p0, Ls1/n$b;->c:I

    iget v0, p0, Ls1/n$b;->c:I

    iget-object v2, p0, Ls1/n$b;->g:Ls1/n;

    iget-object v2, v2, Ls1/n;->f:[Ls1/n$a;

    array-length v3, v2

    if-ge v0, v3, :cond_27

    aget-object v3, v2, v0

    if-nez v3, :cond_27

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_27
    array-length v3, v2

    if-ge v0, v3, :cond_2e

    aget-object v0, v2, v0

    iput-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    :cond_2e
    iget-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    iput-boolean v1, p0, Ls1/n$b;->b:Z

    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ls1/n$b;->a()Ls1/n$a;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 7

    iget v0, p0, Ls1/n$b;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_49

    iget-object v2, p0, Ls1/n$b;->g:Ls1/n;

    iget v3, v2, Ls1/n;->e:I

    iget v4, p0, Ls1/n$b;->a:I

    if-ne v3, v4, :cond_43

    const/4 v3, 0x0

    iget-object v2, v2, Ls1/n;->f:[Ls1/n$a;

    aget-object v0, v2, v0

    :goto_12
    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    iget-object v2, p0, Ls1/n$b;->f:Ls1/n$a;

    if-eq v3, v2, :cond_1c

    iget-object v0, v3, Ls1/n$a;->e:Ls1/n$a;

    goto :goto_12

    :cond_1c
    if-eqz v0, :cond_23

    iget-object v2, v2, Ls1/n$a;->e:Ls1/n$a;

    iput-object v2, v0, Ls1/n$a;->e:Ls1/n$a;

    goto :goto_2d

    :cond_23
    iget-object v0, p0, Ls1/n$b;->g:Ls1/n;

    iget-object v0, v0, Ls1/n;->f:[Ls1/n$a;

    iget v3, p0, Ls1/n$b;->d:I

    iget-object v2, v2, Ls1/n$a;->e:Ls1/n$a;

    aput-object v2, v0, v3

    :goto_2d
    iget-object v0, p0, Ls1/n$b;->g:Ls1/n;

    iget v2, v0, Ls1/n;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Ls1/n;->c:I

    iget v2, v0, Ls1/n;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Ls1/n;->e:I

    iget v0, p0, Ls1/n$b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls1/n$b;->a:I

    iput v1, p0, Ls1/n$b;->d:I

    return-void

    :cond_43
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
