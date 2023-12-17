.class public final Lcom/bumptech/glide/module/ManifestParser;
.super Ljava/lang/Object;
.source "ManifestParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final GLIDE_MODULE_VALUE:Ljava/lang/String; = "GlideModule"

.field private static final TAG:Ljava/lang/String; = "ManifestParser"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/module/ManifestParser;->context:Landroid/content/Context;

    .line 6
    return-void
.end method

.method private static parseModule(Ljava/lang/String;)Lcom/bumptech/glide/module/GlideModule;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_44

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_6
    new-array v2, v1, [Ljava/lang/Class;

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 12
    move-result-object v2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0
    :try_end_12
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_12} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_12} :catch_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_12} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_12} :catch_13

    .line 19
    goto :goto_26

    .line 20
    :catch_13
    move-exception v1

    .line 21
    invoke-static {p0, v1}, Lcom/bumptech/glide/module/ManifestParser;->throwInstantiateGlideModuleException(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 24
    goto :goto_26

    .line 25
    :catch_18
    move-exception v1

    .line 26
    invoke-static {p0, v1}, Lcom/bumptech/glide/module/ManifestParser;->throwInstantiateGlideModuleException(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 29
    goto :goto_26

    .line 30
    :catch_1d
    move-exception v1

    .line 31
    invoke-static {p0, v1}, Lcom/bumptech/glide/module/ManifestParser;->throwInstantiateGlideModuleException(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 34
    goto :goto_26

    .line 35
    :catch_22
    move-exception v1

    .line 36
    invoke-static {p0, v1}, Lcom/bumptech/glide/module/ManifestParser;->throwInstantiateGlideModuleException(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 39
    :goto_26
    instance-of p0, v0, Lcom/bumptech/glide/module/GlideModule;

    .line 41
    if-eqz p0, :cond_2d

    .line 43
    check-cast v0, Lcom/bumptech/glide/module/GlideModule;

    .line 45
    return-object v0

    .line 46
    :cond_2d
    new-instance p0, Ljava/lang/RuntimeException;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v2, "Expected instanceof GlideModule, but found: "

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0

    .line 69
    :catch_44
    move-exception p0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 72
    const-string v1, "Unable to find GlideModule implementation"

    .line 74
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    throw v0
.end method

.method private static throwInstantiateGlideModuleException(Ljava/lang/Class;Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    const-string v1, "Unable to instantiate GlideModule implementation for "

    .line 5
    invoke-static {v1, p0}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    throw v0
.end method


# virtual methods
.method public parse()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/module/GlideModule;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "ManifestParser"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_e

    .line 10
    const-string v2, "Loading Glide modules"

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    :try_start_13
    iget-object v3, p0, Lcom/bumptech/glide/module/ManifestParser;->context:Landroid/content/Context;

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Lcom/bumptech/glide/module/ManifestParser;->context:Landroid/content/Context;

    .line 28
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    const/16 v5, 0x80

    .line 34
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 37
    move-result-object v3

    .line 38
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 40
    if-nez v4, :cond_35

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_34

    .line 48
    const-string v1, "Got null app info metadata"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_34
    return-object v2

    .line 54
    :cond_35
    const/4 v4, 0x2

    .line 55
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_52

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v5, "Got app info metadata: "

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_52
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 85
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 88
    move-result-object v4

    .line 89
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v4

    .line 93
    :cond_5c
    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_98

    .line 99
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Ljava/lang/String;

    .line 105
    const-string v6, "GlideModule"

    .line 107
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 109
    invoke-virtual {v7, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_5c

    .line 119
    invoke-static {v5}, Lcom/bumptech/glide/module/ManifestParser;->parseModule(Ljava/lang/String;)Lcom/bumptech/glide/module/GlideModule;

    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_5c

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v7, "Loaded Glide module: "

    .line 139
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v5

    .line 149
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_97} :catch_a4

    .line 152
    goto :goto_5c

    .line 153
    :cond_98
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_a3

    .line 159
    const-string v1, "Finished loading Glide modules"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_a3
    return-object v2

    .line 165
    :catch_a4
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    .line 168
    const-string v2, "Unable to find metadata to parse GlideModules"

    .line 170
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    throw v1
.end method
