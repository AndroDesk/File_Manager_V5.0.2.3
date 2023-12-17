.class final enum Lcom/miui/maml/data/StringFunctions$Fun;
.super Ljava/lang/Enum;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/StringFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/StringFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum INVALID:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;


# direct methods
.method public static constructor <clinit>()V
    .registers 17

    .line 1
    new-instance v0, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 3
    const-string v1, "INVALID"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->INVALID:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 11
    new-instance v1, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 13
    const-string v3, "STR_TOLOWER"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 21
    new-instance v3, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 23
    const-string v5, "STR_TOUPPER"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 31
    new-instance v5, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 33
    const-string v7, "STR_TRIM"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 41
    new-instance v7, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 43
    const-string v9, "STR_REPLACE"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 51
    new-instance v9, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 53
    const-string v11, "STR_REPLACEALL"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 61
    new-instance v11, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 63
    const-string v13, "STR_REPLACEFIRST"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 71
    new-instance v13, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 73
    const-string v15, "STR_CONTAINS"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcom/miui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 81
    new-instance v15, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 83
    const-string v14, "STR_STARTWITH"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcom/miui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 92
    new-instance v14, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 94
    const-string v12, "STR_ENDSWITH"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 103
    new-instance v12, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 105
    const-string v10, "STR_ISEMPTY"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v12, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 114
    new-instance v10, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 116
    const-string v8, "STR_MATCHES"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v10, Lcom/miui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 125
    new-instance v8, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 127
    const-string v6, "STR_INDEXOF"

    .line 129
    const/16 v4, 0xc

    .line 131
    invoke-direct {v8, v6, v4}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 134
    sput-object v8, Lcom/miui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 136
    new-instance v6, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 138
    const-string v4, "STR_LASTINDEXOF"

    .line 140
    const/16 v2, 0xd

    .line 142
    invoke-direct {v6, v4, v2}, Lcom/miui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v6, Lcom/miui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 147
    const/16 v4, 0xe

    .line 149
    new-array v4, v4, [Lcom/miui/maml/data/StringFunctions$Fun;

    .line 151
    const/16 v16, 0x0

    .line 153
    aput-object v0, v4, v16

    .line 155
    const/4 v0, 0x1

    .line 156
    aput-object v1, v4, v0

    .line 158
    const/4 v0, 0x2

    .line 159
    aput-object v3, v4, v0

    .line 161
    const/4 v0, 0x3

    .line 162
    aput-object v5, v4, v0

    .line 164
    const/4 v0, 0x4

    .line 165
    aput-object v7, v4, v0

    .line 167
    const/4 v0, 0x5

    .line 168
    aput-object v9, v4, v0

    .line 170
    const/4 v0, 0x6

    .line 171
    aput-object v11, v4, v0

    .line 173
    const/4 v0, 0x7

    .line 174
    aput-object v13, v4, v0

    .line 176
    const/16 v0, 0x8

    .line 178
    aput-object v15, v4, v0

    .line 180
    const/16 v0, 0x9

    .line 182
    aput-object v14, v4, v0

    .line 184
    const/16 v0, 0xa

    .line 186
    aput-object v12, v4, v0

    .line 188
    const/16 v0, 0xb

    .line 190
    aput-object v10, v4, v0

    .line 192
    const/16 v0, 0xc

    .line 194
    aput-object v8, v4, v0

    .line 196
    aput-object v6, v4, v2

    .line 198
    sput-object v4, Lcom/miui/maml/data/StringFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

    .line 200
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/StringFunctions$Fun;
    .registers 2

    .line 1
    const-class v0, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/data/StringFunctions$Fun;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/StringFunctions$Fun;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/data/StringFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/StringFunctions$Fun;

    .line 3
    invoke-virtual {v0}, [Lcom/miui/maml/data/StringFunctions$Fun;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/data/StringFunctions$Fun;

    .line 9
    return-object v0
.end method
