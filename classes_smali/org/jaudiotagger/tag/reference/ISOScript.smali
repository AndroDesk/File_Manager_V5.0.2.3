.class public Lorg/jaudiotagger/tag/reference/ISOScript;
.super Ljava/lang/Object;
.source "ISOScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/tag/reference/ISOScript$Script;
    }
.end annotation


# static fields
.field private static codeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/reference/ISOScript$Script;",
            ">;"
        }
    .end annotation
.end field

.field private static descriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/reference/ISOScript$Script;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/reference/ISOScript;->codeMap:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/reference/ISOScript$Script;->values()[Lorg/jaudiotagger/tag/reference/ISOScript$Script;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_1e

    aget-object v4, v0, v3

    sget-object v5, Lorg/jaudiotagger/tag/reference/ISOScript;->codeMap:Ljava/util/Map;

    invoke-static {v4}, Lorg/jaudiotagger/tag/reference/ISOScript$Script;->access$000(Lorg/jaudiotagger/tag/reference/ISOScript$Script;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/reference/ISOScript;->descriptionMap:Ljava/util/Map;

    invoke-static {}, Lorg/jaudiotagger/tag/reference/ISOScript$Script;->values()[Lorg/jaudiotagger/tag/reference/ISOScript$Script;

    move-result-object v0

    array-length v1, v0

    :goto_2a
    if-ge v2, v1, :cond_3a

    aget-object v3, v0, v2

    sget-object v4, Lorg/jaudiotagger/tag/reference/ISOScript;->descriptionMap:Ljava/util/Map;

    invoke-static {v3}, Lorg/jaudiotagger/tag/reference/ISOScript$Script;->access$100(Lorg/jaudiotagger/tag/reference/ISOScript$Script;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScriptByCode(Ljava/lang/String;)Lorg/jaudiotagger/tag/reference/ISOScript$Script;
    .registers 2

    sget-object v0, Lorg/jaudiotagger/tag/reference/ISOScript;->codeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/reference/ISOScript$Script;

    return-object p0
.end method

.method public static getScriptByDescription(Ljava/lang/String;)Lorg/jaudiotagger/tag/reference/ISOScript$Script;
    .registers 2

    sget-object v0, Lorg/jaudiotagger/tag/reference/ISOScript;->descriptionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/reference/ISOScript$Script;

    return-object p0
.end method