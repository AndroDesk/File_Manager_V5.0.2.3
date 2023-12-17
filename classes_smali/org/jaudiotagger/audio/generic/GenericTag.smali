.class public abstract Lorg/jaudiotagger/audio/generic/GenericTag;
.super Lorg/jaudiotagger/audio/generic/AbstractTag;
.source "GenericTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;
    }
.end annotation


# static fields
.field private static supportedKeys:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [Lorg/jaudiotagger/tag/FieldKey;

    .line 6
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v2, v1, v3

    .line 16
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 18
    const/4 v3, 0x2

    .line 19
    aput-object v2, v1, v3

    .line 21
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    .line 23
    const/4 v3, 0x3

    .line 24
    aput-object v2, v1, v3

    .line 26
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    .line 28
    const/4 v3, 0x4

    .line 29
    aput-object v2, v1, v3

    .line 31
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    .line 33
    const/4 v3, 0x5

    .line 34
    aput-object v2, v1, v3

    .line 36
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    new-instance v0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;-><init>(Lorg/jaudiotagger/audio/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 19
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 21
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method

.method public getArtworkList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/datatype/Artwork;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/generic/GenericTag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 20
    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 22
    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 20
    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 22
    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public isAllowedEncoding(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
