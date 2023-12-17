.class public Lmiuix/internal/hybrid/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field private static final KEY_FEATURES:Ljava/lang/String; = "features"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_ORIGIN:Ljava/lang/String; = "origin"

.field private static final KEY_PARAMS:Ljava/lang/String; = "params"

.field private static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final KEY_SUBDOMAINS:Ljava/lang/String; = "subdomains"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_VENDOR:Ljava/lang/String; = "vendor"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static buildFeature(Lmiuix/internal/hybrid/Config;)Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/util/TreeSet;

    .line 8
    invoke-virtual {p0}, Lmiuix/internal/hybrid/Config;->getFeatures()Ljava/util/Map;

    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1b

    .line 25
    const-string p0, ""

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 32
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_55

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 44
    const-string v3, "{"

    .line 46
    const-string v4, "name"

    .line 48
    const-string v5, ":"

    .line 50
    const-string v6, "\""

    .line 52
    invoke-static {v0, v3, v4, v5, v6}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, ","

    .line 57
    const-string v4, "params"

    .line 59
    invoke-static {v0, v2, v6, v3, v4}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v4, "["

    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0, v2}, Lmiuix/internal/hybrid/Config;->getFeature(Ljava/lang/String;)Lmiuix/internal/hybrid/Feature;

    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Lmiuix/internal/hybrid/ConfigUtils;->buildParam(Lmiuix/internal/hybrid/Feature;)Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    const-string v4, "]"

    .line 80
    const-string v5, "}"

    .line 82
    invoke-static {v0, v2, v4, v5, v3}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    goto :goto_1f

    .line 86
    :cond_55
    const/4 p0, 0x0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 90
    move-result v1

    .line 91
    add-int/lit8 v1, v1, -0x1

    .line 93
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method

.method private static buildFeatures(Lmiuix/internal/hybrid/Config;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "features"

    .line 3
    const-string v1, ":"

    .line 5
    const-string v2, "["

    .line 7
    invoke-static {v0, v1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0}, Lmiuix/internal/hybrid/ConfigUtils;->buildFeature(Lmiuix/internal/hybrid/Config;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    const-string v1, "]"

    .line 17
    invoke-static {v0, p0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static buildParam(Lmiuix/internal/hybrid/Feature;)Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/util/TreeSet;

    .line 8
    invoke-virtual {p0}, Lmiuix/internal/hybrid/Feature;->getParams()Ljava/util/Map;

    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1b

    .line 25
    const-string p0, ""

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 32
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_50

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 44
    const-string v3, "{"

    .line 46
    const-string v4, "name"

    .line 48
    const-string v5, ":"

    .line 50
    const-string v6, "\""

    .line 52
    invoke-static {v0, v3, v4, v5, v6}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, ","

    .line 57
    const-string v4, "value"

    .line 59
    invoke-static {v0, v2, v6, v3, v4}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0, v2}, Lmiuix/internal/hybrid/Feature;->getParam(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, "}"

    .line 77
    invoke-static {v0, v6, v2, v3}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    goto :goto_1f

    .line 81
    :cond_50
    const/4 p0, 0x0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 85
    move-result v1

    .line 86
    add-int/lit8 v1, v1, -0x1

    .line 88
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method

.method private static buildPermission(Lmiuix/internal/hybrid/Config;)Ljava/lang/Object;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/util/TreeSet;

    .line 8
    invoke-virtual {p0}, Lmiuix/internal/hybrid/Config;->getPermissions()Ljava/util/Map;

    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1b

    .line 25
    const-string p0, ""

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 32
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_54

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 44
    const-string v3, "{"

    .line 46
    const-string v4, "origin"

    .line 48
    const-string v5, ":"

    .line 50
    const-string v6, "\""

    .line 52
    invoke-static {v0, v3, v4, v5, v6}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, ","

    .line 57
    const-string v4, "subdomains"

    .line 59
    invoke-static {v0, v2, v6, v3, v4}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0, v2}, Lmiuix/internal/hybrid/Config;->getPermission(Ljava/lang/String;)Lmiuix/internal/hybrid/Permission;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lmiuix/internal/hybrid/Permission;->isApplySubdomains()Z

    .line 72
    move-result v2

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    const-string v2, "}"

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    goto :goto_1f

    .line 85
    :cond_54
    const/4 p0, 0x0

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 89
    move-result v1

    .line 90
    add-int/lit8 v1, v1, -0x1

    .line 92
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method

.method private static buildPermissions(Lmiuix/internal/hybrid/Config;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "permissions"

    .line 3
    const-string v1, ":"

    .line 5
    const-string v2, "["

    .line 7
    invoke-static {v0, v1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0}, Lmiuix/internal/hybrid/ConfigUtils;->buildPermission(Lmiuix/internal/hybrid/Config;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string p0, "]"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static getRawConfig(Lmiuix/internal/hybrid/Config;)Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "{"

    .line 3
    const-string v1, "timestamp"

    .line 5
    const-string v2, ":"

    .line 7
    invoke-static {v0, v1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lmiuix/internal/hybrid/Config;->getSecurity()Lmiuix/internal/hybrid/Security;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lmiuix/internal/hybrid/Security;->getTimestamp()J

    .line 18
    move-result-wide v3

    .line 19
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ","

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "vendor"

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "\""

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lmiuix/internal/hybrid/Config;->getVendor()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {p0}, Lmiuix/internal/hybrid/ConfigUtils;->buildFeatures(Lmiuix/internal/hybrid/Config;)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p0}, Lmiuix/internal/hybrid/ConfigUtils;->buildPermissions(Lmiuix/internal/hybrid/Config;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    const-string v1, "}"

    .line 69
    invoke-static {v0, p0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method
