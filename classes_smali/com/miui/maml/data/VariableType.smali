.class public final enum Lcom/miui/maml/data/VariableType;
.super Ljava/lang/Enum;
.source "VariableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/VariableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/VariableType;

.field public static final enum BOOLEAN_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum BYTE_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum CHAR_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum DOUBLE_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum FLOAT_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum INT_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum INVALID:Lcom/miui/maml/data/VariableType;

.field public static final enum LONG_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum NUM:Lcom/miui/maml/data/VariableType;

.field public static final enum NUM_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum OBJ:Lcom/miui/maml/data/VariableType;

.field public static final enum OBJ_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum SHORT_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum STR:Lcom/miui/maml/data/VariableType;

.field public static final enum STR_ARR:Lcom/miui/maml/data/VariableType;


# instance fields
.field public final mTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 3
    const-class v1, Ljava/lang/String;

    .line 5
    new-instance v2, Lcom/miui/maml/data/VariableType;

    .line 7
    const-string v3, "INVALID"

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-direct {v2, v3, v4, v5}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 14
    sput-object v2, Lcom/miui/maml/data/VariableType;->INVALID:Lcom/miui/maml/data/VariableType;

    .line 16
    new-instance v3, Lcom/miui/maml/data/VariableType;

    .line 18
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 20
    const-string v6, "NUM"

    .line 22
    const/4 v7, 0x1

    .line 23
    invoke-direct {v3, v6, v7, v5}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 26
    sput-object v3, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 28
    new-instance v5, Lcom/miui/maml/data/VariableType;

    .line 30
    const-string v6, "STR"

    .line 32
    const/4 v8, 0x2

    .line 33
    invoke-direct {v5, v6, v8, v1}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 36
    sput-object v5, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    .line 38
    new-instance v6, Lcom/miui/maml/data/VariableType;

    .line 40
    const-string v9, "OBJ"

    .line 42
    const/4 v10, 0x3

    .line 43
    invoke-direct {v6, v9, v10, v0}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 46
    sput-object v6, Lcom/miui/maml/data/VariableType;->OBJ:Lcom/miui/maml/data/VariableType;

    .line 48
    new-instance v9, Lcom/miui/maml/data/VariableType;

    .line 50
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 52
    const-string v12, "NUM_ARR"

    .line 54
    const/4 v13, 0x4

    .line 55
    invoke-direct {v9, v12, v13, v11}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 58
    sput-object v9, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 60
    new-instance v11, Lcom/miui/maml/data/VariableType;

    .line 62
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 64
    const-string v14, "DOUBLE_ARR"

    .line 66
    const/4 v15, 0x5

    .line 67
    invoke-direct {v11, v14, v15, v12}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 70
    sput-object v11, Lcom/miui/maml/data/VariableType;->DOUBLE_ARR:Lcom/miui/maml/data/VariableType;

    .line 72
    new-instance v12, Lcom/miui/maml/data/VariableType;

    .line 74
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 76
    const-string v15, "FLOAT_ARR"

    .line 78
    const/4 v13, 0x6

    .line 79
    invoke-direct {v12, v15, v13, v14}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 82
    sput-object v12, Lcom/miui/maml/data/VariableType;->FLOAT_ARR:Lcom/miui/maml/data/VariableType;

    .line 84
    new-instance v14, Lcom/miui/maml/data/VariableType;

    .line 86
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 88
    const-string v13, "INT_ARR"

    .line 90
    const/4 v10, 0x7

    .line 91
    invoke-direct {v14, v13, v10, v15}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 94
    sput-object v14, Lcom/miui/maml/data/VariableType;->INT_ARR:Lcom/miui/maml/data/VariableType;

    .line 96
    new-instance v13, Lcom/miui/maml/data/VariableType;

    .line 98
    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 100
    const-string v10, "SHORT_ARR"

    .line 102
    const/16 v8, 0x8

    .line 104
    invoke-direct {v13, v10, v8, v15}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 107
    sput-object v13, Lcom/miui/maml/data/VariableType;->SHORT_ARR:Lcom/miui/maml/data/VariableType;

    .line 109
    new-instance v10, Lcom/miui/maml/data/VariableType;

    .line 111
    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 113
    const-string v8, "BYTE_ARR"

    .line 115
    const/16 v7, 0x9

    .line 117
    invoke-direct {v10, v8, v7, v15}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 120
    sput-object v10, Lcom/miui/maml/data/VariableType;->BYTE_ARR:Lcom/miui/maml/data/VariableType;

    .line 122
    new-instance v8, Lcom/miui/maml/data/VariableType;

    .line 124
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 126
    const-string v7, "LONG_ARR"

    .line 128
    const/16 v4, 0xa

    .line 130
    invoke-direct {v8, v7, v4, v15}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 133
    sput-object v8, Lcom/miui/maml/data/VariableType;->LONG_ARR:Lcom/miui/maml/data/VariableType;

    .line 135
    new-instance v7, Lcom/miui/maml/data/VariableType;

    .line 137
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 139
    const-string v4, "BOOLEAN_ARR"

    .line 141
    move-object/from16 v16, v8

    .line 143
    const/16 v8, 0xb

    .line 145
    invoke-direct {v7, v4, v8, v15}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 148
    sput-object v7, Lcom/miui/maml/data/VariableType;->BOOLEAN_ARR:Lcom/miui/maml/data/VariableType;

    .line 150
    new-instance v4, Lcom/miui/maml/data/VariableType;

    .line 152
    sget-object v15, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 154
    const-string v8, "CHAR_ARR"

    .line 156
    move-object/from16 v17, v7

    .line 158
    const/16 v7, 0xc

    .line 160
    invoke-direct {v4, v8, v7, v15}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 163
    sput-object v4, Lcom/miui/maml/data/VariableType;->CHAR_ARR:Lcom/miui/maml/data/VariableType;

    .line 165
    new-instance v8, Lcom/miui/maml/data/VariableType;

    .line 167
    const-string v15, "STR_ARR"

    .line 169
    const/16 v7, 0xd

    .line 171
    invoke-direct {v8, v15, v7, v1}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 174
    sput-object v8, Lcom/miui/maml/data/VariableType;->STR_ARR:Lcom/miui/maml/data/VariableType;

    .line 176
    new-instance v1, Lcom/miui/maml/data/VariableType;

    .line 178
    const-string v15, "OBJ_ARR"

    .line 180
    const/16 v7, 0xe

    .line 182
    invoke-direct {v1, v15, v7, v0}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 185
    sput-object v1, Lcom/miui/maml/data/VariableType;->OBJ_ARR:Lcom/miui/maml/data/VariableType;

    .line 187
    const/16 v0, 0xf

    .line 189
    new-array v0, v0, [Lcom/miui/maml/data/VariableType;

    .line 191
    const/4 v15, 0x0

    .line 192
    aput-object v2, v0, v15

    .line 194
    const/4 v2, 0x1

    .line 195
    aput-object v3, v0, v2

    .line 197
    const/4 v2, 0x2

    .line 198
    aput-object v5, v0, v2

    .line 200
    const/4 v2, 0x3

    .line 201
    aput-object v6, v0, v2

    .line 203
    const/4 v2, 0x4

    .line 204
    aput-object v9, v0, v2

    .line 206
    const/4 v2, 0x5

    .line 207
    aput-object v11, v0, v2

    .line 209
    const/4 v2, 0x6

    .line 210
    aput-object v12, v0, v2

    .line 212
    const/4 v2, 0x7

    .line 213
    aput-object v14, v0, v2

    .line 215
    const/16 v2, 0x8

    .line 217
    aput-object v13, v0, v2

    .line 219
    const/16 v2, 0x9

    .line 221
    aput-object v10, v0, v2

    .line 223
    const/16 v2, 0xa

    .line 225
    aput-object v16, v0, v2

    .line 227
    const/16 v2, 0xb

    .line 229
    aput-object v17, v0, v2

    .line 231
    const/16 v2, 0xc

    .line 233
    aput-object v4, v0, v2

    .line 235
    const/16 v2, 0xd

    .line 237
    aput-object v8, v0, v2

    .line 239
    aput-object v1, v0, v7

    .line 241
    sput-object v0, Lcom/miui/maml/data/VariableType;->$VALUES:[Lcom/miui/maml/data/VariableType;

    .line 243
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    .line 6
    return-void
.end method

.method public static parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;
    .registers 2

    .line 1
    const-string v0, "number"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    sget-object p0, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 11
    return-object p0

    .line 12
    :cond_b
    const-string v0, "string"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_16

    .line 20
    sget-object p0, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    .line 22
    return-object p0

    .line 23
    :cond_16
    const-string v0, "object"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_21

    .line 31
    sget-object p0, Lcom/miui/maml/data/VariableType;->OBJ:Lcom/miui/maml/data/VariableType;

    .line 33
    return-object p0

    .line 34
    :cond_21
    const-string v0, "number[]"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2c

    .line 42
    sget-object p0, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 44
    return-object p0

    .line 45
    :cond_2c
    const-string v0, "double[]"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_37

    .line 53
    sget-object p0, Lcom/miui/maml/data/VariableType;->DOUBLE_ARR:Lcom/miui/maml/data/VariableType;

    .line 55
    return-object p0

    .line 56
    :cond_37
    const-string v0, "float[]"

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_42

    .line 64
    sget-object p0, Lcom/miui/maml/data/VariableType;->FLOAT_ARR:Lcom/miui/maml/data/VariableType;

    .line 66
    return-object p0

    .line 67
    :cond_42
    const-string v0, "int[]"

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4d

    .line 75
    sget-object p0, Lcom/miui/maml/data/VariableType;->INT_ARR:Lcom/miui/maml/data/VariableType;

    .line 77
    return-object p0

    .line 78
    :cond_4d
    const-string v0, "short[]"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_58

    .line 86
    sget-object p0, Lcom/miui/maml/data/VariableType;->SHORT_ARR:Lcom/miui/maml/data/VariableType;

    .line 88
    return-object p0

    .line 89
    :cond_58
    const-string v0, "byte[]"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_63

    .line 97
    sget-object p0, Lcom/miui/maml/data/VariableType;->BYTE_ARR:Lcom/miui/maml/data/VariableType;

    .line 99
    return-object p0

    .line 100
    :cond_63
    const-string v0, "long[]"

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6e

    .line 108
    sget-object p0, Lcom/miui/maml/data/VariableType;->LONG_ARR:Lcom/miui/maml/data/VariableType;

    .line 110
    return-object p0

    .line 111
    :cond_6e
    const-string v0, "boolean[]"

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_79

    .line 119
    sget-object p0, Lcom/miui/maml/data/VariableType;->BOOLEAN_ARR:Lcom/miui/maml/data/VariableType;

    .line 121
    return-object p0

    .line 122
    :cond_79
    const-string v0, "char[]"

    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_84

    .line 130
    sget-object p0, Lcom/miui/maml/data/VariableType;->CHAR_ARR:Lcom/miui/maml/data/VariableType;

    .line 132
    return-object p0

    .line 133
    :cond_84
    const-string v0, "string[]"

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_8f

    .line 141
    sget-object p0, Lcom/miui/maml/data/VariableType;->STR_ARR:Lcom/miui/maml/data/VariableType;

    .line 143
    return-object p0

    .line 144
    :cond_8f
    const-string v0, "object[]"

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 149
    move-result p0

    .line 150
    if-eqz p0, :cond_9a

    .line 152
    sget-object p0, Lcom/miui/maml/data/VariableType;->OBJ_ARR:Lcom/miui/maml/data/VariableType;

    .line 154
    return-object p0

    .line 155
    :cond_9a
    sget-object p0, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 157
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;
    .registers 2

    .line 1
    const-class v0, Lcom/miui/maml/data/VariableType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/data/VariableType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/VariableType;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/VariableType;->$VALUES:[Lcom/miui/maml/data/VariableType;

    .line 3
    invoke-virtual {v0}, [Lcom/miui/maml/data/VariableType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/data/VariableType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public isArray()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_1a

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    sget-object v1, Lcom/miui/maml/data/VariableType;->OBJ_ARR:Lcom/miui/maml/data/VariableType;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v1

    .line 23
    if-gt v0, v1, :cond_1a

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    return v0
.end method

.method public isNumber()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 3
    if-ne p0, v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isNumberArray()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_1a

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    sget-object v1, Lcom/miui/maml/data/VariableType;->CHAR_ARR:Lcom/miui/maml/data/VariableType;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v1

    .line 23
    if-gt v0, v1, :cond_1a

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    return v0
.end method

.method public isNumberOrStringArray()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_1a

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    sget-object v1, Lcom/miui/maml/data/VariableType;->STR_ARR:Lcom/miui/maml/data/VariableType;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v1

    .line 23
    if-gt v0, v1, :cond_1a

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    return v0
.end method
