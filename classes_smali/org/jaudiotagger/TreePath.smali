.class public Lorg/jaudiotagger/TreePath;
.super Ljava/lang/Object;
.source "TreePath.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient lastPathComponent:Ljava/lang/Object;

.field private parentPath:Lorg/jaudiotagger/TreePath;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    .line 8
    iput-object p1, p0, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/TreePath;->parentPath:Lorg/jaudiotagger/TreePath;

    return-void

    .line 10
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "path in TreePath must be non null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/TreePath;Ljava/lang/Object;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_a

    .line 12
    iput-object p1, p0, Lorg/jaudiotagger/TreePath;->parentPath:Lorg/jaudiotagger/TreePath;

    .line 13
    iput-object p2, p0, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    return-void

    .line 14
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "path in TreePath must be non null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1c

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_1c

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 4
    array-length v0, p1

    if-le v0, v1, :cond_1b

    .line 5
    new-instance v0, Lorg/jaudiotagger/TreePath;

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-direct {v0, p1, v2}, Lorg/jaudiotagger/TreePath;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/jaudiotagger/TreePath;->parentPath:Lorg/jaudiotagger/TreePath;

    :cond_1b
    return-void

    .line 6
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "path in TreePath must be non null and not empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p2, -0x1

    .line 16
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    const/4 v1, 0x1

    if-le p2, v1, :cond_13

    .line 17
    new-instance p2, Lorg/jaudiotagger/TreePath;

    invoke-direct {p2, p1, v0}, Lorg/jaudiotagger/TreePath;-><init>([Ljava/lang/Object;I)V

    iput-object p2, p0, Lorg/jaudiotagger/TreePath;->parentPath:Lorg/jaudiotagger/TreePath;

    :cond_13
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/util/Vector;

    .line 10
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_23

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "lastPathComponent"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_23

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 36
    :cond_23
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 9
    iget-object v1, p0, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    instance-of v1, v1, Ljava/io/Serializable;

    .line 15
    if-eqz v1, :cond_1a

    .line 17
    const-string v1, "lastPathComponent"

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 27
    :cond_1a
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lorg/jaudiotagger/TreePath;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2a

    .line 10
    check-cast p1, Lorg/jaudiotagger/TreePath;

    .line 12
    invoke-virtual {p0}, Lorg/jaudiotagger/TreePath;->getPathCount()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Lorg/jaudiotagger/TreePath;->getPathCount()I

    .line 19
    move-result v3

    .line 20
    if-eq v1, v3, :cond_16

    .line 22
    return v2

    .line 23
    :cond_16
    move-object v1, p0

    .line 24
    :goto_17
    if-eqz v1, :cond_29

    .line 26
    iget-object v3, v1, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 28
    iget-object v4, p1, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_24

    .line 36
    return v2

    .line 37
    :cond_24
    iget-object p1, p1, Lorg/jaudiotagger/TreePath;->parentPath:Lorg/jaudiotagger/TreePath;

    .line 39
    iget-object v1, v1, Lorg/jaudiotagger/TreePath;->parentPath:Lorg/jaudiotagger/TreePath;

    .line 41
    goto :goto_17

    .line 42
    :cond_29
    return v0

    .line 43
    :cond_2a
    return v2
.end method

.method public getLastPathComponent()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getParentPath()Lorg/jaudiotagger/TreePath;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/TreePath;->parentPath:Lorg/jaudiotagger/TreePath;

    .line 3
    return-object v0
.end method

.method public getPath()[Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/TreePath;->getPathCount()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    move-object v2, p0

    .line 10
    :goto_9
    if-eqz v2, :cond_15

    .line 12
    add-int/lit8 v3, v1, -0x1

    .line 14
    iget-object v4, v2, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 16
    aput-object v4, v0, v1

    .line 18
    iget-object v2, v2, Lorg/jaudiotagger/TreePath;->parentPath:Lorg/jaudiotagger/TreePath;

    .line 20
    move v1, v3

    .line 21
    goto :goto_9

    .line 22
    :cond_15
    return-object v0
.end method

.method public getPathComponent(I)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/TreePath;->getPathCount()I

    .line 4
    move-result v0

    .line 5
    if-ltz p1, :cond_15

    .line 7
    if-ge p1, v0, :cond_15

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    move-object v1, p0

    .line 12
    :goto_b
    if-eq v0, p1, :cond_12

    .line 14
    iget-object v1, v1, Lorg/jaudiotagger/TreePath;->parentPath:Lorg/jaudiotagger/TreePath;

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 18
    goto :goto_b

    .line 19
    :cond_12
    iget-object p1, v1, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 21
    return-object p1

    .line 22
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v1, "Index "

    .line 26
    const-string v2, " is out of the specified range"

    .line 28
    invoke-static {v1, p1, v2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
.end method

.method public getPathCount()I
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    :goto_2
    if-eqz v1, :cond_9

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 7
    iget-object v1, v1, Lorg/jaudiotagger/TreePath;->parentPath:Lorg/jaudiotagger/TreePath;

    .line 9
    goto :goto_2

    .line 10
    :cond_9
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isDescendant(Lorg/jaudiotagger/TreePath;)Z
    .registers 5

    .line 1
    if-ne p1, p0, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_21

    .line 8
    invoke-virtual {p0}, Lorg/jaudiotagger/TreePath;->getPathCount()I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Lorg/jaudiotagger/TreePath;->getPathCount()I

    .line 15
    move-result v2

    .line 16
    if-ge v2, v1, :cond_12

    .line 18
    return v0

    .line 19
    :cond_12
    :goto_12
    add-int/lit8 v0, v2, -0x1

    .line 21
    if-le v2, v1, :cond_1c

    .line 23
    invoke-virtual {p1}, Lorg/jaudiotagger/TreePath;->getParentPath()Lorg/jaudiotagger/TreePath;

    .line 26
    move-result-object p1

    .line 27
    move v2, v0

    .line 28
    goto :goto_12

    .line 29
    :cond_1c
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/TreePath;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_21
    return v0
.end method

.method public pathByAddingChild(Ljava/lang/Object;)Lorg/jaudiotagger/TreePath;
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 3
    new-instance v0, Lorg/jaudiotagger/TreePath;

    .line 5
    invoke-direct {v0, p0, p1}, Lorg/jaudiotagger/TreePath;-><init>(Lorg/jaudiotagger/TreePath;Ljava/lang/Object;)V

    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    .line 11
    const-string v0, "Null child not allowed"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    const-string v1, "["

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lorg/jaudiotagger/TreePath;->getPathCount()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-ge v2, v1, :cond_1f

    .line 15
    if-lez v2, :cond_15

    .line 17
    const-string v3, ", "

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    :cond_15
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/TreePath;->getPathComponent(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_c

    .line 32
    :cond_1f
    const-string v1, "]"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
