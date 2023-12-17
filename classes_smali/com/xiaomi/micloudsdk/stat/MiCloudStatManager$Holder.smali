.class Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;
.super Ljava/lang/Object;
.source "MiCloudStatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final _instance:Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;-><init>(Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$1;)V

    sput-object v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;->_instance:Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;
    .registers 1

    sget-object v0, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager$Holder;->_instance:Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    return-object v0
.end method
