.class Lcom/micloud/midrive/manager/MiDriveAccountManager$SingletonHolder;
.super Ljava/lang/Object;
.source "MiDriveAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/manager/MiDriveAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/micloud/midrive/manager/MiDriveAccountManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/manager/MiDriveAccountManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/micloud/midrive/manager/MiDriveAccountManager;-><init>(Lcom/micloud/midrive/manager/MiDriveAccountManager$1;)V

    sput-object v0, Lcom/micloud/midrive/manager/MiDriveAccountManager$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/manager/MiDriveAccountManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/micloud/midrive/manager/MiDriveAccountManager;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/manager/MiDriveAccountManager$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/manager/MiDriveAccountManager;

    return-object v0
.end method
