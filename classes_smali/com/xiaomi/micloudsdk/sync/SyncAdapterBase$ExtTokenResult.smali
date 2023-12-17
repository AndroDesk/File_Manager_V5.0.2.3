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
.method public constructor <init>(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->this$0:Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->extTokenStr:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->error:Ljava/lang/Throwable;

    .line 10
    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->extTokenStr:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;)Ljava/lang/Throwable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->error:Ljava/lang/Throwable;

    .line 3
    return-object p0
.end method
