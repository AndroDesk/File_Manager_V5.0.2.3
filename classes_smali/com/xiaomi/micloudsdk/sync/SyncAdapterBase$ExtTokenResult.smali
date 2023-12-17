.class Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;
.super Ljava/lang/Object;
.source "SyncAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtTokenResult"
.end annotation


# instance fields
.field private final error:Ljava/lang/Throwable;

.field private final extTokenStr:Ljava/lang/String;

.field public final synthetic this$0:Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->this$0:Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->extTokenStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->extTokenStr:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;)Ljava/lang/Throwable;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->error:Ljava/lang/Throwable;

    return-object p0
.end method
