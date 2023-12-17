.class public Lmiuix/internal/hybrid/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field private content:Ljava/lang/String;

.field private features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/internal/hybrid/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private permissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/internal/hybrid/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private security:Lmiuix/internal/hybrid/Security;

.field private vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    .line 25
    return-void
.end method


# virtual methods
.method public addFeature(Lmiuix/internal/hybrid/Feature;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Lmiuix/internal/hybrid/Feature;->getName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public addPermission(Lmiuix/internal/hybrid/Permission;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    .line 3
    invoke-virtual {p1}, Lmiuix/internal/hybrid/Permission;->getUri()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public clearFeatures()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method public clearPermissions()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method public clearPreferences()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->content:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Lmiuix/internal/hybrid/Feature;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lmiuix/internal/hybrid/Feature;

    .line 9
    return-object p1
.end method

.method public getFeatures()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/internal/hybrid/Feature;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getPermission(Ljava/lang/String;)Lmiuix/internal/hybrid/Permission;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lmiuix/internal/hybrid/Permission;

    .line 9
    return-object p1
.end method

.method public getPermissions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/internal/hybrid/Permission;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getPreference(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    return-object p1
.end method

.method public getPreferences()Ljava/util/Map;
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
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public getSecurity()Lmiuix/internal/hybrid/Security;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->security:Lmiuix/internal/hybrid/Security;

    .line 3
    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->vendor:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->content:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFeatures(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/internal/hybrid/Feature;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    .line 3
    return-void
.end method

.method public setPermissions(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/internal/hybrid/Permission;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    .line 3
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public setPreferences(Ljava/util/Map;)V
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
    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    .line 3
    return-void
.end method

.method public setSecurity(Lmiuix/internal/hybrid/Security;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->security:Lmiuix/internal/hybrid/Security;

    .line 3
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->vendor:Ljava/lang/String;

    .line 3
    return-void
.end method
