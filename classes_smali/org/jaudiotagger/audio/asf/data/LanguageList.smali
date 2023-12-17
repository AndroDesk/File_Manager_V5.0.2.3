.class public Lorg/jaudiotagger/audio/asf/data/LanguageList;
.super Lorg/jaudiotagger/audio/asf/data/Chunk;
.source "LanguageList.java"


# instance fields
.field private final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/jaudiotagger/audio/asf/data/GUID;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .registers 5

    .line 3
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jaudiotagger/audio/asf/data/Chunk;-><init>(Lorg/jaudiotagger/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addLanguage(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7f

    .line 7
    if-ge v0, v1, :cond_16

    .line 9
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_15

    .line 17
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_15
    return-void

    .line 23
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_LANGUAGE_IS_TOO_LARGE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 27
    const/4 v2, 0x1

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    move-result p1

    .line 35
    mul-int/lit8 p1, p1, 0x2

    .line 37
    add-int/lit8 p1, p1, 0x2

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p1

    .line 43
    aput-object p1, v2, v3

    .line 45
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    return-object p1
.end method

.method public getLanguageCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLanguages()Ljava/util/List;
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
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lorg/jaudiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-super {p0, p1}, Lorg/jaudiotagger/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/asf/data/LanguageList;->getLanguageCount()I

    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_2f

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "  |-> "

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, " : "

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/audio/asf/data/LanguageList;->getLanguage(I)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    sget-object v2, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_a

    .line 48
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public removeLanguage(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    return-void
.end method
