.class public Lorg/jaudiotagger/tag/reference/ISOCountry;
.super Ljava/lang/Object;
.source "ISOCountry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/reference/ISOCountry$Country;
    }
.end annotation


# static fields
.field private static codeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/reference/ISOCountry$Country;",
            ">;"
        }
    .end annotation
.end field

.field private static descriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/reference/ISOCountry$Country;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/tag/reference/ISOCountry;->codeMap:Ljava/util/Map;

    .line 8
    invoke-static {}, Lorg/jaudiotagger/tag/reference/ISOCountry$Country;->values()[Lorg/jaudiotagger/tag/reference/ISOCountry$Country;

    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_e
    if-ge v3, v1, :cond_1e

    .line 17
    aget-object v4, v0, v3

    .line 19
    sget-object v5, Lorg/jaudiotagger/tag/reference/ISOCountry;->codeMap:Ljava/util/Map;

    .line 21
    invoke-static {v4}, Lorg/jaudiotagger/tag/reference/ISOCountry$Country;->access$000(Lorg/jaudiotagger/tag/reference/ISOCountry$Country;)Ljava/lang/String;

    .line 24
    move-result-object v6

    .line 25
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_e

    .line 31
    :cond_1e
    new-instance v0, Ljava/util/HashMap;

    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    sput-object v0, Lorg/jaudiotagger/tag/reference/ISOCountry;->descriptionMap:Ljava/util/Map;

    .line 38
    invoke-static {}, Lorg/jaudiotagger/tag/reference/ISOCountry$Country;->values()[Lorg/jaudiotagger/tag/reference/ISOCountry$Country;

    .line 41
    move-result-object v0

    .line 42
    array-length v1, v0

    .line 43
    :goto_2a
    if-ge v2, v1, :cond_3a

    .line 45
    aget-object v3, v0, v2

    .line 47
    sget-object v4, Lorg/jaudiotagger/tag/reference/ISOCountry;->descriptionMap:Ljava/util/Map;

    .line 49
    invoke-static {v3}, Lorg/jaudiotagger/tag/reference/ISOCountry$Country;->access$100(Lorg/jaudiotagger/tag/reference/ISOCountry$Country;)Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_2a

    .line 59
    :cond_3a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getCountryByCode(Ljava/lang/String;)Lorg/jaudiotagger/tag/reference/ISOCountry$Country;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/reference/ISOCountry;->codeMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/reference/ISOCountry$Country;

    .line 9
    return-object p0
.end method

.method public static getCountryByDescription(Ljava/lang/String;)Lorg/jaudiotagger/tag/reference/ISOCountry$Country;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/reference/ISOCountry;->descriptionMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jaudiotagger/tag/reference/ISOCountry$Country;

    .line 9
    return-object p0
.end method
