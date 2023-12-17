.class public final Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/google/firebase/encoders/config/EncoderConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/config/EncoderConfig<",
        "Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOOLEAN_ENCODER:Lcom/google/firebase/encoders/ValueEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FALLBACK_ENCODER:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_ENCODER:Lcom/google/firebase/encoders/ValueEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMESTAMP_ENCODER:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;


# instance fields
.field private fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreNullValues:Z

.field private final objectEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final valueEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$1;->lambdaFactory$()Lcom/google/firebase/encoders/ObjectEncoder;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->DEFAULT_FALLBACK_ENCODER:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 7
    invoke-static {}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;->lambdaFactory$()Lcom/google/firebase/encoders/ValueEncoder;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->STRING_ENCODER:Lcom/google/firebase/encoders/ValueEncoder;

    .line 13
    invoke-static {}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5;->lambdaFactory$()Lcom/google/firebase/encoders/ValueEncoder;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->BOOLEAN_ENCODER:Lcom/google/firebase/encoders/ValueEncoder;

    .line 19
    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;-><init>(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;)V

    .line 25
    sput-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->TIMESTAMP_ENCODER:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/Map;

    .line 18
    sget-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->DEFAULT_FALLBACK_ENCODER:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 20
    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    .line 25
    const-class v0, Ljava/lang/String;

    .line 27
    sget-object v1, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->STRING_ENCODER:Lcom/google/firebase/encoders/ValueEncoder;

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ValueEncoder;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    .line 32
    const-class v0, Ljava/lang/Boolean;

    .line 34
    sget-object v1, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->BOOLEAN_ENCODER:Lcom/google/firebase/encoders/ValueEncoder;

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ValueEncoder;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    .line 39
    const-class v0, Ljava/util/Date;

    .line 41
    sget-object v1, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->TIMESTAMP_ENCODER:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ValueEncoder;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    .line 46
    return-void
.end method

.method public static synthetic access$100(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)Lcom/google/firebase/encoders/ObjectEncoder;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    .line 3
    return p0
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;Lcom/google/firebase/encoders/ObjectEncoderContext;)V
    .registers 3

    .line 1
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    .line 3
    const-string v0, "Couldn\'t find encoder for type "

    .line 5
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-direct {p1, p0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method

.method public static synthetic lambda$static$1(Ljava/lang/String;Lcom/google/firebase/encoders/ValueEncoderContext;)V
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Lcom/google/firebase/encoders/ValueEncoderContext;->add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;

    .line 4
    return-void
.end method

.method public static synthetic lambda$static$2(Ljava/lang/Boolean;Lcom/google/firebase/encoders/ValueEncoderContext;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p0

    .line 5
    invoke-interface {p1, p0}, Lcom/google/firebase/encoders/ValueEncoderContext;->add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;

    .line 8
    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/encoders/DataEncoder;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;-><init>(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)V

    .line 6
    return-object v0
.end method

.method public configureWith(Lcom/google/firebase/encoders/config/Configurator;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Lcom/google/firebase/encoders/config/Configurator;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 4
    return-object p0
.end method

.method public ignoreNullValues(Z)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    .line 3
    return-object p0
.end method

.method public bridge synthetic registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ValueEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ValueEncoder;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p1

    return-object p1
.end method

.method public registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "-TT;>;)",
            "Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ValueEncoder;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "-TT;>;)",
            "Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->valueEncoders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->objectEncoders:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public registerFallbackEncoder(Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 3
    return-object p0
.end method
