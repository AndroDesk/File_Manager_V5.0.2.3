.class Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$MiCloudNetEventStatInjectorHolder;
.super Ljava/lang/Object;
.source "MiCloudNetEventStatInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiCloudNetEventStatInjectorHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;-><init>(Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$1;)V

    sput-object v0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$MiCloudNetEventStatInjectorHolder;->instance:Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;
    .registers 1

    sget-object v0, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector$MiCloudNetEventStatInjectorHolder;->instance:Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    return-object v0
.end method
