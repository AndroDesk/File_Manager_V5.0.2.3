.class public Lorg/slf4j/MDC;
.super Ljava/lang/Object;
.source "MDC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slf4j/MDC$MDCCloseable;
    }
.end annotation


# static fields
.field public static final NO_STATIC_MDC_BINDER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#no_static_mdc_binder"

.field public static final NULL_MDCA_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#null_MDCA"

.field public static mdcAdapter:Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    :try_start_0
    invoke-static {}, Lorg/slf4j/MDC;->bwCompatibleGetMDCAdapterFromBinder()Lorg/slf4j/spi/MDCAdapter;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_6} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    goto :goto_33

    .line 8
    :catch_7
    move-exception v0

    .line 9
    const-string v1, "MDC binding unsuccessful."

    .line 11
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    goto :goto_33

    .line 15
    :catch_e
    move-exception v0

    .line 16
    new-instance v1, Lorg/slf4j/helpers/NOPMDCAdapter;

    .line 18
    invoke-direct {v1}, Lorg/slf4j/helpers/NOPMDCAdapter;-><init>()V

    .line 21
    sput-object v1, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_34

    .line 29
    const-string v2, "StaticMDCBinder"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_34

    .line 37
    const-string v0, "Failed to load class \"org.slf4j.impl.StaticMDCBinder\"."

    .line 39
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 42
    const-string v0, "Defaulting to no-operation MDCAdapter implementation."

    .line 44
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 47
    const-string v0, "See http://www.slf4j.org/codes.html#no_static_mdc_binder for further details."

    .line 49
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 52
    :goto_33
    return-void

    .line 53
    :cond_34
    throw v0
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static bwCompatibleGetMDCAdapterFromBinder()Lorg/slf4j/spi/MDCAdapter;
    .registers 1

    .line 1
    :try_start_0
    invoke-static {}, Lorg/slf4j/impl/StaticMDCBinder;->getSingleton()Lorg/slf4j/impl/StaticMDCBinder;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticMDCBinder;->getMDCA()Lorg/slf4j/spi/MDCAdapter;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return-object v0

    .line 10
    :catch_9
    sget-object v0, Lorg/slf4j/impl/StaticMDCBinder;->SINGLETON:Lorg/slf4j/impl/StaticMDCBinder;

    .line 12
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticMDCBinder;->getMDCA()Lorg/slf4j/spi/MDCAdapter;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static clear()V
    .registers 2

    .line 1
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-interface {v0}, Lorg/slf4j/spi/MDCAdapter;->clear()V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    const-string v1, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    if-eqz p0, :cond_13

    .line 3
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-interface {v0, p0}, Lorg/slf4j/spi/MDCAdapter;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    const-string v0, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    .line 16
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 20
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string v0, "key parameter cannot be null"

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method

.method public static getCopyOfContextMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Lorg/slf4j/spi/MDCAdapter;->getCopyOfContextMap()Ljava/util/Map;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public static getMDCAdapter()Lorg/slf4j/spi/MDCAdapter;
    .registers 1

    .line 1
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 3
    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_12

    .line 3
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-interface {v0, p0, p1}, Lorg/slf4j/spi/MDCAdapter;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    const-string p1, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0

    .line 19
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string p1, "key parameter cannot be null"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
.end method

.method public static putCloseable(Ljava/lang/String;Ljava/lang/String;)Lorg/slf4j/MDC$MDCCloseable;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lorg/slf4j/MDC$MDCCloseable;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, p0, v0}, Lorg/slf4j/MDC$MDCCloseable;-><init>(Ljava/lang/String;Lorg/slf4j/MDC$1;)V

    .line 10
    return-object p1
.end method

.method public static remove(Ljava/lang/String;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_12

    .line 3
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-interface {v0, p0}, Lorg/slf4j/spi/MDCAdapter;->remove(Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    const-string v0, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0

    .line 19
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string v0, "key parameter cannot be null"

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
.end method

.method public static setContextMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/slf4j/MDC;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-interface {v0, p0}, Lorg/slf4j/spi/MDCAdapter;->setContextMap(Ljava/util/Map;)V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 11
    const-string v0, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    .line 13
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0
.end method
