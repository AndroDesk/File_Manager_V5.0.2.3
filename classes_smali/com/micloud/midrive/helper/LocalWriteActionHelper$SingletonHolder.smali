.class Lcom/micloud/midrive/helper/LocalWriteActionHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "LocalWriteActionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/helper/LocalWriteActionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/micloud/midrive/helper/LocalWriteActionHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/micloud/midrive/helper/LocalWriteActionHelper;-><init>(Lcom/micloud/midrive/helper/LocalWriteActionHelper$1;)V

    sput-object v0, Lcom/micloud/midrive/helper/LocalWriteActionHelper$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/micloud/midrive/helper/LocalWriteActionHelper;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/helper/LocalWriteActionHelper$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/helper/LocalWriteActionHelper;

    return-object v0
.end method
