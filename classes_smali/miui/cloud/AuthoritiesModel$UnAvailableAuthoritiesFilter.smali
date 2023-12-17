.class Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;
.super Ljava/lang/Object;
.source "AuthoritiesModel.java"

# interfaces
.implements Lmiui/cloud/AuthoritiesModel$IFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/AuthoritiesModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnAvailableAuthoritiesFilter"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiui/cloud/AuthoritiesModel$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;-><init>()V

    return-void
.end method

.method private getPkgInfoNotExistAuthorities(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lmiui/cloud/AuthoritiesModel;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_2c
    if-ge v6, v4, :cond_3b

    aget-object v7, v2, v6

    invoke-static {p1, v7}, Lmiui/cloud/util/PkgInfoUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    const/4 v5, 0x1

    goto :goto_3b

    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_3b
    :goto_3b
    if-nez v5, :cond_11

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_41
    return-object v0
.end method


# virtual methods
.method public filter(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.xiaomi.mms.providers.SmsProvider"

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, "com.miui.player.cloud"

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, "com.miui.player"

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, "support_google_csp_sync"

    invoke-static {v0}, Lmiui/cloud/util/DeviceFeatureUtils;->hasDeviceFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {}, Lmiui/cloud/AuthoritiesModel;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/cloud/AuthoritiesModel;->isMiuiAppAuthority(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_39
    invoke-direct {p0, p1}, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;->getPkgInfoNotExistAuthorities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->hasSmsCapability(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "sms"

    if-nez v0, :cond_4b

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4b
    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->hasVoiceCapability(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_56

    const-string p1, "call_log"

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_56
    invoke-static {}, Lmiui/cloud/util/SysHelper;->hasModemCapability()Z

    move-result p1

    const-string v0, "antispam"

    if-nez p1, :cond_61

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_61
    invoke-static {}, Lmiui/cloud/util/BuildUtil;->isInternationalBuild()Z

    move-result p1

    if-eqz p1, :cond_6a

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6a
    invoke-static {}, Lmiui/cloud/os/MultiuserUtils;->myUserId()I

    move-result p1

    invoke-static {}, Lmiui/cloud/os/MultiuserUtils;->get_USER_OWNER()I

    move-result v2

    if-eq p1, v2, :cond_7a

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7a
    const-string p1, "com.miui.browser"

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "com.miui.browser.global"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-static {}, Lmiui/cloud/util/BuildUtil;->isInternationalBuild()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_97

    :cond_94
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_97
    :goto_97
    return-void
.end method
