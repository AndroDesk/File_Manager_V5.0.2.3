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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/j$a;->a:Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;

    return-void
.end method


# virtual methods
.method public final checkStop()Z
    .registers 2

    iget-object v0, p0, Lm1/j$a;->a:Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;

    invoke-interface {v0}, Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;->checkStop()Z

    move-result v0

    return v0
.end method
