.class public Lcom/micloud/midrive/manager/MiDriveAccountManager;
.super Ljava/lang/Object;
.source "MiDriveAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/manager/MiDriveAccountManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private volatile mAccount:Landroid/accounts/Account;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/manager/MiDriveAccountManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;
    .registers 1

    .line 1
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager$SingletonHolder;->access$100()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/manager/MiDriveAccountManager;->mAccount:Landroid/accounts/Account;

    .line 3
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/utils/AccountUtils;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/micloud/midrive/manager/MiDriveAccountManager;->mAccount:Landroid/accounts/Account;

    .line 7
    return-void
.end method

.method public tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/utils/AccountUtils;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/micloud/midrive/manager/MiDriveAccountManager;->mAccount:Landroid/accounts/Account;

    .line 7
    return-object p1
.end method
