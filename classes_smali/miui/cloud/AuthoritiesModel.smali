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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_PKG_MAP:Ljava/util/HashMap;

    const-string v2, "sms"

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "call_log"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.android.calendar"

    const-string v2, "com.xiaomi.calendar"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/cloud/AuthoritiesModel$UnAvailableAuthoritiesFilter;-><init>(Lmiui/cloud/AuthoritiesModel$1;)V

    sput-object v0, Lmiui/cloud/AuthoritiesModel;->UNAVAILABLE_AUTHORITIES_FILTER:Lmiui/cloud/AuthoritiesModel$IFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mAccount:Landroid/accounts/Account;

    const-string p1, "com.xiaomi"

    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/cloud/AuthoritiesModel;->mAccount:Landroid/accounts/Account;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/cloud/AuthoritiesModel;->mAccount:Landroid/accounts/Account;

    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object p1, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_PKG_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method public static isMiuiAppAuthority(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lmiui/cloud/AuthoritiesModel;->AUTHORITY_TO_MIUI_APP_PKG_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_13

    invoke-static {p0, p1}, Lmiui/cloud/util/PkgInfoUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

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

    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public filter([Ljava/lang/String;)Lmiui/cloud/AuthoritiesModel;
    .registers 2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/cloud/AuthoritiesModel;->filter(Ljava/util/List;)Lmiui/cloud/AuthoritiesModel;

    move-result-object p1

    return-object p1
.end method

.method public filterBy(Lmiui/cloud/AuthoritiesModel$IFilter;)Lmiui/cloud/AuthoritiesModel;
    .registers 4

    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lmiui/cloud/AuthoritiesModel$IFilter;->filter(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method

.method public getAllAuthorities()Lmiui/cloud/AuthoritiesModel;
    .registers 8

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_3f

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_3c

    :cond_12
    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mAccountType:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_3c

    :cond_1d
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-nez v5, :cond_2c

    goto :goto_3c

    :cond_2c
    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mAccount:Landroid/accounts/Account;

    if-eqz v5, :cond_37

    invoke-static {v5, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_37

    goto :goto_3c

    :cond_37
    iget-object v5, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_3f
    return-object p0
.end method

.method public sortBy(Lmiui/cloud/AuthoritiesModel$ISorter;)Lmiui/cloud/AuthoritiesModel;
    .registers 4

    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lmiui/cloud/AuthoritiesModel$ISorter;->sort(Landroid/content/Context;Ljava/util/List;)V

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

    iget-object v0, p0, Lmiui/cloud/AuthoritiesModel;->mAuthorities:Ljava/util/List;

    return-object v0
.end method
