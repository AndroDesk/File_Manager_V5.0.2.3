.class public Lcom/google/android/gms/common/internal/LibraryVersion;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zzel:Lcom/google/android/gms/common/internal/GmsLogger;

.field private static zzem:Lcom/google/android/gms/common/internal/LibraryVersion;


# instance fields
.field private zzen:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    .line 3
    const-string v1, "LibraryVersion"

    .line 5
    const-string v2, ""

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sput-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzel:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 12
    new-instance v0, Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 14
    invoke-direct {v0}, Lcom/google/android/gms/common/internal/LibraryVersion;-><init>()V

    .line 17
    sput-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzem:Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzen:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/internal/LibraryVersion;
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzem:Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 3
    return-object v0
.end method


# virtual methods
.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-string v0, "Failed to get app version for libraryName: "

    .line 3
    const-string v1, "LibraryVersion"

    .line 5
    const-string v2, "Please provide a valid libraryName"

    .line 7
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzen:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1a

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzen:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 26
    return-object p1

    .line 27
    :cond_1a
    new-instance v2, Ljava/util/Properties;

    .line 29
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 32
    const/4 v3, 0x0

    .line 33
    :try_start_20
    const-string v4, "/%s.properties"

    .line 35
    const/4 v5, 0x1

    .line 36
    new-array v5, v5, [Ljava/lang/Object;

    .line 38
    const/4 v6, 0x0

    .line 39
    aput-object p1, v5, v6

    .line 41
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    const-class v5, Lcom/google/android/gms/common/internal/LibraryVersion;

    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_6a

    .line 53
    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 56
    const-string v4, "version"

    .line 58
    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    sget-object v2, Lcom/google/android/gms/common/internal/LibraryVersion;->zzel:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 71
    move-result v4

    .line 72
    add-int/lit8 v4, v4, 0xc

    .line 74
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 81
    move-result v5

    .line 82
    add-int/2addr v4, v5

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v4, " version is "

    .line 93
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_9f

    .line 107
    :cond_6a
    sget-object v2, Lcom/google/android/gms/common/internal/LibraryVersion;->zzel:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_7b

    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    goto :goto_80

    .line 124
    :cond_7b
    new-instance v4, Ljava/lang/String;

    .line 126
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 129
    :goto_80
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_83} :catch_84

    .line 132
    goto :goto_9f

    .line 133
    :catch_84
    move-exception v2

    .line 134
    sget-object v4, Lcom/google/android/gms/common/internal/LibraryVersion;->zzel:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_96

    .line 146
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    goto :goto_9c

    .line 151
    :cond_96
    new-instance v5, Ljava/lang/String;

    .line 153
    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 156
    move-object v0, v5

    .line 157
    :goto_9c
    invoke-virtual {v4, v1, v0, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    :goto_9f
    if-nez v3, :cond_aa

    .line 162
    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzel:Lcom/google/android/gms/common/internal/GmsLogger;

    .line 164
    const-string v2, ".properties file is dropped during release process. Failure to read app version isexpected druing Google internal testing where locally-built libraries are used"

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "UNKNOWN"

    .line 171
    :cond_aa
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzen:Ljava/util/concurrent/ConcurrentHashMap;

    .line 173
    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-object v3
.end method
