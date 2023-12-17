.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;,
        Lcom/google/android/gms/dynamite/DynamiteModule$zza;,
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$zzb;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    }
.end annotation


# static fields
.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field private static zzif:Ljava/lang/Boolean; = null
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzig:Lcom/google/android/gms/dynamite/zzi; = null
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzih:Lcom/google/android/gms/dynamite/zzk; = null
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzii:Ljava/lang/String; = null
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static zzij:I = -0x1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation
.end field

.field private static final zzik:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/android/gms/dynamite/DynamiteModule$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzil:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;

.field private static final zzim:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;


# instance fields
.field private final zzin:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v0, Lcom/google/android/gms/dynamite/zza;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zza;-><init>()V

    .line 13
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzil:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;

    .line 15
    new-instance v0, Lcom/google/android/gms/dynamite/zzb;

    .line 17
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzb;-><init>()V

    .line 20
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 22
    new-instance v0, Lcom/google/android/gms/dynamite/zzc;

    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzc;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 29
    new-instance v0, Lcom/google/android/gms/dynamite/zzd;

    .line 31
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzd;-><init>()V

    .line 34
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 36
    new-instance v0, Lcom/google/android/gms/dynamite/zze;

    .line 38
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    .line 41
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 43
    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    .line 45
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    .line 48
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 50
    new-instance v0, Lcom/google/android/gms/dynamite/zzg;

    .line 52
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    .line 55
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzim:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/content/Context;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzin:Landroid/content/Context;

    .line 12
    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-string v0, "DynamiteModule"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    move-result-object p0

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 19
    move-result v2

    .line 20
    add-int/lit8 v2, v2, 0x3d

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    const-string v2, "com.google.android.gms.dynamite.descriptors."

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ".ModuleDescriptor"

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    move-result-object p0

    .line 48
    const-string v2, "MODULE_ID"

    .line 50
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 53
    move-result-object v2

    .line 54
    const-string v3, "MODULE_VERSION"

    .line 56
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 59
    move-result-object p0

    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_7f

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 82
    move-result v2

    .line 83
    add-int/lit8 v2, v2, 0x33

    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 92
    move-result v3

    .line 93
    add-int/2addr v2, v3

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    const-string v2, "Module descriptor id \'"

    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string p0, "\' didn\'t match expected id \'"

    .line 109
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string p0, "\'"

    .line 117
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v1

    .line 128
    :cond_7f
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 131
    move-result p0
    :try_end_83
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_83} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_83} :catch_84

    .line 132
    return p0

    .line 133
    :catch_84
    move-exception p0

    .line 134
    const-string p1, "Failed to load module descriptor class: "

    .line 136
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_9a

    .line 150
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    goto :goto_9f

    .line 155
    :cond_9a
    new-instance p0, Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 160
    :goto_9f
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    goto :goto_c2

    .line 164
    :catch_a3
    const/16 p0, 0x2d

    .line 166
    invoke-static {p1, p0}, La/a;->a(Ljava/lang/String;I)I

    .line 169
    move-result p0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    const-string p0, "Local module descriptor class for "

    .line 177
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string p0, " not found."

    .line 185
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 192
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_c2
    return v1
.end method

