.class Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;
.super Lm1/c$a;
.source "KssMasterRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KscTransferListener"
.end annotation


# instance fields
.field public mMiCloudFileListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

.field public final synthetic this$0:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->this$0:Lcom/xiaomi/opensdk/file/sdk/KssMasterRef;

    .line 3
    invoke-direct {p0}, Lm1/c$a;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->mMiCloudFileListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    .line 8
    return-void
.end method


# virtual methods
.method public onDataReceived(JJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->mMiCloudFileListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;->onDataReceived(JJ)V

    .line 8
    :cond_7
    return-void
.end method

.method public onDataSended(JJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/sdk/KssMasterRef$KscTransferListener;->mMiCloudFileListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;->onDataSended(JJ)V

    .line 8
    :cond_7
    return-void
.end method
