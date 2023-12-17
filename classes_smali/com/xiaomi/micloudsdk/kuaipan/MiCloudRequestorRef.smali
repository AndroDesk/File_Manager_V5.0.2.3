.class public abstract Lcom/xiaomi/micloudsdk/kuaipan/MiCloudRequestorRef;
.super Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
.source "MiCloudRequestorRef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;-><init>(Landroid/content/Context;)V

    return-void
.end method
