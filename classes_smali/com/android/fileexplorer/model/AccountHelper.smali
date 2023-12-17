.class public Lcom/android/fileexplorer/model/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# static fields
.field private static final XIAOMI_KEY_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field private static mAccountHelperInstance:Lcom/android/fileexplorer/model/AccountHelper;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/model/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/AccountHelper;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/AccountHelper;->mAccountHelperInstance:Lcom/android/fileexplorer/model/AccountHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/fileexplorer/model/AccountHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/AccountHelper;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/AccountHelper;->mAccountHelperInstance:Lcom/android/fileexplorer/model/AccountHelper;

    :cond_b
    sget-object v0, Lcom/android/fileexplorer/model/AccountHelper;->mAccountHelperInstance:Lcom/android/fileexplorer/model/AccountHelper;

    return-object v0
.end method


# virtual methods
.method public getCurrentAccount()Landroid/accounts/Account;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/model/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method
