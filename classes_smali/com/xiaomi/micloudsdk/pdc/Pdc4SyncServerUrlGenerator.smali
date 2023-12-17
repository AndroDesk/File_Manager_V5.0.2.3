.class public Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;
.super Ljava/lang/Object;
.source "Pdc4SyncServerUrlGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssetUrlRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/%s/playurl"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v1, p2

    .line 31
    iget-object p1, p3, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->assetID:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x2

    .line 38
    aput-object p1, v1, p2

    .line 40
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public getBatchUploadRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/batch"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v1, p2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public getCommitAssetRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/commit"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v1, p2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public getCreateRequestPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 11
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    aput-object p1, v0, p2

    .line 18
    const-string p1, "/mic/pdc/v4.1/apps/%s/spaces/%s/records"

    .line 20
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public getCreateRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getCreateRequestPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public getDeleteRequestPath(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;
    .registers 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 11
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    aput-object p1, v0, p2

    .line 18
    invoke-virtual {p3}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getId()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x2

    .line 27
    aput-object p1, v0, p2

    .line 29
    const-string p1, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/delete"

    .line 31
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public getDeleteRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getDeleteRequestPath(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public getDownloadRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v1, p2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public getFetchChildrenRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/children"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v1, p2

    .line 31
    invoke-virtual {p3}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getParentId()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    const/4 p2, 0x2

    .line 40
    aput-object p1, v1, p2

    .line 42
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public getFetchRecordRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v1, p2

    .line 31
    invoke-virtual {p3}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->getId()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    const/4 p2, 0x2

    .line 40
    aput-object p1, v1, p2

    .line 42
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public getFetchRecordsByIndexRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/index"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v1, p2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public getRequestDownloadRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/%s"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v1, p2

    .line 31
    iget-object p1, p3, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->assetID:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x2

    .line 38
    aput-object p1, v1, p2

    .line 40
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public getRequestUploadAssetRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/assets/upload"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object p1, v1, v2

    .line 24
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v1, p2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public getUpdateRequestPath(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;
    .registers 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 11
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    aput-object p1, v0, p2

    .line 18
    invoke-virtual {p3}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getId()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x2

    .line 27
    aput-object p1, v0, p2

    .line 29
    const-string p1, "/mic/pdc/v4.1/apps/%s/spaces/%s/records/%s/update"

    .line 31
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public getUpdateRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;->URL_SYNC_BASE:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getUpdateRequestPath(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
