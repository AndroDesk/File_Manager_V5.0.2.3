.class public final enum Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;
.super Ljava/lang/Enum;
.source "Mp4TagFieldSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

.field public static final enum ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

.field public static final enum BYTE:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

.field public static final enum DISC_NO:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

.field public static final enum GENRE:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

.field public static final enum NUMBER:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

.field public static final enum REVERSE_DNS:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

.field public static final enum TEXT:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

.field public static final enum TRACK_NO:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

.field public static final enum UNKNOWN:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 3
    const-string v1, "TEXT"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->TEXT:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 11
    new-instance v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 13
    const-string v3, "BYTE"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->BYTE:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 21
    new-instance v3, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 23
    const-string v5, "NUMBER"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->NUMBER:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 31
    new-instance v5, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 33
    const-string v7, "REVERSE_DNS"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->REVERSE_DNS:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 41
    new-instance v7, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 43
    const-string v9, "GENRE"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->GENRE:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 51
    new-instance v9, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 53
    const-string v11, "DISC_NO"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->DISC_NO:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 61
    new-instance v11, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 63
    const-string v13, "TRACK_NO"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->TRACK_NO:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 71
    new-instance v13, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 73
    const-string v15, "ARTWORK"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->ARTWORK:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 81
    new-instance v15, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 83
    const-string v14, "UNKNOWN"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->UNKNOWN:Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 92
    const/16 v14, 0x9

    .line 94
    new-array v14, v14, [Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 96
    aput-object v0, v14, v2

    .line 98
    aput-object v1, v14, v4

    .line 100
    aput-object v3, v14, v6

    .line 102
    aput-object v5, v14, v8

    .line 104
    aput-object v7, v14, v10

    .line 106
    const/4 v0, 0x5

    .line 107
    aput-object v9, v14, v0

    .line 109
    const/4 v0, 0x6

    .line 110
    aput-object v11, v14, v0

    .line 112
    const/4 v0, 0x7

    .line 113
    aput-object v13, v14, v0

    .line 115
    aput-object v15, v14, v12

    .line 117
    sput-object v14, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->$VALUES:[Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 119
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

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->$VALUES:[Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/tag/mp4/Mp4TagFieldSubType;

    .line 9
    return-object v0
.end method
