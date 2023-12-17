.class public Lorg/jaudiotagger/audio/asf/io/MetadataReader;
.super Ljava/lang/Object;
.source "MetadataReader.java"

# interfaces
.implements Lorg/jaudiotagger/audio/asf/io/ChunkReader;


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 7
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 10
    move-result-object v2

    .line 11
    aput-object v2, v0, v1

    .line 13
    const/4 v1, 0x1

    .line 14
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/ContainerType;->METADATA_OBJECT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 16
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 19
    move-result-object v2

    .line 20
    aput-object v2, v0, v1

    .line 22
    const/4 v1, 0x2

    .line 23
    sget-object v2, Lorg/jaudiotagger/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 25
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 28
    move-result-object v2

    .line 29
    aput-object v2, v0, v1

    .line 31
    sput-object v0, Lorg/jaudiotagger/audio/asf/io/MetadataReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readBoolean(Ljava/io/InputStream;I)Z
    .registers 7

    .line 1
    new-array v0, p2, [B

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 6
    const/4 p1, 0x0

    .line 7
    move v1, p1

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ge v1, p2, :cond_19

    .line 11
    add-int/lit8 v3, p2, -0x1

    .line 13
    if-ne v1, v3, :cond_16

    .line 15
    aget-byte v2, v0, v1

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v2, v3, :cond_15

    .line 20
    move v2, v3

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v2, p1

    .line 23
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_8

    .line 26
    :cond_19
    return v2
.end method


# virtual methods
.method public canFail()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getApplyingIds()[Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/io/MetadataReader;->APPLYING:[Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/GUID;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 9
    return-object v0
.end method

.method public read(Lorg/jaudiotagger/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/jaudiotagger/audio/asf/data/Chunk;
    .registers 21

    .line 1
    move-object/from16 v0, p2

    .line 3
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 9
    move-object/from16 v3, p1

    .line 11
    move-wide/from16 v4, p3

    .line 13
    invoke-direct {v2, v3, v4, v5, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 16
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 19
    move-result-object v1

    .line 20
    sget-object v3, Lorg/jaudiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 22
    if-ne v1, v3, :cond_19

    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v1, 0x0

    .line 27
    :goto_1a
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_1f
    if-ge v4, v3, :cond_c7

    .line 34
    if-nez v1, :cond_2c

    .line 36
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 39
    move-result v5

    .line 40
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 43
    move-result v6

    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    const/4 v6, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    :goto_2e
    move v12, v5

    .line 48
    move v11, v6

    .line 49
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 52
    move-result v5

    .line 53
    const/4 v6, 0x0

    .line 54
    if-eqz v1, :cond_3b

    .line 56
    invoke-static {v0, v5}, Lorg/jaudiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    :cond_3b
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 63
    move-result v13

    .line 64
    if-eqz v1, :cond_47

    .line 66
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 69
    move-result v7

    .line 70
    int-to-long v7, v7

    .line 71
    goto :goto_4b

    .line 72
    :cond_47
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 75
    move-result-wide v7

    .line 76
    :goto_4b
    move-wide v14, v7

    .line 77
    if-nez v1, :cond_54

    .line 79
    invoke-static {v0, v5}, Lorg/jaudiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    .line 82
    move-result-object v5

    .line 83
    move-object v9, v5

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move-object v9, v6

    .line 86
    :goto_55
    new-instance v5, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 88
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 91
    move-result-object v8

    .line 92
    move-object v7, v5

    .line 93
    move v10, v13

    .line 94
    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;III)V

    .line 97
    packed-switch v13, :pswitch_data_ca

    .line 100
    move-object/from16 v7, p0

    .line 102
    const-string v6, "Invalid datatype: "

    .line 104
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-result-object v6

    .line 108
    new-instance v8, Ljava/lang/String;

    .line 110
    invoke-static {v0, v14, v15}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    .line 113
    move-result-object v9

    .line 114
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 117
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 127
    goto :goto_c0

    .line 128
    :pswitch_7f  #0x6
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setGUIDValue(Lorg/jaudiotagger/audio/asf/data/GUID;)V

    .line 135
    goto :goto_9e

    .line 136
    :pswitch_87  #0x5
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 139
    move-result v6

    .line 140
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setWordValue(I)V

    .line 143
    goto :goto_9e

    .line 144
    :pswitch_8f  #0x4
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    .line 147
    move-result-wide v6

    .line 148
    invoke-virtual {v5, v6, v7}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setQWordValue(J)V

    .line 151
    goto :goto_9e

    .line 152
    :pswitch_97  #0x3
    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT32(Ljava/io/InputStream;)J

    .line 155
    move-result-wide v6

    .line 156
    invoke-virtual {v5, v6, v7}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    .line 159
    :goto_9e
    move-object/from16 v7, p0

    .line 161
    goto :goto_c0

    .line 162
    :pswitch_a1  #0x2
    long-to-int v6, v14

    .line 163
    move-object/from16 v7, p0

    .line 165
    invoke-direct {v7, v0, v6}, Lorg/jaudiotagger/audio/asf/io/MetadataReader;->readBoolean(Ljava/io/InputStream;I)Z

    .line 168
    move-result v6

    .line 169
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setBooleanValue(Z)V

    .line 172
    goto :goto_c0

    .line 173
    :pswitch_ac  #0x1
    move-object/from16 v7, p0

    .line 175
    invoke-static {v0, v14, v15}, Lorg/jaudiotagger/audio/asf/util/Utils;->readBinary(Ljava/io/InputStream;J)[B

    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    .line 182
    goto :goto_c0

    .line 183
    :pswitch_b6  #0x0
    move-object/from16 v7, p0

    .line 185
    long-to-int v6, v14

    .line 186
    invoke-static {v0, v6}, Lorg/jaudiotagger/audio/asf/util/Utils;->readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;

    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v5, v6}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 193
    :goto_c0
    invoke-virtual {v2, v5}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 196
    add-int/lit8 v4, v4, 0x1

    .line 198
    goto/16 :goto_1f

    .line 200
    :cond_c7
    move-object/from16 v7, p0

    .line 202
    return-object v2

    .line 203
    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_b6  #00000000
        :pswitch_ac  #00000001
        :pswitch_a1  #00000002
        :pswitch_97  #00000003
        :pswitch_8f  #00000004
        :pswitch_87  #00000005
        :pswitch_7f  #00000006
    .end packed-switch
.end method
