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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/hybrid/Config;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    iput-object p1, p0, Lmiuix/internal/hybrid/PermissionManager;->mConfig:Lmiuix/internal/hybrid/Config;

    return-void
.end method

.method private initPermission(Ljava/lang/String;)Z
    .registers 11

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "*"

    if-eqz v0, :cond_14

    move-object p1, v1

    goto :goto_18

    :cond_14
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    :goto_18
    iget-object v0, p0, Lmiuix/internal/hybrid/PermissionManager;->mConfig:Lmiuix/internal/hybrid/Config;

    invoke-virtual {v0}, Lmiuix/internal/hybrid/Config;->getPermissions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/internal/hybrid/Permission;

    invoke-virtual {v4}, Lmiuix/internal/hybrid/Permission;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    move-object v5, v1

    goto :goto_4e

    :cond_46
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    :goto_4e
    invoke-virtual {v4}, Lmiuix/internal/hybrid/Permission;->isApplySubdomains()Z

    move-result v4

    if-eqz v4, :cond_7c

    const-string v4, "\\."

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    array-length v7, v5

    const/4 v8, 0x1

    if-lt v6, v7, :cond_80

    move v3, v8

    :goto_64
    array-length v6, v5

    if-gt v3, v6, :cond_7a

    array-length v6, v4

    sub-int/2addr v6, v3

    aget-object v6, v4, v6

    array-length v7, v5

    sub-int/2addr v7, v3

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_77

    move v3, v2

    goto :goto_80

    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_7a
    move v3, v8

    goto :goto_80

    :cond_7c
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_80
    :goto_80
    if-eqz v3, :cond_28

    :cond_82
    return v3
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiuix/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lmiuix/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/PermissionManager;->initPermission(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget-object v0, p0, Lmiuix/internal/hybrid/PermissionManager;->mValidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
