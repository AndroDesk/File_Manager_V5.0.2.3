.class public Lmiui/cloud/AuthoritiesModel;
.super Ljava/lang/Object;
.source "AuthoritiesModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/AuthoritiesModel$ISorter;,
        Lmiui/cloud/AuthoritiesModel$IFilter;,
        Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;
    }
.end annotation


# static fields
.field private static final AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AUTHORITY_TO_PKG_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_TYPE_XIAOMI_ACCOUNT:Ljava/lang/String; = "com.xiaomi"

.field private static final FEATURE_SUPPORT_GOOGLE_CSP_SYNC:Ljava/lang/String; = "support_google_csp_sync"

.field public static final UNAVAILABLE_AUTHORITIES_FILTER:Lmiui/cloud/AuthoritiesModel$IFilter;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAccountType:Ljava/lang/String;

.field private mAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v1, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_PKG_MAP:Ljava/util/HashMap;

    .line 15
    const-string v2, "sms"

    .line 17
    const-string v3, "com.android.mms"

    .line 19
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v2, "com.android.contacts"

    .line 24
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v3, "call_log"

    .line 29
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "com.android.calendar"

    .line 34
    const-string v2, "com.xiaomi.calendar"

    .line 36
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;-><init>(Lmiui/cloud/AuthoritiesModel$1;)V

    .line 49
    sput-object v0, Lmiui/cloud/AuthoritiesModel;->UNAVAILABLE_AUTHORITIES_FILTER:Lmiui/cloud/AuthoritiesModel$IFilter;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    .line 14
    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mAccount:Landroid/accounts/Account;

    const-string p1, "com.xiaomi"

    .line 16
    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lmiui/cloud/AuthoritiesModel;->mAccount:Landroid/accounts/Account;

    .line 5
    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lmiui/cloud/AuthoritiesModel;->mAccount:Landroid/accounts/Account;

    .line 10
    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    .line 11
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_PKG_MAP:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public static isMiuiAppAuthority(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    if-eqz p1, :cond_13

    .line 11
    invoke-static {p0, p1}, Lmiui/cloud/util/PkgInfoUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 21
    :goto_14
    return p0
.end method


# virtual methods
.method public filter(Ljava/util/List;)Lmiui/cloud/AuthoritiesModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/cloud/AuthoritiesModel;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public filter([Ljava/lang/String;)Lmiui/cloud/AuthoritiesModel;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lmiui/cloud/AuthoritiesModel;->filter(Ljava/util/List;)Lmiui/cloud/AuthoritiesModel;

    move-result-object p1

    return-object p1
.end method

.method public filterBy(Lmiui/cloud/AuthoritiesModel$IFilter;)Lmiui/cloud/AuthoritiesModel;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    .line 5
    invoke-interface {p1, v0, v1}, Lmiui/cloud/AuthoritiesModel$IFilter;->filter(Landroid/content/Context;Ljava/util/List;)V

    .line 8
    return-object p0
.end method

.method public getAllAuthorities()Lmiui/cloud/AuthoritiesModel;
    .registers 8

    .line 1
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_7
    if-ge v3, v1, :cond_3f

    .line 10
    aget-object v4, v0, v3

    .line 12
    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    .line 15
    move-result v5

    .line 16
    if-nez v5, :cond_12

    .line 18
    goto :goto_3c

    .line 19
    :cond_12
    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    .line 21
    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 23
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1d

    .line 29
    goto :goto_3c

    .line 30
    :cond_1d
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 32
    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 41
    move-result-object v5

    .line 42
    if-nez v5, :cond_2c

    .line 44
    goto :goto_3c

    .line 45
    :cond_2c
    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mAccount:Landroid/accounts/Account;

    .line 47
    if-eqz v5, :cond_37

    .line 49
    invoke-static {v5, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    .line 52
    move-result v5

    .line 53
    if-gtz v5, :cond_37

    .line 55
    goto :goto_3c

    .line 56
    :cond_37
    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    .line 58
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_7

    .line 64
    :cond_3f
    return-object p0
.end method

.method public sortBy(Lmiui/cloud/AuthoritiesModel$ISorter;)Lmiui/cloud/AuthoritiesModel;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    .line 5
    invoke-interface {p1, v0, v1}, Lmiui/cloud/AuthoritiesModel$ISorter;->sort(Landroid/content/Context;Ljava/util/List;)V

    .line 8
    return-object p0
.end method

.method public toList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    .line 3
    return-object v0
.end method
