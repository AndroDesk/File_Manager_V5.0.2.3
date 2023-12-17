.class Lcom/micloud/midrive/session/helper/UploadSessionHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "UploadSessionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/helper/UploadSessionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/micloud/midrive/session/helper/UploadSessionHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/micloud/midrive/session/helper/UploadSessionHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;-><init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper$1;)V

    sput-object v0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/session/helper/UploadSessionHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