.method public static getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 14
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-string v0, ":"

    .line 3
    const-string v1, "DynamiteModule"

    .line 5
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    .line 7
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    .line 13
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct {v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$zza;-><init>(Lcom/google/android/gms/dynamite/zza;)V

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 22
    :try_start_15
    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzil:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;

    .line 24
    invoke-interface {p1, p0, p2, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;

    .line 27
    move-result-object v6

    .line 28
    iget v7, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    .line 30
    iget v8, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object v9

    .line 36
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 39
    move-result v9

    .line 40
    add-int/lit8 v9, v9, 0x44

    .line 42
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v10

    .line 46
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 49
    move-result v10

    .line 50
    add-int/2addr v9, v10

    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    const-string v9, "Considering local module "

    .line 58
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v7, " and remote module "

    .line 72
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzit:I

    .line 93
    if-eqz v0, :cond_f5

    .line 95
    const/4 v7, -0x1

    .line 96
    if-ne v0, v7, :cond_65

    .line 98
    iget v8, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    .line 100
    if-eqz v8, :cond_f5

    .line 102
    :cond_65
    const/4 v8, 0x1

    .line 103
    if-ne v0, v8, :cond_6c

    .line 105
    iget v9, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    .line 107
    if-eqz v9, :cond_f5

    .line 109
    :cond_6c
    if-ne v0, v7, :cond_7d

    .line 111
    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 114
    move-result-object p0
    :try_end_72
    .catchall {:try_start_15 .. :try_end_72} :catchall_11f

    .line 115
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    .line 117
    if-eqz p1, :cond_79

    .line 119
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_79
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 125
    return-object p0

    .line 126
    :cond_7d
    if-ne v0, v8, :cond_da

    .line 128
    :try_start_7f
    iget v0, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    .line 130
    invoke-static {p0, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 133
    move-result-object p0
    :try_end_85
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_7f .. :try_end_85} :catch_90
    .catchall {:try_start_7f .. :try_end_85} :catchall_11f

    .line 134
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    .line 136
    if-eqz p1, :cond_8c

    .line 138
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_8c
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 144
    return-object p0

    .line 145
    :catch_90
    move-exception v0

    .line 146
    :try_start_91
    const-string v2, "Failed to load remote module: "

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    move-result-object v8

    .line 152
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_a6

    .line 162
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    goto :goto_ac

    .line 167
    :cond_a6
    new-instance v8, Ljava/lang/String;

    .line 169
    invoke-direct {v8, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 172
    move-object v2, v8

    .line 173
    :goto_ac
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    .line 178
    if-eqz v1, :cond_d2

    .line 180
    new-instance v2, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;

    .line 182
    const/4 v6, 0x0

    .line 183
    invoke-direct {v2, v1, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$zzb;-><init>(II)V

    .line 186
    invoke-interface {p1, p0, p2, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;

    .line 189
    move-result-object p1

    .line 190
    iget p1, p1, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzit:I

    .line 192
    if-ne p1, v7, :cond_d2

    .line 194
    invoke-static {p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 197
    move-result-object p0
    :try_end_c5
    .catchall {:try_start_91 .. :try_end_c5} :catchall_11f

    .line 198
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    .line 200
    if-eqz p1, :cond_cc

    .line 202
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_cc
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    .line 207
    invoke-virtual {p1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 210
    return-object p0

    .line 211
    :cond_d2
    :try_start_d2
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 213
    const-string p1, "Remote load failed. No local fallback found."

    .line 215
    invoke-direct {p0, p1, v0, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    .line 218
    throw p0

    .line 219
    :cond_da
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 221
    iget p1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzit:I

    .line 223
    const/16 p2, 0x2f

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    const-string p2, "VersionPolicy returned invalid code:"

    .line 232
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object p1

    .line 242
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    .line 245
    throw p0

    .line 246
    :cond_f5
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 248
    iget p1, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzir:I

    .line 250
    iget p2, v6, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->zzis:I

    .line 252
    const/16 v0, 0x5b

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 256
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 259
    const-string v0, "No acceptable module found. Local version is "

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    const-string p1, " and remote version is "

    .line 269
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    const-string p1, "."

    .line 277
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object p1

    .line 284
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    .line 287
    throw p0
    :try_end_11f
    .catchall {:try_start_d2 .. :try_end_11f} :catchall_11f

    .line 288
    :catchall_11f
    move-exception p0

    .line 289
    iget-object p1, v4, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    .line 291
    if-eqz p1, :cond_127

    .line 293
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_127
    sget-object p1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    .line 298
    invoke-virtual {p1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 301
    throw p0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 11

    .line 1
    :try_start_0
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_ea

    .line 2
    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzif:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_e7

    if-nez v1, :cond_b4

    .line 3
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 4
    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sClassLoader"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 7
    monitor-enter v1
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_20} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_20} :catch_8d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_20} :catch_8b
    .catchall {:try_start_7 .. :try_end_20} :catchall_e7

    const/4 v3, 0x0

    .line 8
    :try_start_21
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    if-eqz v4, :cond_38

    .line 9
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v4, v2, :cond_32

    .line 10
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_88

    goto :goto_85

    .line 11
    :cond_32
    :try_start_32
    invoke-static {v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Ljava/lang/ClassLoader;)V
    :try_end_35
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_32 .. :try_end_35} :catch_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_88

    .line 12
    :catch_35
    :try_start_35
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_85

    :cond_38
    const-string v4, "com.google.android.gms"

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 15
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_51
    .catchall {:try_start_35 .. :try_end_51} :catchall_88

    goto :goto_85

    .line 17
    :cond_52
    :try_start_52
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    .line 18
    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/String;

    if-eqz v5, :cond_79

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_61

    goto :goto_79

    .line 19
    :cond_61
    new-instance v5, Lcom/google/android/gms/dynamite/zzh;

    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/dynamite/zzh;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Ljava/lang/ClassLoader;)V

    .line 21
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzif:Ljava/lang/Boolean;
    :try_end_76
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_52 .. :try_end_76} :catch_7c
    .catchall {:try_start_52 .. :try_end_76} :catchall_88

    .line 23
    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_88

    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_e7

    return v4

    .line 24
    :cond_79
    :goto_79
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_88

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_e7

    return v4

    .line 25
    :catch_7c
    :try_start_7c
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    :goto_85
    monitor-exit v1

    move-object v1, v2

    goto :goto_b2

    :catchall_88
    move-exception v2

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_7c .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v2
    :try_end_8b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8a .. :try_end_8b} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_8a .. :try_end_8b} :catch_8d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8a .. :try_end_8b} :catch_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_e7

    :catch_8b
    move-exception v1

    goto :goto_90

    :catch_8d
    move-exception v1

    goto :goto_90

    :catch_8f
    move-exception v1

    :goto_90
    :try_start_90
    const-string v2, "DynamiteModule"

    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to load module via V2: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    :goto_b2
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzif:Ljava/lang/Boolean;

    .line 31
    :cond_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_90 .. :try_end_b5} :catchall_e7

    .line 32
    :try_start_b5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_ea

    if-eqz v0, :cond_e2

    .line 33
    :try_start_bb
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_bf
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_bb .. :try_end_bf} :catch_c0
    .catchall {:try_start_bb .. :try_end_bf} :catchall_ea

    return p0

    :catch_c0
    move-exception p1

    :try_start_c1
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version: "

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d8

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_dd

    :cond_d8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_dd
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 35
    :cond_e2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0
    :try_end_e6
    .catchall {:try_start_c1 .. :try_end_e6} :catchall_ea

    return p0

    :catchall_e7
    move-exception p1

    .line 36
    :try_start_e8
    monitor-exit v0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    :try_start_e9
    throw p1
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_ea

    :catchall_ea
    move-exception p1

    .line 37
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 38
    throw p1
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 7

    const/4 v0, 0x0

    .line 39
    :try_start_1
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_9c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_4} :catch_9a
    .catchall {:try_start_1 .. :try_end_4} :catchall_8e

    .line 40
    :try_start_4
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzif:Ljava/lang/Boolean;

    .line 41
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8b

    if-eqz v2, :cond_83

    .line 42
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 43
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    return-object p0

    :cond_14
    const-string v1, "DynamiteModule"

    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Selected remote version of "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", version >= "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzi;

    move-result-object v1

    if-eqz v1, :cond_7b

    .line 46
    invoke-interface {v1}, Lcom/google/android/gms/dynamite/zzi;->zzak()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_52

    .line 47
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/google/android/gms/dynamite/zzi;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_61

    :cond_52
    const-string v2, "DynamiteModule"

    const-string v3, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 48
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/google/android/gms/dynamite/zzi;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 50
    :goto_61
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_73

    .line 51
    new-instance p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 52
    :cond_73
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to load remote module."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p1

    .line 53
    :cond_7b
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to create IDynamiteLoader."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p1

    .line 54
    :cond_83
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to determine which loading route to use."

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p1
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_8b} :catch_9c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_9 .. :try_end_8b} :catch_9a
    .catchall {:try_start_9 .. :try_end_8b} :catchall_8e

    :catchall_8b
    move-exception p1

    .line 55
    :try_start_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw p1
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_8e} :catch_9c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_8d .. :try_end_8e} :catch_9a
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p1

    .line 56
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 57
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to load remote module."

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    throw p0

    :catch_9a
    move-exception p0

    .line 58
    throw p0

    :catch_9c
    move-exception p0

    .line 59
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to load remote module."

    invoke-direct {p1, p2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    throw p1
.end method

.method private static zza(Ljava/lang/ClassLoader;)V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "DynamiteModule.class"
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1a

    move-object v1, v0

    goto :goto_2c

    :cond_1a
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 61
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 62
    instance-of v2, v1, Lcom/google/android/gms/dynamite/zzk;

    if-eqz v2, :cond_27

    .line 63
    check-cast v1, Lcom/google/android/gms/dynamite/zzk;

    goto :goto_2c

    .line 64
    :cond_27
    new-instance v1, Lcom/google/android/gms/dynamite/zzl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamite/zzl;-><init>(Landroid/os/IBinder;)V

    .line 65
    :goto_2c
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzih:Lcom/google/android/gms/dynamite/zzk;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2e} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2e} :catch_35
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_2e} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2e} :catch_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p0

    goto :goto_38

    :catch_31
    move-exception p0

    goto :goto_38

    :catch_33
    move-exception p0

    goto :goto_38

    :catch_35
    move-exception p0

    goto :goto_38

    :catch_37
    move-exception p0

    .line 66
    :goto_38
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate dynamite loader"

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    throw v1
.end method

