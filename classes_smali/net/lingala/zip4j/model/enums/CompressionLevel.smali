.class public final enum Lnet/lingala/zip4j/model/enums/CompressionLevel;
.super Ljava/lang/Enum;
.source "CompressionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/model/enums/CompressionLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum FASTER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum HIGHER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum MEDIUM_FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum NO_COMPRESSION:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum PRE_ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final synthetic a:[Lnet/lingala/zip4j/model/enums/CompressionLevel;


# instance fields
.field private final level:I


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 3
    const-string v1, "NO_COMPRESSION"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    .line 9
    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NO_COMPRESSION:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 11
    new-instance v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 13
    const-string v3, "FASTEST"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    .line 19
    sput-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 21
    new-instance v3, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 23
    const-string v5, "FASTER"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v3, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 31
    new-instance v5, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 33
    const-string v7, "FAST"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v5, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 41
    new-instance v7, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 43
    const-string v9, "MEDIUM_FAST"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v7, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MEDIUM_FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 51
    new-instance v9, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 53
    const-string v11, "NORMAL"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v9, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 61
    new-instance v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 63
    const-string v13, "HIGHER"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    .line 69
    sput-object v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;->HIGHER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 71
    new-instance v13, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 73
    const-string v15, "MAXIMUM"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v14}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    .line 79
    sput-object v13, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 81
    new-instance v15, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 83
    const-string v14, "PRE_ULTRA"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12, v12}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    .line 90
    sput-object v15, Lnet/lingala/zip4j/model/enums/CompressionLevel;->PRE_ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 92
    new-instance v14, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 94
    const-string v12, "ULTRA"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10, v10}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    .line 101
    sput-object v14, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 103
    const/16 v12, 0xa

    .line 105
    new-array v12, v12, [Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 107
    aput-object v0, v12, v2

    .line 109
    aput-object v1, v12, v4

    .line 111
    aput-object v3, v12, v6

    .line 113
    aput-object v5, v12, v8

    .line 115
    const/4 v0, 0x4

    .line 116
    aput-object v7, v12, v0

    .line 118
    const/4 v0, 0x5

    .line 119
    aput-object v9, v12, v0

    .line 121
    const/4 v0, 0x6

    .line 122
    aput-object v11, v12, v0

    .line 124
    const/4 v0, 0x7

    .line 125
    aput-object v13, v12, v0

    .line 127
    const/16 v0, 0x8

    .line 129
    aput-object v15, v12, v0

    .line 131
    aput-object v14, v12, v10

    .line 133
    sput-object v12, Lnet/lingala/zip4j/model/enums/CompressionLevel;->a:[Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->level:I

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .registers 2

    .line 1
    const-class v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 9
    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .registers 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->a:[Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 3
    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/CompressionLevel;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->level:I

    .line 3
    return v0
.end method
