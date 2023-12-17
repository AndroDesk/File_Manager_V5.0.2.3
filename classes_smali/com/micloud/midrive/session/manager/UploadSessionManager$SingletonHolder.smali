.class Lcom/micloud/midrive/session/manager/UploadSessionManager$SingletonHolder;
.super Ljava/lang/Object;
.source "UploadSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/manager/UploadSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/micloud/midrive/session/manager/UploadSessionManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/manager/UploadSessionManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/manager/UploadSessionManager;-><init>(Lcom/micloud/midrive/session/manager/UploadSessionManager$1;)V

    .line 7
    sput-object v0, Lcom/micloud/midrive/session/manager/UploadSessionManager$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/session/manager/UploadSessionManager;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
