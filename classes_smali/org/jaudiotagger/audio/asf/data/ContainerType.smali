.class public final enum Lorg/jaudiotagger/audio/asf/data/ContainerType;
.super Ljava/lang/Enum;
.source "ContainerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/asf/data/ContainerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/asf/data/ContainerType;

.field public static final enum CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/ContainerType;

.field public static final enum CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/ContainerType;

.field public static final enum EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

.field public static final enum METADATA_LIBRARY_OBJECT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

.field public static final enum METADATA_OBJECT:Lorg/jaudiotagger/audio/asf/data/ContainerType;


# instance fields
.field private final containerGUID:Lorg/jaudiotagger/audio/asf/data/GUID;

.field private final guidEnabled:Z

.field private final languageEnabled:Z

.field private final maximumDataLength:Ljava/math/BigInteger;

.field private final multiValued:Z

.field private final perfMaxDataLen:J

.field private final streamEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 28

    .line 1
    new-instance v9, Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    sget-object v3, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 5
    const-string v1, "CONTENT_BRANDING"

    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v4, 0x20

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    move-object v0, v9

    .line 15
    invoke-direct/range {v0 .. v8}, Lorg/jaudiotagger/audio/asf/data/ContainerType;-><init>(Ljava/lang/String;ILorg/jaudiotagger/audio/asf/data/GUID;IZZZZ)V

    .line 18
    sput-object v9, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 20
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 22
    sget-object v13, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 24
    const-string v11, "CONTENT_DESCRIPTION"

    .line 26
    const/4 v12, 0x1

    .line 27
    const/16 v14, 0x10

    .line 29
    const/4 v15, 0x0

    .line 30
    const/16 v16, 0x0

    .line 32
    const/16 v17, 0x0

    .line 34
    const/16 v18, 0x0

    .line 36
    move-object v10, v0

    .line 37
    invoke-direct/range {v10 .. v18}, Lorg/jaudiotagger/audio/asf/data/ContainerType;-><init>(Ljava/lang/String;ILorg/jaudiotagger/audio/asf/data/GUID;IZZZZ)V

    .line 40
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 42
    new-instance v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 44
    sget-object v22, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 46
    const-string v20, "EXTENDED_CONTENT"

    .line 48
    const/16 v21, 0x2

    .line 50
    const/16 v23, 0x10

    .line 52
    const/16 v24, 0x0

    .line 54
    const/16 v25, 0x0

    .line 56
    const/16 v26, 0x0

    .line 58
    const/16 v27, 0x0

    .line 60
    move-object/from16 v19, v1

    .line 62
    invoke-direct/range {v19 .. v27}, Lorg/jaudiotagger/audio/asf/data/ContainerType;-><init>(Ljava/lang/String;ILorg/jaudiotagger/audio/asf/data/GUID;IZZZZ)V

    .line 65
    sput-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 67
    new-instance v2, Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 69
    sget-object v13, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 71
    const-string v11, "METADATA_LIBRARY_OBJECT"

    .line 73
    const/4 v12, 0x3

    .line 74
    const/16 v14, 0x20

    .line 76
    const/4 v15, 0x1

    .line 77
    const/16 v16, 0x1

    .line 79
    const/16 v17, 0x1

    .line 81
    const/16 v18, 0x1

    .line 83
    move-object v10, v2

    .line 84
    invoke-direct/range {v10 .. v18}, Lorg/jaudiotagger/audio/asf/data/ContainerType;-><init>(Ljava/lang/String;ILorg/jaudiotagger/audio/asf/data/GUID;IZZZZ)V

    .line 87
    sput-object v2, Lorg/jaudiotagger/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 89
    new-instance v3, Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 91
    sget-object v22, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_METADATA:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 93
    const-string v20, "METADATA_OBJECT"

    .line 95
    const/16 v21, 0x4

    .line 97
    const/16 v25, 0x1

    .line 99
    const/16 v27, 0x1

    .line 101
    move-object/from16 v19, v3

    .line 103
    invoke-direct/range {v19 .. v27}, Lorg/jaudiotagger/audio/asf/data/ContainerType;-><init>(Ljava/lang/String;ILorg/jaudiotagger/audio/asf/data/GUID;IZZZZ)V

    .line 106
    sput-object v3, Lorg/jaudiotagger/audio/asf/data/ContainerType;->METADATA_OBJECT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 108
    const/4 v4, 0x5

    .line 109
    new-array v4, v4, [Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 111
    aput-object v9, v4, v5

    .line 113
    const/4 v5, 0x1

    .line 114
    aput-object v0, v4, v5

    .line 116
    const/4 v0, 0x2

    .line 117
    aput-object v1, v4, v0

    .line 119
    const/4 v0, 0x3

    .line 120
    aput-object v2, v4, v0

    .line 122
    const/4 v0, 0x4

    .line 123
    aput-object v3, v4, v0

    .line 125
    sput-object v4, Lorg/jaudiotagger/audio/asf/data/ContainerType;->$VALUES:[Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 127
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/jaudiotagger/audio/asf/data/GUID;IZZZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/audio/asf/data/GUID;",
            "IZZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->containerGUID:Lorg/jaudiotagger/audio/asf/data/GUID;

    const-wide/16 p1, 0x2

    .line 3
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->maximumDataLength:Ljava/math/BigInteger;

    const-wide p2, 0x7fffffffffffffffL

    .line 4
    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gtz p2, :cond_2d

    .line 5
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->perfMaxDataLen:J

    goto :goto_31

    :cond_2d
    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->perfMaxDataLen:J

    .line 7
    :goto_31
    iput-boolean p5, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->guidEnabled:Z

    .line 8
    iput-boolean p6, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->streamEnabled:Z

    .line 9
    iput-boolean p7, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->languageEnabled:Z

    .line 10
    iput-boolean p8, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->multiValued:Z

    return-void
.end method

.method public static areInCorrectOrder(Lorg/jaudiotagger/audio/asf/data/ContainerType;Lorg/jaudiotagger/audio/asf/data/ContainerType;)Z
    .registers 3

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getOrdered()[Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 12
    move-result p0

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 16
    move-result p1

    .line 17
    if-gt p0, p1, :cond_14

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p0, 0x0

    .line 22
    :goto_15
    return p0
.end method

.method public static getOrdered()[Lorg/jaudiotagger/audio/asf/data/ContainerType;
    .registers 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 4
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 14
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->EXTENDED_CONTENT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 19
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->METADATA_OBJECT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 24
    sget-object v1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->METADATA_LIBRARY_OBJECT:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 29
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/asf/data/ContainerType;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/audio/asf/data/ContainerType;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->$VALUES:[Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/asf/data/ContainerType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public assertConstraints(Ljava/lang/String;[BIII)V
    .registers 6

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->checkConstraints(Ljava/lang/String;[BIII)Ljava/lang/RuntimeException;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    throw p1
.end method

.method public checkConstraints(Ljava/lang/String;[BIII)Ljava/lang/RuntimeException;
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_27

    .line 5
    if-nez p2, :cond_7

    .line 7
    goto :goto_27

    .line 8
    :cond_7
    invoke-static {p1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isStringLengthValidNullSafe(Ljava/lang/String;)Z

    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_25

    .line 14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 16
    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_STRING_IS_TOO_LARGE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 18
    new-array v4, v1, [Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    aput-object p1, v4, v0

    .line 30
    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    goto :goto_2e

    .line 38
    :cond_25
    const/4 v2, 0x0

    .line 39
    goto :goto_2e

    .line 40
    :cond_27
    :goto_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 42
    const-string p1, "Arguments must not be null."

    .line 44
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    :goto_2e
    const/4 p1, 0x2

    .line 48
    const/4 v3, 0x3

    .line 49
    if-nez v2, :cond_5e

    .line 51
    array-length v4, p2

    .line 52
    int-to-long v4, v4

    .line 53
    invoke-virtual {p0, v4, v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->isWithinValueRange(J)Z

    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_5e

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 61
    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_DATA_IS_TOO_LARGE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 63
    new-array v5, v3, [Ljava/lang/Object;

    .line 65
    array-length p2, p2

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p2

    .line 70
    aput-object p2, v5, v0

    .line 72
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getMaximumDataLength()Ljava/math/BigInteger;

    .line 75
    move-result-object p2

    .line 76
    aput-object p2, v5, v1

    .line 78
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    aput-object p2, v5, p1

    .line 88
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    invoke-direct {v2, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    :cond_5e
    const-string p2, "0"

    .line 97
    const/16 v4, 0x7f

    .line 99
    if-nez v2, :cond_9a

    .line 101
    if-ltz p4, :cond_70

    .line 103
    if-gt p4, v4, :cond_70

    .line 105
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->isStreamNumberEnabled()Z

    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_9a

    .line 111
    if-eqz p4, :cond_9a

    .line 113
    :cond_70
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->isStreamNumberEnabled()Z

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_79

    .line 119
    const-string v2, "0 to 127"

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move-object v2, p2

    .line 123
    :goto_7a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 125
    sget-object v6, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_INVALID_STREAM_REFERNCE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 127
    new-array v7, v3, [Ljava/lang/Object;

    .line 129
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object p4

    .line 133
    aput-object p4, v7, v0

    .line 135
    aput-object v2, v7, v1

    .line 137
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 140
    move-result-object p4

    .line 141
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    .line 144
    move-result-object p4

    .line 145
    aput-object p4, v7, p1

    .line 147
    invoke-virtual {v6, v7}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    move-result-object p4

    .line 151
    invoke-direct {v5, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    move-object v2, v5

    .line 155
    :cond_9a
    if-nez v2, :cond_bc

    .line 157
    const/4 p4, 0x6

    .line 158
    if-ne p3, p4, :cond_bc

    .line 160
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->isGuidEnabled()Z

    .line 163
    move-result p4

    .line 164
    if-nez p4, :cond_bc

    .line 166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 168
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_INVALID_GUID_USE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 170
    new-array v5, v1, [Ljava/lang/Object;

    .line 172
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    .line 179
    move-result-object v6

    .line 180
    aput-object v6, v5, v0

    .line 182
    invoke-virtual {p4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    move-result-object p4

    .line 186
    invoke-direct {v2, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    :cond_bc
    if-nez v2, :cond_f1

    .line 191
    if-eqz p5, :cond_c6

    .line 193
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->isLanguageEnabled()Z

    .line 196
    move-result p4

    .line 197
    if-eqz p4, :cond_ca

    .line 199
    :cond_c6
    if-ltz p5, :cond_ca

    .line 201
    if-lt p5, v4, :cond_f1

    .line 203
    :cond_ca
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->isStreamNumberEnabled()Z

    .line 206
    move-result p4

    .line 207
    if-eqz p4, :cond_d2

    .line 209
    const-string p2, "0 to 126"

    .line 211
    :cond_d2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 213
    sget-object p4, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_INVALID_LANGUAGE_USE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 215
    new-array v3, v3, [Ljava/lang/Object;

    .line 217
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object p5

    .line 221
    aput-object p5, v3, v0

    .line 223
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 226
    move-result-object p5

    .line 227
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/asf/data/GUID;->getDescription()Ljava/lang/String;

    .line 230
    move-result-object p5

    .line 231
    aput-object p5, v3, v1

    .line 233
    aput-object p2, v3, p1

    .line 235
    invoke-virtual {p4, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    move-result-object p1

    .line 239
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 242
    :cond_f1
    if-nez v2, :cond_104

    .line 244
    sget-object p1, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 246
    if-ne p0, p1, :cond_104

    .line 248
    if-eqz p3, :cond_104

    .line 250
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 252
    sget-object p1, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_ONLY_STRING_IN_CD:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 254
    invoke-virtual {p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 257
    move-result-object p1

    .line 258
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 261
    :cond_104
    return-object v2
.end method

.method public getContainerGUID()Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->containerGUID:Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 3
    return-object v0
.end method

.method public getMaximumDataLength()Ljava/math/BigInteger;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->maximumDataLength:Ljava/math/BigInteger;

    .line 3
    return-object v0
.end method

.method public isGuidEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->guidEnabled:Z

    .line 3
    return v0
.end method

.method public isLanguageEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->languageEnabled:Z

    .line 3
    return v0
.end method

.method public isMultiValued()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->multiValued:Z

    .line 3
    return v0
.end method

.method public isStreamNumberEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->streamEnabled:Z

    .line 3
    return v0
.end method

.method public isWithinValueRange(J)Z
    .registers 7

    .line 1
    iget-wide v0, p0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->perfMaxDataLen:J

    .line 3
    const-wide/16 v2, -0x1

    .line 5
    cmp-long v2, v0, v2

    .line 7
    if-eqz v2, :cond_c

    .line 9
    cmp-long v0, v0, p1

    .line 11
    if-ltz v0, :cond_14

    .line 13
    :cond_c
    const-wide/16 v0, 0x0

    .line 15
    cmp-long p1, p1, v0

    .line 17
    if-ltz p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    :goto_15
    return p1
.end method
