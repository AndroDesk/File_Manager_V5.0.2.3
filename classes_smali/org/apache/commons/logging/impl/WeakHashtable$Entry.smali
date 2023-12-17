.class final Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
.super Ljava/lang/Object;
.source "WeakHashtable.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->key:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->value:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_41

    .line 4
    instance-of v1, p1, Ljava/util/Map$Entry;

    .line 6
    if-eqz v1, :cond_41

    .line 8
    check-cast p1, Ljava/util/Map$Entry;

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_16

    .line 16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_41

    .line 22
    goto :goto_24

    .line 23
    :cond_16
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_41

    .line 37
    :goto_24
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_31

    .line 43
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_41

    .line 49
    goto :goto_3f

    .line 50
    :cond_31
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_41

    .line 64
    :goto_3f
    const/4 p1, 0x1

    .line 65
    move v0, p1

    .line 66
    :cond_41
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->key:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->value:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_9

    .line 8
    move v0, v1

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getKey()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 17
    move-result v0

    .line 18
    :goto_11
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_18

    .line 24
    goto :goto_20

    .line 25
    :cond_18
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;->getValue()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 32
    move-result v1

    .line 33
    :goto_20
    xor-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v0, "Entry.setValue is not supported."

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
