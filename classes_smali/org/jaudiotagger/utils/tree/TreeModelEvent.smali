.class public Lorg/jaudiotagger/utils/tree/TreeModelEvent;
.super Ljava/util/EventObject;
.source "TreeModelEvent.java"


# instance fields
.field public childIndices:[I

.field public children:[Ljava/lang/Object;

.field public path:Lorg/jaudiotagger/utils/tree/TreePath;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object p2, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 9
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;[I[Ljava/lang/Object;)V
    .registers 5

    .line 2
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    .line 4
    iput-object p3, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    .line 5
    iput-object p4, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4

    .line 6
    new-instance v0, Lorg/jaudiotagger/utils/tree/TreePath;

    invoke-direct {v0, p2}, Lorg/jaudiotagger/utils/tree/TreePath;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .registers 6

    .line 1
    new-instance v0, Lorg/jaudiotagger/utils/tree/TreePath;

    invoke-direct {v0, p2}, Lorg/jaudiotagger/utils/tree/TreePath;-><init>([Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/jaudiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/jaudiotagger/utils/tree/TreePath;[I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getChildIndices()[I
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    .line 3
    if-eqz v0, :cond_c

    .line 5
    array-length v1, v0

    .line 6
    new-array v2, v1, [I

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    return-object v2

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public getChildren()[Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    array-length v1, v0

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    return-object v2

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public getPath()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/TreePath;->getPath()[Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getTreePath()Lorg/jaudiotagger/utils/tree/TreePath;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, " "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 30
    move-result v3

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    .line 47
    if-eqz v1, :cond_42

    .line 49
    const-string v1, " path "

    .line 51
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v1

    .line 55
    iget-object v3, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->path:Lorg/jaudiotagger/utils/tree/TreePath;

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_42
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    .line 69
    const-string v3, "]"

    .line 71
    const/4 v4, 0x0

    .line 72
    if-eqz v1, :cond_74

    .line 74
    const-string v1, " indices [ "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    move v1, v4

    .line 80
    :goto_4f
    iget-object v5, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    .line 82
    array-length v5, v5

    .line 83
    if-ge v1, v5, :cond_71

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    iget-object v6, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->childIndices:[I

    .line 92
    aget v6, v6, v1

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 113
    goto :goto_4f

    .line 114
    :cond_71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :cond_74
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    .line 119
    if-eqz v1, :cond_9e

    .line 121
    const-string v1, " children [ "

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :goto_7d
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    .line 128
    array-length v1, v1

    .line 129
    if-ge v4, v1, :cond_9b

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    iget-object v5, p0, Lorg/jaudiotagger/utils/tree/TreeModelEvent;->children:[Ljava/lang/Object;

    .line 138
    aget-object v5, v5, v4

    .line 140
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v4, v4, 0x1

    .line 155
    goto :goto_7d

    .line 156
    :cond_9b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    :cond_9e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    return-object v0
.end method
