.class public Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;
.super Ljava/lang/Object;
.source "AsfExtHeaderModifier.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkModifier;


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final modifierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/asf/io/ChunkModifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/asf/io/ChunkModifier;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;->modifierList:Ljava/util/List;

    .line 11
    return-void
.end method

.method private copyChunk(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8

    .line 1
    invoke-static {p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 12
    invoke-static {v0, v1, p3}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 15
    const-wide/16 v2, 0x18

    .line 17
    sub-long/2addr v0, v2

    .line 18
    invoke-static {p2, p3, v0, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 21
    return-void
.end method


# virtual methods
.method public isApplicable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p3

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    .line 9
    iget-object v5, v0, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;->modifierList:Ljava/util/List;

    .line 11
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    new-instance v5, Ljava/util/HashSet;

    .line 16
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 19
    move-object/from16 v6, p1

    .line 21
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    .line 27
    move-result-object v6

    .line 28
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 31
    move-result-object v7

    .line 32
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 35
    move-result v8

    .line 36
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 39
    move-result-wide v9

    .line 40
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    .line 42
    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    new-instance v12, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;

    .line 47
    move-object/from16 v13, p2

    .line 49
    invoke-direct {v12, v13}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    :goto_33
    invoke-virtual {v12}, Lorg/jaudiotagger/audio/asf/io/CountingInputStream;->getReadCount()J

    .line 55
    move-result-wide v13

    .line 56
    cmp-long v13, v13, v9

    .line 58
    const/4 v14, 0x0

    .line 59
    if-gez v13, :cond_81

    .line 61
    invoke-static {v12}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 64
    move-result-object v13

    .line 65
    move-wide/from16 v16, v9

    .line 67
    move v15, v14

    .line 68
    :goto_43
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v9

    .line 72
    if-ge v14, v9, :cond_76

    .line 74
    if-nez v15, :cond_76

    .line 76
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;

    .line 82
    invoke-interface {v9, v13}, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;->isApplicable(Lorg/jaudiotagger/audio/asf/data/GUID;)Z

    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_73

    .line 88
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v9

    .line 92
    check-cast v9, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;

    .line 94
    invoke-interface {v9, v13, v12, v11}, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;->modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getByteDifference()J

    .line 101
    move-result-wide v18

    .line 102
    add-long v2, v2, v18

    .line 104
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getOccuredGUIDs()Ljava/util/Set;

    .line 107
    move-result-object v9

    .line 108
    invoke-interface {v5, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    const/4 v9, 0x1

    .line 115
    move v15, v9

    .line 116
    :cond_73
    add-int/lit8 v14, v14, 0x1

    .line 118
    goto :goto_43

    .line 119
    :cond_76
    if-nez v15, :cond_7e

    .line 121
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-direct {v0, v13, v12, v11}, Lorg/jaudiotagger/audio/asf/io/AsfExtHeaderModifier;->copyChunk(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 127
    :cond_7e
    move-wide/from16 v9, v16

    .line 129
    goto :goto_33

    .line 130
    :cond_81
    move-wide/from16 v16, v9

    .line 132
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v4

    .line 136
    :goto_87
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v9

    .line 140
    if-eqz v9, :cond_a5

    .line 142
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v9

    .line 146
    check-cast v9, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;

    .line 148
    const/4 v10, 0x0

    .line 149
    invoke-interface {v9, v10, v10, v11}, Lorg/jaudiotagger/audio/asf/io/ChunkModifier;->modify(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getByteDifference()J

    .line 156
    move-result-wide v12

    .line 157
    add-long/2addr v2, v12

    .line 158
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;->getOccuredGUIDs()Ljava/util/Set;

    .line 161
    move-result-object v9

    .line 162
    invoke-interface {v5, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 165
    goto :goto_87

    .line 166
    :cond_a5
    sget-object v4, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 168
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 175
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    .line 186
    move-result-wide v9

    .line 187
    invoke-static {v9, v10, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 190
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/asf/data/GUID;->getBytes()[B

    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 197
    invoke-static {v8, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 200
    add-long v9, v16, v2

    .line 202
    invoke-static {v9, v10, v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 205
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 212
    new-instance v1, Lorg/jaudiotagger/audio/asf/io/ModificationResult;

    .line 214
    invoke-direct {v1, v14, v2, v3, v5}, Lorg/jaudiotagger/audio/asf/io/ModificationResult;-><init>(IJLjava/util/Set;)V

    .line 217
    return-object v1
.end method
