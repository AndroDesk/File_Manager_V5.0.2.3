.class public final enum Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;
.super Ljava/lang/Enum;
.source "ID3V2ExtendedGenreTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

.field public static final enum CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

.field public static final enum RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 3
    const-string v1, "RX"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Remix"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 13
    new-instance v1, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 15
    const-string v3, "CR"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "Cover"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 25
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 28
    aput-object v0, v3, v2

    .line 30
    aput-object v1, v3, v4

    .line 32
    sput-object v3, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->$VALUES:[Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 34
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
    iput-object p3, p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->description:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;
    .registers 2

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 9
    return-object p0
.end method

.method public static final values()[Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->$VALUES:[Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 3
    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->description:Ljava/lang/String;

    .line 3
    return-object v0
.end method
