.class Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$Singleton;
.super Ljava/lang/Object;
.source "CloudTransferStatusCacheModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    invoke-direct {v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;-><init>()V

    sput-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$Singleton;->INSTANCE:Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;
    .registers 1

    sget-object v0, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel$Singleton;->INSTANCE:Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    return-object v0
.end method
