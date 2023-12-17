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
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiui/cloud/AuthoritiesModel$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;-><init>()V

    .line 4
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lmiui/cloud/AuthoritiesModel;->access$100()Ljava/util/HashMap;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_41

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, [Ljava/lang/String;

    .line 42
    array-length v4, v2

    .line 43
    const/4 v5, 0x0

    .line 44
    move v6, v5

    .line 45
    :goto_2c
    if-ge v6, v4, :cond_3b

    .line 47
    aget-object v7, v2, v6

    .line 49
    invoke-static {p1, v7}, Lmiui/cloud/util/PkgInfoUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_38

    .line 55
    const/4 v5, 0x1

    .line 56
    goto :goto_3b

    .line 57
    :cond_38
    add-int/lit8 v6, v6, 0x1

    .line 59
    goto :goto_2c

    .line 60
    :cond_3b
    :goto_3b
    if-nez v5, :cond_11

    .line 62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_11

    .line 66
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

    .line 1
    const-string v0, "com.xiaomi.mms.providers.SmsProvider"

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    const-string v0, "com.miui.player.cloud"

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    const-string v0, "com.miui.player"

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    const-string v0, "support_google_csp_sync"

    .line 18
    invoke-static {v0}, Lmiui/cloud/util/DeviceFeatureUtils;->hasDeviceFeature(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_39

    .line 24
    invoke-static {}, Lmiui/cloud/AuthoritiesModel;->access$000()Ljava/util/HashMap;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_39

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-static {p1, v1}, Lmiui/cloud/AuthoritiesModel;->isMiuiAppAuthority(Landroid/content/Context;Ljava/lang/String;)Z

    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_23

    .line 54
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    goto :goto_23

    .line 58
    :cond_39
    invoke-direct {p0, p1}, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;->getPkgInfoNotExistAuthorities(Landroid/content/Context;)Ljava/util/List;

    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 65
    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->hasSmsCapability(Landroid/content/Context;)Z

    .line 68
    move-result v0

    .line 69
    const-string v1, "sms"

    .line 71
    if-nez v0, :cond_4b

    .line 73
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 76
    :cond_4b
    invoke-static {p1}, Lmiui/cloud/util/SysHelper;->hasVoiceCapability(Landroid/content/Context;)Z

    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_56

    .line 82
    const-string p1, "call_log"

    .line 84
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    :cond_56
    invoke-static {}, Lmiui/cloud/util/SysHelper;->hasModemCapability()Z

    .line 90
    move-result p1

    .line 91
    const-string v0, "antispam"

    .line 93
    if-nez p1, :cond_61

    .line 95
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_61
    invoke-static {}, Lmiui/cloud/util/BuildUtil;->isInternationalBuild()Z

    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_6a

    .line 104
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_6a
    invoke-static {}, Lmiui/cloud/os/MultiuserUtils;->myUserId()I

    .line 110
    move-result p1

    .line 111
    invoke-static {}, Lmiui/cloud/os/MultiuserUtils;->get_USER_OWNER()I

    .line 114
    move-result v2

    .line 115
    if-eq p1, v2, :cond_7a

    .line 117
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_7a
    const-string p1, "com.miui.browser"

    .line 125
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_97

    .line 131
    const-string v0, "com.miui.browser.global"

    .line 133
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_97

    .line 139
    invoke-static {}, Lmiui/cloud/util/BuildUtil;->isInternationalBuild()Z

    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_94

    .line 145
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    goto :goto_97

    .line 149
    :cond_94
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    :cond_97
    :goto_97
    return-void
.end method
