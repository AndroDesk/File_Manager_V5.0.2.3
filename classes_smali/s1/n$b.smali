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
.method public constructor <init>(Ls1/n;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ls1/n$b;->g:Ls1/n;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Ls1/n$b;->c:I

    .line 9
    iput v0, p0, Ls1/n$b;->d:I

    .line 11
    iget p1, p1, Ls1/n;->e:I

    .line 13
    iput p1, p0, Ls1/n$b;->a:I

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ls1/n$a;
    .registers 3

    .line 1
    iget-object v0, p0, Ls1/n$b;->g:Ls1/n;

    .line 3
    iget v0, v0, Ls1/n;->e:I

    .line 5
    iget v1, p0, Ls1/n$b;->a:I

    .line 7
    if-ne v0, v1, :cond_20

    .line 9
    invoke-virtual {p0}, Ls1/n$b;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1a

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Ls1/n$b;->b:Z

    .line 18
    iget v0, p0, Ls1/n$b;->c:I

    .line 20
    iput v0, p0, Ls1/n$b;->d:I

    .line 22
    iget-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    .line 24
    iput-object v0, p0, Ls1/n$b;->f:Ls1/n$a;

    .line 26
    return-object v0

    .line 27
    :cond_1a
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 29
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 32
    throw v0

    .line 33
    :cond_20
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 35
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 38
    throw v0
.end method

.method public final hasNext()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Ls1/n$b;->b:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    .line 9
    if-eqz v0, :cond_e

    .line 11
    iget-object v0, v0, Ls1/n$a;->e:Ls1/n$a;

    .line 13
    iput-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    .line 15
    :cond_e
    iget-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    .line 17
    if-nez v0, :cond_2e

    .line 19
    iget v0, p0, Ls1/n$b;->c:I

    .line 21
    add-int/2addr v0, v1

    .line 22
    :goto_15
    iput v0, p0, Ls1/n$b;->c:I

    .line 24
    iget v0, p0, Ls1/n$b;->c:I

    .line 26
    iget-object v2, p0, Ls1/n$b;->g:Ls1/n;

    .line 28
    iget-object v2, v2, Ls1/n;->f:[Ls1/n$a;

    .line 30
    array-length v3, v2

    .line 31
    if-ge v0, v3, :cond_27

    .line 33
    aget-object v3, v2, v0

    .line 35
    if-nez v3, :cond_27

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_15

    .line 40
    :cond_27
    array-length v3, v2

    .line 41
    if-ge v0, v3, :cond_2e

    .line 43
    aget-object v0, v2, v0

    .line 45
    iput-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    .line 47
    :cond_2e
    iget-object v0, p0, Ls1/n$b;->e:Ls1/n$a;

    .line 49
    if-eqz v0, :cond_33

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    const/4 v1, 0x0

    .line 53
    :goto_34
    iput-boolean v1, p0, Ls1/n$b;->b:Z

    .line 55
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ls1/n$b;->a()Ls1/n$a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final remove()V
    .registers 7

    .line 1
    iget v0, p0, Ls1/n$b;->d:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_49

    .line 6
    iget-object v2, p0, Ls1/n$b;->g:Ls1/n;

    .line 8
    iget v3, v2, Ls1/n;->e:I

    .line 10
    iget v4, p0, Ls1/n$b;->a:I

    .line 12
    if-ne v3, v4, :cond_43

    .line 14
    const/4 v3, 0x0

    .line 15
    iget-object v2, v2, Ls1/n;->f:[Ls1/n$a;

    .line 17
    aget-object v0, v2, v0

    .line 19
    :goto_12
    move-object v5, v3

    .line 20
    move-object v3, v0

    .line 21
    move-object v0, v5

    .line 22
    iget-object v2, p0, Ls1/n$b;->f:Ls1/n$a;

    .line 24
    if-eq v3, v2, :cond_1c

    .line 26
    iget-object v0, v3, Ls1/n$a;->e:Ls1/n$a;

    .line 28
    goto :goto_12

    .line 29
    :cond_1c
    if-eqz v0, :cond_23

    .line 31
    iget-object v2, v2, Ls1/n$a;->e:Ls1/n$a;

    .line 33
    iput-object v2, v0, Ls1/n$a;->e:Ls1/n$a;

    .line 35
    goto :goto_2d

    .line 36
    :cond_23
    iget-object v0, p0, Ls1/n$b;->g:Ls1/n;

    .line 38
    iget-object v0, v0, Ls1/n;->f:[Ls1/n$a;

    .line 40
    iget v3, p0, Ls1/n$b;->d:I

    .line 42
    iget-object v2, v2, Ls1/n$a;->e:Ls1/n$a;

    .line 44
    aput-object v2, v0, v3

    .line 46
    :goto_2d
    iget-object v0, p0, Ls1/n$b;->g:Ls1/n;

    .line 48
    iget v2, v0, Ls1/n;->c:I

    .line 50
    add-int/2addr v2, v1

    .line 51
    iput v2, v0, Ls1/n;->c:I

    .line 53
    iget v2, v0, Ls1/n;->e:I

    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 57
    iput v2, v0, Ls1/n;->e:I

    .line 59
    iget v0, p0, Ls1/n$b;->a:I

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 63
    iput v0, p0, Ls1/n$b;->a:I

    .line 65
    iput v1, p0, Ls1/n$b;->d:I

    .line 67
    return-void

    .line 68
    :cond_43
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 70
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 73
    throw v0

    .line 74
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 76
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 79
    throw v0
.end method
