.class Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;
.super Ljava/lang/Object;
.source "MetadataBackendRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackendFactoryProvider"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private backendProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->backendProviders:Ljava/util/Map;

    .line 7
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->applicationContext:Landroid/content/Context;

    .line 9
    return-void
.end method

.method private discover(Landroid/content/Context;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->getMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_12

    .line 7
    const-string p1, "BackendRegistry"

    .line 9
    const-string v0, "Could not retrieve metadata, returning empty list of transport backends."

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_12
    new-instance v0, Ljava/util/HashMap;

    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 32
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_61

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 44
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    instance-of v4, v3, Ljava/lang/String;

    .line 50
    if-eqz v4, :cond_1f

    .line 52
    const-string v4, "backend:"

    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_1f

    .line 60
    check-cast v3, Ljava/lang/String;

    .line 62
    const/4 v4, -0x1

    .line 63
    const-string v5, ","

    .line 65
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    array-length v4, v3

    .line 70
    const/4 v5, 0x0

    .line 71
    :goto_46
    if-ge v5, v4, :cond_1f

    .line 73
    aget-object v6, v3, v5

    .line 75
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_55

    .line 85
    goto :goto_5e

    .line 86
    :cond_55
    const/16 v7, 0x8

    .line 88
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    .line 97
    goto :goto_46

    .line 98
    :cond_61
    return-object v0
.end method

.method private getBackendProviders()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->backendProviders:Ljava/util/Map;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->applicationContext:Landroid/content/Context;

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->discover(Landroid/content/Context;)Ljava/util/Map;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->backendProviders:Ljava/util/Map;

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->backendProviders:Ljava/util/Map;

    .line 15
    return-object v0
.end method

.method private static getMetadata(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 6

    .line 1
    const-string v0, "BackendRegistry"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object v2

    .line 8
    if-nez v2, :cond_f

    .line 10
    const-string p0, "Context has no PackageManager."

    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-object v1

    .line 16
    :cond_f
    new-instance v3, Landroid/content/ComponentName;

    .line 18
    const-class v4, Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;

    .line 20
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    const/16 p0, 0x80

    .line 25
    invoke-virtual {v2, v3, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 28
    move-result-object p0

    .line 29
    if-nez p0, :cond_24

    .line 31
    const-string p0, "TransportBackendDiscovery has no service info."

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-object v1

    .line 37
    :cond_24
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_26} :catch_27

    .line 39
    return-object p0

    .line 40
    :catch_27
    const-string p0, "Application info not found."

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-object v1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/BackendFactory;
    .registers 10

    .line 1
    const-string v0, "Could not instantiate %s"

    .line 3
    const-string v1, "Could not instantiate %s."

    .line 5
    const-string v2, "BackendRegistry"

    .line 7
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider;->getBackendProviders()Ljava/util/Map;

    .line 10
    move-result-object v3

    .line 11
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez p1, :cond_14

    .line 20
    return-object v3

    .line 21
    :cond_14
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    :try_start_16
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    move-result-object v6

    .line 27
    const-class v7, Lcom/google/android/datatransport/runtime/backends/BackendFactory;

    .line 29
    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 32
    move-result-object v6

    .line 33
    new-array v7, v5, [Ljava/lang/Class;

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 38
    move-result-object v6

    .line 39
    new-array v7, v5, [Ljava/lang/Object;

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Lcom/google/android/datatransport/runtime/backends/BackendFactory;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_2e} :catch_63
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_2e} :catch_56
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_2e} :catch_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_2e} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_2e} :catch_2f

    .line 47
    return-object v6

    .line 48
    :catch_2f
    move-exception v1

    .line 49
    new-array v4, v4, [Ljava/lang/Object;

    .line 51
    aput-object p1, v4, v5

    .line 53
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    goto :goto_71

    .line 61
    :catch_3c
    move-exception v1

    .line 62
    new-array v4, v4, [Ljava/lang/Object;

    .line 64
    aput-object p1, v4, v5

    .line 66
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    goto :goto_71

    .line 74
    :catch_49
    move-exception v0

    .line 75
    new-array v4, v4, [Ljava/lang/Object;

    .line 77
    aput-object p1, v4, v5

    .line 79
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    goto :goto_71

    .line 87
    :catch_56
    move-exception v0

    .line 88
    new-array v4, v4, [Ljava/lang/Object;

    .line 90
    aput-object p1, v4, v5

    .line 92
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    goto :goto_71

    .line 100
    :catch_63
    move-exception v0

    .line 101
    new-array v1, v4, [Ljava/lang/Object;

    .line 103
    aput-object p1, v1, v5

    .line 105
    const-string p1, "Class %s is not found."

    .line 107
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :goto_71
    return-object v3
.end method
