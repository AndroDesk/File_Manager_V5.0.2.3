.class public final Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;
.super Ljava/lang/Object;
.source "MetadataContainerFactory.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final INSTANCE:Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;->INSTANCE:Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance()Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;->INSTANCE:Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;

    .line 3
    return-object v0
.end method


# virtual methods
.method public createContainer(Lorg/jaudiotagger/audio/asf/data/ContainerType;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
    .registers 5

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;->createContainer(Lorg/jaudiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    move-result-object p1

    return-object p1
.end method

.method public createContainer(Lorg/jaudiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
    .registers 6

    .line 2
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    if-ne p1, v0, :cond_a

    .line 3
    new-instance p1, Lorg/jaudiotagger/audio/asf/data/ContentDescription;

    invoke-direct {p1, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    goto :goto_1a

    .line 4
    :cond_a
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/jaudiotagger/audio/asf/data/ContainerType;

    if-ne p1, v0, :cond_14

    .line 5
    new-instance p1, Lorg/jaudiotagger/audio/asf/data/ContentBranding;

    invoke-direct {p1, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/data/ContentBranding;-><init>(JLjava/math/BigInteger;)V

    goto :goto_1a

    .line 6
    :cond_14
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    move-object p1, v0

    :goto_1a
    return-object p1
.end method

.method public createContainers([Lorg/jaudiotagger/audio/asf/data/ContainerType;)[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v0, :cond_11

    .line 7
    aget-object v3, p1, v2

    .line 9
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;->createContainer(Lorg/jaudiotagger/audio/asf/data/ContainerType;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 12
    move-result-object v3

    .line 13
    aput-object v3, v1, v2

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_4

    .line 18
    :cond_11
    return-object v1
.end method
