.class Lcom/micloud/midrive/session/manager/DownloadSessionManager$SingletonHolder;
.super Ljava/lang/Object;
.source "DownloadSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/manager/DownloadSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/micloud/midrive/session/manager/DownloadSessionManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;-><init>(Lcom/micloud/midrive/session/manager/DownloadSessionManager$1;)V

    sput-object v0, Lcom/micloud/midrive/session/manager/DownloadSessionManager$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
