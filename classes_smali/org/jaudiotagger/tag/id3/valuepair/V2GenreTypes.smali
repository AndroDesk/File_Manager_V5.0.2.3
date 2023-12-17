.class public Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;
.super Ljava/lang/Object;
.source "V2GenreTypes.java"


# static fields
.field private static v2GenresTypes:Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;->v2GenresTypes:Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;->v2GenresTypes:Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;->v2GenresTypes:Lorg/jaudiotagger/tag/id3/valuepair/V2GenreTypes;

    .line 14
    return-object v0
.end method


# virtual methods
.method public getAlphabeticalValueList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getAlphabeticalValueList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 11
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v1, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    .line 20
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 30
    return-object v0
.end method
