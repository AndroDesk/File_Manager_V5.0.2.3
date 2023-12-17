.class public final Ls1/n$a;
.super Ljava/lang/Object;
.source "TwoKeyHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public e:Ls1/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/n$a<",
            "TE;TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ls1/n$a;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Ls1/n$a;->a:I

    .line 6
    iput-object p2, p0, Ls1/n$a;->b:Ljava/lang/Object;

    .line 8
    iput-object p3, p0, Ls1/n$a;->c:Ljava/lang/Object;

    .line 10
    iput-object p4, p0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 12
    iput-object p5, p0, Ls1/n$a;->e:Ls1/n$a;

    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    instance-of v0, p1, Ls1/n$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    check-cast p1, Ls1/n$a;

    .line 9
    iget-object v0, p1, Ls1/n$a;->b:Ljava/lang/Object;

    .line 11
    iget-object v2, p1, Ls1/n$a;->c:Ljava/lang/Object;

    .line 13
    iget-object v3, p1, Ls1/n$a;->d:Ljava/lang/Object;

    .line 15
    iget-object v4, p0, Ls1/n$a;->b:Ljava/lang/Object;

    .line 17
    if-nez v4, :cond_14

    .line 19
    if-nez v0, :cond_3b

    .line 21
    :cond_14
    iget-object v5, p0, Ls1/n$a;->c:Ljava/lang/Object;

    .line 23
    if-nez v5, :cond_1a

    .line 25
    if-nez v2, :cond_3b

    .line 27
    :cond_1a
    iget-object v2, p0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 29
    if-nez v2, :cond_20

    .line 31
    if-nez v3, :cond_3b

    .line 33
    :cond_20
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3b

    .line 39
    iget-object v0, p0, Ls1/n$a;->c:Ljava/lang/Object;

    .line 41
    iget-object p1, p1, Ls1/n$a;->c:Ljava/lang/Object;

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3b

    .line 49
    iget-object p1, p0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_39

    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    const/4 p1, 0x1

    .line 59
    return p1

    .line 60
    :cond_3b
    :goto_3b
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Ls1/n$a;->b:Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Ls1/n$a;->c:Ljava/lang/Object;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Ls1/n$a;->b:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    move-result v0

    .line 12
    :goto_b
    iget-object v2, p0, Ls1/n$a;->c:Ljava/lang/Object;

    .line 14
    if-nez v2, :cond_11

    .line 16
    move v2, v1

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    move-result v2

    .line 22
    :goto_15
    add-int/2addr v0, v2

    .line 23
    iget-object v2, p0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 25
    if-nez v2, :cond_1b

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 31
    move-result v1

    .line 32
    :goto_1f
    xor-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 5
    return-object v0
.end method