.method private static zzaj()Ljava/lang/Boolean;
    .registers 3

    .line 1
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzij:I

    .line 6
    const/4 v2, 0x2

    .line 7
    if-lt v1, v2, :cond_a

    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v1

    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_11
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    .line 20
    throw v1
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 8

    const-string v0, "DynamiteModule"

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzi;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 29
    :cond_a
    :try_start_a
    invoke-interface {v1}, Lcom/google/android/gms/dynamite/zzi;->zzak()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1a

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 31
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/dynamite/zzi;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_1a
    const-string v3, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 32
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/dynamite/zzi;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result p0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_27} :catch_28

    return p0

    :catch_28
    move-exception p0

    const-string p1, "Failed to retrieve remote module version: "

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3e

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_43

    :cond_3e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_43
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 8

    const-string v0, "DynamiteModule"

    const/16 v1, 0x33

    .line 1
    invoke-static {p1, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Selected remote version of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version >= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0

    .line 4
    :try_start_27
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzih:Lcom/google/android/gms/dynamite/zzk;

    .line 5
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_9b

    const/4 v0, 0x0

    if-eqz v1, :cond_93

    .line 6
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    if-eqz v2, :cond_8b

    .line 7
    iget-object v3, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    if-eqz v3, :cond_8b

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 11
    invoke-static {}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzaj()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_62

    const-string v3, "DynamiteModule"

    const-string v4, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 12
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 15
    invoke-interface {v1, p0, p1, p2, v2}, Lcom/google/android/gms/dynamite/zzk;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    goto :goto_75

    :cond_62
    const-string v3, "DynamiteModule"

    const-string v4, "Dynamite loader version < 2, falling back to loadModule2"

    .line 16
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 19
    invoke-interface {v1, p0, p1, p2, v2}, Lcom/google/android/gms/dynamite/zzk;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 20
    :goto_75
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_83

    .line 21
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 22
    :cond_83
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "Failed to get module context"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 23
    :cond_8b
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "No result cursor"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p0

    .line 24
    :cond_93
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "DynamiteLoaderV2 was not cached."

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    throw p0

    :catchall_9b
    move-exception p0

    .line 25
    :try_start_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p0
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    move-result-object v1

    .line 6
    if-eqz p2, :cond_a

    .line 8
    const-string p0, "api_force_staging"

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const-string p0, "api"

    .line 13
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    move-result p2

    .line 17
    add-int/lit8 p2, p2, 0x2a

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 26
    move-result v2

    .line 27
    add-int/2addr p2, v2

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    const-string p2, "content://com.google.android.gms.chimera/"

    .line 35
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, "/"

    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 64
    move-result-object p0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_9d
    .catchall {:try_start_1 .. :try_end_40} :catchall_9b

    .line 65
    if-eqz p0, :cond_83

    .line 67
    :try_start_42
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_83

    .line 73
    const/4 p1, 0x0

    .line 74
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 77
    move-result p1

    .line 78
    if-lez p1, :cond_7c

    .line 80
    const-class p2, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 82
    monitor-enter p2
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_52} :catch_96
    .catchall {:try_start_42 .. :try_end_52} :catchall_92

    .line 83
    const/4 v1, 0x2

    .line 84
    :try_start_53
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzii:Ljava/lang/String;

    .line 90
    const-string v1, "loaderVersion"

    .line 92
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 95
    move-result v1

    .line 96
    if-ltz v1, :cond_67

    .line 98
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 101
    move-result v1

    .line 102
    sput v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzij:I

    .line 104
    :cond_67
    monitor-exit p2
    :try_end_68
    .catchall {:try_start_53 .. :try_end_68} :catchall_79

    .line 105
    :try_start_68
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzik:Ljava/lang/ThreadLocal;

    .line 107
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;

    .line 113
    if-eqz p2, :cond_7c

    .line 115
    iget-object v1, p2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;

    .line 117
    if-nez v1, :cond_7c

    .line 119
    iput-object p0, p2, Lcom/google/android/gms/dynamite/DynamiteModule$zza;->zzio:Landroid/database/Cursor;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_78} :catch_96
    .catchall {:try_start_68 .. :try_end_78} :catchall_92

    .line 121
    goto :goto_7d

    .line 122
    :catchall_79
    move-exception p1

    .line 123
    :try_start_7a
    monitor-exit p2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    .line 124
    :try_start_7b
    throw p1
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7c} :catch_96
    .catchall {:try_start_7b .. :try_end_7c} :catchall_92

    .line 125
    :cond_7c
    move-object v0, p0

    .line 126
    :goto_7d
    if-eqz v0, :cond_82

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_82
    return p1

    .line 132
    :cond_83
    :try_start_83
    const-string p1, "DynamiteModule"

    .line 134
    const-string p2, "Failed to retrieve remote module version."

    .line 136
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 141
    const-string p2, "Failed to connect to dynamite module ContentResolver."

    .line 143
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zza;)V

    .line 146
    throw p1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_92} :catch_96
    .catchall {:try_start_83 .. :try_end_92} :catchall_92

    .line 147
    :catchall_92
    move-exception p1

    .line 148
    move-object v0, p0

    .line 149
    move-object p0, p1

    .line 150
    goto :goto_ae

    .line 151
    :catch_96
    move-exception p1

    .line 152
    move-object v7, p1

    .line 153
    move-object p1, p0

    .line 154
    move-object p0, v7

    .line 155
    goto :goto_9f

    .line 156
    :catchall_9b
    move-exception p0

    .line 157
    goto :goto_ae

    .line 158
    :catch_9d
    move-exception p0

    .line 159
    move-object p1, v0

    .line 160
    :goto_9f
    :try_start_9f
    instance-of p2, p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 162
    if-eqz p2, :cond_a4

    .line 164
    throw p0

    .line 165
    :cond_a4
    new-instance p2, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 167
    const-string v1, "V2 version check failed"

    .line 169
    invoke-direct {p2, v1, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    .line 172
    throw p2
    :try_end_ac
    .catchall {:try_start_9f .. :try_end_ac} :catchall_ac

    .line 173
    :catchall_ac
    move-exception p0

    .line 174
    move-object v0, p1

    .line 175
    :goto_ae
    if-eqz v0, :cond_b3

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_b3
    throw p0
.end method

.method private static zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const-string v1, "Selected local version of "

    .line 11
    if-eqz v0, :cond_11

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/String;

    .line 20
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    :goto_16
    const-string v0, "DynamiteModule"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    move-result-object p0

    .line 34
    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    .line 37
    return-object p1
.end method

.method private static zzj(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzi;
    .registers 6

    .line 1
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzig:Lcom/google/android/gms/dynamite/zzi;

    .line 6
    if-eqz v1, :cond_9

    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :cond_9
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_16

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_6b

    .line 22
    return-object v2

    .line 23
    :cond_16
    :try_start_16
    const-string v1, "com.google.android.gms"

    .line 25
    const/4 v3, 0x3

    .line 26
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 33
    move-result-object p0

    .line 34
    const-string v1, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_31

    .line 48
    move-object v1, v2

    .line 49
    goto :goto_43

    .line 50
    :cond_31
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 52
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 55
    move-result-object v1

    .line 56
    instance-of v3, v1, Lcom/google/android/gms/dynamite/zzi;

    .line 58
    if-eqz v3, :cond_3e

    .line 60
    check-cast v1, Lcom/google/android/gms/dynamite/zzi;

    .line 62
    goto :goto_43

    .line 63
    :cond_3e
    new-instance v1, Lcom/google/android/gms/dynamite/zzj;

    .line 65
    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamite/zzj;-><init>(Landroid/os/IBinder;)V

    .line 68
    :goto_43
    if-eqz v1, :cond_69

    .line 70
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzig:Lcom/google/android/gms/dynamite/zzi;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_47} :catch_49
    .catchall {:try_start_16 .. :try_end_47} :catchall_6b

    .line 72
    :try_start_47
    monitor-exit v0

    .line 73
    return-object v1

    .line 74
    :catch_49
    move-exception p0

    .line 75
    const-string v1, "DynamiteModule"

    .line 77
    const-string v3, "Failed to load IDynamiteLoader from GmsCore: "

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_61

    .line 93
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    goto :goto_66

    .line 98
    :cond_61
    new-instance p0, Ljava/lang/String;

    .line 100
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 103
    :goto_66
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_69
    monitor-exit v0

    .line 107
    return-object v2

    .line 108
    :catchall_6b
    move-exception p0

    .line 109
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_47 .. :try_end_6d} :catchall_6b

    .line 110
    throw p0
.end method


# virtual methods
.method public final getModuleContext()Landroid/content/Context;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzin:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public final instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzin:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_15
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_10} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_11

    .line 17
    return-object v0

    .line 18
    :catch_11
    move-exception v0

    .line 19
    goto :goto_16

    .line 20
    :catch_13
    move-exception v0

    .line 21
    goto :goto_16

    .line 22
    :catch_15
    move-exception v0

    .line 23
    :goto_16
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 25
    const-string v2, "Failed to instantiate module class: "

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_29

    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    goto :goto_2e

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/String;

    .line 44
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 47
    :goto_2e
    const/4 v2, 0x0

    .line 48
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zza;)V

    .line 51
    throw v1
.end method
