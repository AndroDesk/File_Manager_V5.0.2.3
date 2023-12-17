.class public final enum Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;
.super Ljava/lang/Enum;
.source "ID3v1FieldKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum ALBUM:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum ARTIST:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum COMMENT:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum GENRE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum TITLE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum TRACK:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum YEAR:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 3
    const-string v1, "ARTIST"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 11
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 13
    const-string v3, "ALBUM"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 21
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 23
    const-string v5, "GENRE"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 31
    new-instance v5, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 33
    const-string v7, "TITLE"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 41
    new-instance v7, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 43
    const-string v9, "YEAR"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 51
    new-instance v9, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 53
    const-string v11, "TRACK"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 61
    new-instance v11, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 63
    const-string v13, "COMMENT"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 74
    aput-object v0, v13, v2

    .line 76
    aput-object v1, v13, v4

    .line 78
    aput-object v3, v13, v6

    .line 80
    aput-object v5, v13, v8

    .line 82
    aput-object v7, v13, v10

    .line 84
    aput-object v9, v13, v12

    .line 86
    aput-object v11, v13, v14

    .line 88
    sput-object v13, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->$VALUES:[Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 90
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

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->$VALUES:[Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 9
    return-object v0
.end method
