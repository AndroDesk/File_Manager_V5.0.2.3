.class public Lcom/android/fileexplorer/model/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# static fields
.field private static final XIAOMI_KEY_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field private static mAccountHelperInstance:Lcom/android/fileexplorer/model/AccountHelper;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/model/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/AccountHelper;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/AccountHelper;->mAccountHelperInstance:Lcom/android/fileexplorer/model/AccountHelper;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/android/fileexplorer/model/AccountHelper;

    .line 7
    invoke-direct {v0}, Lcom/android/fileexplorer/model/AccountHelper;-><init>()V

    .line 10
    sput-object v0, Lcom/android/fileexplorer/model/AccountHelper;->mAccountHelperInstance:Lcom/android/fileexplorer/model/AccountHelper;

    .line 12
    :cond_b
    sget-object v0, Lcom/android/fileexplorer/model/AccountHelper;->mAccountHelperInstance:Lcom/android/fileexplorer/model/AccountHelper;

    .line 14
    return-object v0
.end method


# virtual methods
.method public getCurrentAccount()Landroid/accounts/Account;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 3
    const-string v1, "com.xiaomi"

    .line 5
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    if-lez v1, :cond_f

    .line 12
    const/4 v1, 0x0

    .line 13
    aget-object v0, v0, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    :goto_10
    return-object v0
.end method
