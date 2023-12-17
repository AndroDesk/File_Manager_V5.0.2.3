.class public final Lm1/j$a;
.super Ljava/lang/Object;
.source "KssTransferStopper.java"

# interfaces
.implements Lm1/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lm1/j$a;->a:Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;

    .line 6
    return-void
.end method


# virtual methods
.method public final checkStop()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lm1/j$a;->a:Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;

    .line 3
    invoke-interface {v0}, Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;->checkStop()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
