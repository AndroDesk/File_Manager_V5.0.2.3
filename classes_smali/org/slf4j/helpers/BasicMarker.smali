.class public Lorg/slf4j/helpers/BasicMarker;
.super Ljava/lang/Object;
.source "BasicMarker.java"

# interfaces
.implements Lorg/slf4j/Marker;


# static fields
.field private static CLOSE:Ljava/lang/String; = " ]"

.field private static OPEN:Ljava/lang/String; = "[ "

.field private static SEP:Ljava/lang/String; = ", "

.field private static final serialVersionUID:J = 0x1908ed5291b507e7L


# instance fields
.field private final name:Ljava/lang/String;

.field private referenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p1, :cond_8

    .line 6
    iput-object p1, p0, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string v0, "A marker name cannot be null"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method


# virtual methods
.method public declared-synchronized add(Lorg/slf4j/Marker;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_27

    .line 4
    :try_start_3
    invoke-virtual {p0, p1}, Lorg/slf4j/helpers/BasicMarker;->contains(Lorg/slf4j/Marker;)Z

    .line 7
    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_25

    .line 8
    if-eqz v0, :cond_b

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_b
    :try_start_b
    invoke-interface {p1, p0}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    .line 15
    move-result v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_25

    .line 16
    if-eqz v0, :cond_13

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_13
    :try_start_13
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    .line 22
    if-nez v0, :cond_1e

    .line 24
    new-instance v0, Ljava/util/Vector;

    .line 26
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 29
    iput-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    .line 31
    :cond_1e
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25

    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_25
    move-exception p1

    .line 39
    goto :goto_2f

    .line 40
    :cond_27
    :try_start_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    const-string v0, "A null value cannot be added to a Marker as reference."

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_25

    .line 48
    :goto_2f
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_2d

    .line 6
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 7
    :cond_c
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 8
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slf4j/Marker;

    .line 9
    invoke-interface {v2, p1}, Lorg/slf4j/Marker;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    return v1

    :cond_2b
    const/4 p1, 0x0

    return p1

    .line 10
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Other cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contains(Lorg/slf4j/Marker;)Z
    .registers 5

    if-eqz p1, :cond_2b

    .line 1
    invoke-virtual {p0, p1}, Lorg/slf4j/helpers/BasicMarker;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 2
    :cond_a
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slf4j/Marker;

    .line 4
    invoke-interface {v2, p1}, Lorg/slf4j/Marker;->contains(Lorg/slf4j/Marker;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v1

    :cond_29
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Other cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    instance-of v1, p1, Lorg/slf4j/Marker;

    .line 11
    if-nez v1, :cond_d

    .line 13
    return v0

    .line 14
    :cond_d
    check-cast p1, Lorg/slf4j/Marker;

    .line 16
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    .line 18
    invoke-interface {p1}, Lorg/slf4j/Marker;->getName()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hasChildren()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public declared-synchronized hasReferences()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    .line 4
    if-eqz v0, :cond_d

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    .line 10
    if-lez v0, :cond_d

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    monitor-exit p0

    .line 16
    return v0

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    .line 4
    if-eqz v0, :cond_b

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_15

    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :cond_b
    :try_start_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_15

    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public declared-synchronized remove(Lorg/slf4j/Marker;)Z
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_8

    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_8
    :try_start_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    move v2, v1

    .line 14
    :goto_d
    if-ge v2, v0, :cond_28

    .line 16
    iget-object v3, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lorg/slf4j/Marker;

    .line 24
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_25

    .line 30
    iget-object p1, p0, Lorg/slf4j/helpers/BasicMarker;->referenceList:Ljava/util/List;

    .line 32
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    .line 35
    monitor-exit p0

    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_d

    .line 41
    :cond_28
    monitor-exit p0

    .line 42
    return v1

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    monitor-exit p0

    .line 45
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->hasReferences()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->getName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lorg/slf4j/helpers/BasicMarker;->getName()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    const/16 v2, 0x20

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    sget-object v2, Lorg/slf4j/helpers/BasicMarker;->OPEN:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_41

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lorg/slf4j/Marker;

    .line 47
    invoke-interface {v2}, Lorg/slf4j/Marker;->getName()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_22

    .line 60
    sget-object v2, Lorg/slf4j/helpers/BasicMarker;->SEP:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_22

    .line 66
    :cond_41
    sget-object v0, Lorg/slf4j/helpers/BasicMarker;->CLOSE:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
