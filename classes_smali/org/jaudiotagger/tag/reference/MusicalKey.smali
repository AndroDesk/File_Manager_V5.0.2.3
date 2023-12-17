.class public final enum Lorg/jaudiotagger/tag/reference/MusicalKey;
.super Ljava/lang/Enum;
.source "MusicalKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/reference/MusicalKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/reference/MusicalKey;

.field public static final enum FLAT:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field private static final MAX_KEY_LENGTH:I = 0x3

.field public static final enum MINOR:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_A:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_B:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_C:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_D:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_E:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_F:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_G:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field public static final enum OFF_KEY:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field public static final enum SHARP:Lorg/jaudiotagger/tag/reference/MusicalKey;

.field private static final groundKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/reference/MusicalKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final halfKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/reference/MusicalKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 17

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 3
    const-string v1, "NOTE_A"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "A"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lorg/jaudiotagger/tag/reference/MusicalKey;->NOTE_A:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 13
    new-instance v1, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 15
    const-string v3, "NOTE_B"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "B"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lorg/jaudiotagger/tag/reference/MusicalKey;->NOTE_B:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 25
    new-instance v3, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 27
    const-string v5, "NOTE_C"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "C"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lorg/jaudiotagger/tag/reference/MusicalKey;->NOTE_C:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 37
    new-instance v5, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 39
    const-string v7, "NOTE_D"

    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "D"

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v5, Lorg/jaudiotagger/tag/reference/MusicalKey;->NOTE_D:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 49
    new-instance v7, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 51
    const-string v9, "NOTE_E"

    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "E"

    .line 56
    invoke-direct {v7, v9, v10, v11}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    sput-object v7, Lorg/jaudiotagger/tag/reference/MusicalKey;->NOTE_E:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 61
    new-instance v9, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 63
    const-string v11, "NOTE_F"

    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "F"

    .line 68
    invoke-direct {v9, v11, v12, v13}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    sput-object v9, Lorg/jaudiotagger/tag/reference/MusicalKey;->NOTE_F:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 73
    new-instance v11, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 75
    const-string v13, "NOTE_G"

    .line 77
    const/4 v14, 0x6

    .line 78
    const-string v15, "G"

    .line 80
    invoke-direct {v11, v13, v14, v15}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    sput-object v11, Lorg/jaudiotagger/tag/reference/MusicalKey;->NOTE_G:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 85
    new-instance v13, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 87
    const-string v15, "FLAT"

    .line 89
    const/4 v14, 0x7

    .line 90
    const-string v12, "b"

    .line 92
    invoke-direct {v13, v15, v14, v12}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    sput-object v13, Lorg/jaudiotagger/tag/reference/MusicalKey;->FLAT:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 97
    new-instance v12, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 99
    const-string v15, "SHARP"

    .line 101
    const/16 v14, 0x8

    .line 103
    const-string v10, "#"

    .line 105
    invoke-direct {v12, v15, v14, v10}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    sput-object v12, Lorg/jaudiotagger/tag/reference/MusicalKey;->SHARP:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 110
    new-instance v10, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 112
    const-string v15, "MINOR"

    .line 114
    const/16 v14, 0x9

    .line 116
    const-string v8, "m"

    .line 118
    invoke-direct {v10, v15, v14, v8}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    sput-object v10, Lorg/jaudiotagger/tag/reference/MusicalKey;->MINOR:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 123
    new-instance v8, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 125
    const-string v15, "OFF_KEY"

    .line 127
    const/16 v14, 0xa

    .line 129
    const-string v6, "o"

    .line 131
    invoke-direct {v8, v15, v14, v6}, Lorg/jaudiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    sput-object v8, Lorg/jaudiotagger/tag/reference/MusicalKey;->OFF_KEY:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 136
    const/16 v6, 0xb

    .line 138
    new-array v6, v6, [Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 140
    aput-object v0, v6, v2

    .line 142
    aput-object v1, v6, v4

    .line 144
    const/4 v15, 0x2

    .line 145
    aput-object v3, v6, v15

    .line 147
    const/4 v15, 0x3

    .line 148
    aput-object v5, v6, v15

    .line 150
    const/4 v15, 0x4

    .line 151
    aput-object v7, v6, v15

    .line 153
    const/4 v15, 0x5

    .line 154
    aput-object v9, v6, v15

    .line 156
    const/4 v15, 0x6

    .line 157
    aput-object v11, v6, v15

    .line 159
    const/16 v16, 0x7

    .line 161
    aput-object v13, v6, v16

    .line 163
    const/16 v13, 0x8

    .line 165
    aput-object v12, v6, v13

    .line 167
    const/16 v12, 0x9

    .line 169
    aput-object v10, v6, v12

    .line 171
    aput-object v8, v6, v14

    .line 173
    sput-object v6, Lorg/jaudiotagger/tag/reference/MusicalKey;->$VALUES:[Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 175
    new-array v6, v15, [Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 177
    aput-object v1, v6, v2

    .line 179
    aput-object v3, v6, v4

    .line 181
    const/4 v1, 0x2

    .line 182
    aput-object v5, v6, v1

    .line 184
    const/4 v1, 0x3

    .line 185
    aput-object v7, v6, v1

    .line 187
    const/4 v1, 0x4

    .line 188
    aput-object v9, v6, v1

    .line 190
    const/4 v1, 0x5

    .line 191
    aput-object v11, v6, v1

    .line 193
    invoke-static {v0, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 196
    move-result-object v0

    .line 197
    new-instance v1, Ljava/util/HashMap;

    .line 199
    invoke-static {}, Lorg/jaudiotagger/tag/reference/MusicalKey;->values()[Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 202
    move-result-object v2

    .line 203
    array-length v2, v2

    .line 204
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 207
    sput-object v1, Lorg/jaudiotagger/tag/reference/MusicalKey;->groundKeyMap:Ljava/util/HashMap;

    .line 209
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 212
    move-result-object v0

    .line 213
    :goto_d4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_ea

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 225
    sget-object v2, Lorg/jaudiotagger/tag/reference/MusicalKey;->groundKeyMap:Ljava/util/HashMap;

    .line 227
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/reference/MusicalKey;->getValue()Ljava/lang/String;

    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    goto :goto_d4

    .line 235
    :cond_ea
    sget-object v0, Lorg/jaudiotagger/tag/reference/MusicalKey;->FLAT:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 237
    sget-object v1, Lorg/jaudiotagger/tag/reference/MusicalKey;->SHARP:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 239
    sget-object v2, Lorg/jaudiotagger/tag/reference/MusicalKey;->MINOR:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 241
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 244
    move-result-object v0

    .line 245
    new-instance v1, Ljava/util/HashMap;

    .line 247
    invoke-static {}, Lorg/jaudiotagger/tag/reference/MusicalKey;->values()[Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 250
    move-result-object v2

    .line 251
    array-length v2, v2

    .line 252
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 255
    sput-object v1, Lorg/jaudiotagger/tag/reference/MusicalKey;->halfKeyMap:Ljava/util/HashMap;

    .line 257
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 260
    move-result-object v0

    .line 261
    :goto_104
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_11a

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    move-result-object v1

    .line 271
    check-cast v1, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 273
    sget-object v2, Lorg/jaudiotagger/tag/reference/MusicalKey;->halfKeyMap:Ljava/util/HashMap;

    .line 275
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/reference/MusicalKey;->getValue()Ljava/lang/String;

    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    goto :goto_104

    .line 283
    :cond_11a
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lorg/jaudiotagger/tag/reference/MusicalKey;->value:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_64

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x3

    .line 9
    if-gt v1, v2, :cond_64

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_11

    .line 17
    goto :goto_64

    .line 18
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    move-result v1

    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne v1, v3, :cond_25

    .line 25
    sget-object v1, Lorg/jaudiotagger/tag/reference/MusicalKey;->OFF_KEY:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 27
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/reference/MusicalKey;->getValue()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_25

    .line 37
    return v3

    .line 38
    :cond_25
    sget-object v1, Lorg/jaudiotagger/tag/reference/MusicalKey;->groundKeyMap:Ljava/util/HashMap;

    .line 40
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_32

    .line 50
    return v0

    .line 51
    :cond_32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 54
    move-result v1

    .line 55
    const/4 v4, 0x2

    .line 56
    if-eq v1, v4, :cond_3f

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 61
    move-result v1

    .line 62
    if-ne v1, v2, :cond_4c

    .line 64
    :cond_3f
    sget-object v1, Lorg/jaudiotagger/tag/reference/MusicalKey;->halfKeyMap:Ljava/util/HashMap;

    .line 66
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_4c

    .line 76
    return v0

    .line 77
    :cond_4c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 80
    move-result v1

    .line 81
    if-ne v1, v2, :cond_63

    .line 83
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    sget-object v1, Lorg/jaudiotagger/tag/reference/MusicalKey;->MINOR:Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 89
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/reference/MusicalKey;->getValue()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_63

    .line 99
    return v0

    .line 100
    :cond_63
    return v3

    .line 101
    :cond_64
    :goto_64
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/reference/MusicalKey;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/tag/reference/MusicalKey;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/reference/MusicalKey;->$VALUES:[Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/reference/MusicalKey;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/tag/reference/MusicalKey;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/reference/MusicalKey;->value:Ljava/lang/String;

    .line 3
    return-object v0
.end method
