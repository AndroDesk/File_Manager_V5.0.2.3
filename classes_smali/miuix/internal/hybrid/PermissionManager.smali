.class public Lmiuix/internal/hybrid/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# instance fields
.field private mConfig:Lmiuix/internal/hybrid/Config;

.field private mValidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/internal/hybrid/Config;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    .line 11
    iput-object p1, p0, Lmiuix/internal/hybrid/PermissionManager;->mConfig:Lmiuix/internal/hybrid/Config;

    .line 13
    return-void
.end method

.method private initPermission(Ljava/lang/String;)Z
    .registers 11

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "file"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    const-string v1, "*"

    .line 17
    if-eqz v0, :cond_14

    .line 19
    move-object p1, v1

    .line 20
    goto :goto_18

    .line 21
    :cond_14
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    :goto_18
    iget-object v0, p0, Lmiuix/internal/hybrid/PermissionManager;->mConfig:Lmiuix/internal/hybrid/Config;

    .line 27
    invoke-virtual {v0}, Lmiuix/internal/hybrid/Config;->getPermissions()Ljava/util/Map;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x0

    .line 40
    move v3, v2

    .line 41
    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_82

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lmiuix/internal/hybrid/Permission;

    .line 59
    invoke-virtual {v4}, Lmiuix/internal/hybrid/Permission;->getUri()Ljava/lang/String;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_46

    .line 69
    move-object v5, v1

    .line 70
    goto :goto_4e

    .line 71
    :cond_46
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    :goto_4e
    invoke-virtual {v4}, Lmiuix/internal/hybrid/Permission;->isApplySubdomains()Z

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_7c

    .line 85
    const-string v4, "\\."

    .line 87
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    array-length v6, v4

    .line 96
    array-length v7, v5

    .line 97
    const/4 v8, 0x1

    .line 98
    if-lt v6, v7, :cond_80

    .line 100
    move v3, v8

    .line 101
    :goto_64
    array-length v6, v5

    .line 102
    if-gt v3, v6, :cond_7a

    .line 104
    array-length v6, v4

    .line 105
    sub-int/2addr v6, v3

    .line 106
    aget-object v6, v4, v6

    .line 108
    array-length v7, v5

    .line 109
    sub-int/2addr v7, v3

    .line 110
    aget-object v7, v5, v7

    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v6

    .line 116
    if-nez v6, :cond_77

    .line 118
    move v3, v2

    .line 119
    goto :goto_80

    .line 120
    :cond_77
    add-int/lit8 v3, v3, 0x1

    .line 122
    goto :goto_64

    .line 123
    :cond_7a
    move v3, v8

    .line 124
    goto :goto_80

    .line 125
    :cond_7c
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v3

    .line 129
    :cond_80
    :goto_80
    if-eqz v3, :cond_28

    .line 131
    :cond_82
    return v3
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_15

    .line 9
    iget-object v0, p0, Lmiuix/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    .line 11
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/PermissionManager;->initPermission(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method
