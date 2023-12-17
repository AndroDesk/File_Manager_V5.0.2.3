.class public final Landroidx/collection/a$d;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final synthetic d:Landroidx/collection/a;


# direct methods
.method public constructor <init>(Landroidx/collection/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/collection/a$d;->d:Landroidx/collection/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget p1, p1, Landroidx/collection/f;->mSize:I

    .line 8
    add-int/lit8 p1, p1, -0x1

    .line 10
    iput p1, p0, Landroidx/collection/a$d;->a:I

    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Landroidx/collection/a$d;->b:I

    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Landroidx/collection/a$d;->c:Z

    .line 3
    if-eqz v0, :cond_47

    .line 5
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Landroidx/collection/a$d;->d:Landroidx/collection/a;

    .line 19
    iget v3, p0, Landroidx/collection/a$d;->b:I

    .line 21
    invoke-virtual {v2, v3}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v0, v2, :cond_26

    .line 28
    if-eqz v0, :cond_24

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_24

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    move v0, v1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    :goto_26
    move v0, v3

    .line 40
    :goto_27
    if-eqz v0, :cond_46

    .line 42
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Landroidx/collection/a$d;->d:Landroidx/collection/a;

    .line 48
    iget v2, p0, Landroidx/collection/a$d;->b:I

    .line 50
    invoke-virtual {v0, v2}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    if-eq p1, v0, :cond_42

    .line 56
    if-eqz p1, :cond_40

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_40

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    move p1, v1

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    :goto_42
    move p1, v3

    .line 68
    :goto_43
    if-eqz p1, :cond_46

    .line 70
    move v1, v3

    .line 71
    :cond_46
    return v1

    .line 72
    :cond_47
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    const-string v0, "This container does not support retaining Map.Entry objects"

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/collection/a$d;->c:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object v0, p0, Landroidx/collection/a$d;->d:Landroidx/collection/a;

    .line 7
    iget v1, p0, Landroidx/collection/a$d;->b:I

    .line 9
    invoke-virtual {v0, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "This container does not support retaining Map.Entry objects"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/collection/a$d;->c:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object v0, p0, Landroidx/collection/a$d;->d:Landroidx/collection/a;

    .line 7
    iget v1, p0, Landroidx/collection/a$d;->b:I

    .line 9
    invoke-virtual {v0, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "This container does not support retaining Map.Entry objects"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public final hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/collection/a$d;->b:I

    .line 3
    iget v1, p0, Landroidx/collection/a$d;->a:I

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

.method public final hashCode()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/collection/a$d;->c:Z

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v0, p0, Landroidx/collection/a$d;->d:Landroidx/collection/a;

    .line 7
    iget v1, p0, Landroidx/collection/a$d;->b:I

    .line 9
    invoke-virtual {v0, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/collection/a$d;->d:Landroidx/collection/a;

    .line 15
    iget v2, p0, Landroidx/collection/a$d;->b:I

    .line 17
    invoke-virtual {v1, v2}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_19

    .line 24
    move v0, v2

    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 29
    move-result v0

    .line 30
    :goto_1d
    if-nez v1, :cond_20

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 36
    move-result v2

    .line 37
    :goto_24
    xor-int/2addr v0, v2

    .line 38
    return v0

    .line 39
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    const-string v1, "This container does not support retaining Map.Entry objects"

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/collection/a$d;->hasNext()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iget v0, p0, Landroidx/collection/a$d;->b:I

    .line 9
    const/4 v1, 0x1

    .line 10
    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Landroidx/collection/a$d;->b:I

    .line 13
    iput-boolean v1, p0, Landroidx/collection/a$d;->c:Z

    .line 15
    return-object p0

    .line 16
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 18
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 21
    throw v0
.end method

.method public final remove()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/collection/a$d;->c:Z

    .line 3
    if-eqz v0, :cond_1b

    .line 5
    iget-object v0, p0, Landroidx/collection/a$d;->d:Landroidx/collection/a;

    .line 7
    iget v1, p0, Landroidx/collection/a$d;->b:I

    .line 9
    invoke-virtual {v0, v1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    .line 12
    iget v0, p0, Landroidx/collection/a$d;->b:I

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    iput v0, p0, Landroidx/collection/a$d;->b:I

    .line 18
    iget v0, p0, Landroidx/collection/a$d;->a:I

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 22
    iput v0, p0, Landroidx/collection/a$d;->a:I

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Landroidx/collection/a$d;->c:Z

    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 33
    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/collection/a$d;->c:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object v0, p0, Landroidx/collection/a$d;->d:Landroidx/collection/a;

    .line 7
    iget v1, p0, Landroidx/collection/a$d;->b:I

    .line 9
    invoke-virtual {v0, v1, p1}, Landroidx/collection/f;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    const-string v0, "This container does not support retaining Map.Entry objects"

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroidx/collection/a$d;->getKey()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Landroidx/collection/a$d;->getValue()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
