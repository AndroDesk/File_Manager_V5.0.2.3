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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addFeature(Lmiuix/internal/hybrid/Feature;)V
    .registers 4

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    invoke-virtual {p1}, Lmiuix/internal/hybrid/Feature;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPermission(Lmiuix/internal/hybrid/Permission;)V
    .registers 4

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    invoke-virtual {p1}, Lmiuix/internal/hybrid/Permission;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearFeatures()V
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearPermissions()V
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearPreferences()V
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Lmiuix/internal/hybrid/Feature;
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/internal/hybrid/Feature;

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

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

    return-object v0
.end method

.method public getPermission(Ljava/lang/String;)Lmiuix/internal/hybrid/Permission;
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/internal/hybrid/Permission;

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

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    return-object v0
.end method

.method public getPreference(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

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

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    return-object v0
.end method

.method public getSecurity()Lmiuix/internal/hybrid/Security;
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->security:Lmiuix/internal/hybrid/Security;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->content:Ljava/lang/String;

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

    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->features:Ljava/util/Map;

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

    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->permissions:Ljava/util/Map;

    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->preferences:Ljava/util/Map;

    return-void
.end method

.method public setSecurity(Lmiuix/internal/hybrid/Security;)V
    .registers 2

    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->security:Lmiuix/internal/hybrid/Security;

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiuix/internal/hybrid/Config;->vendor:Ljava/lang/String;

    return-void
.end method
