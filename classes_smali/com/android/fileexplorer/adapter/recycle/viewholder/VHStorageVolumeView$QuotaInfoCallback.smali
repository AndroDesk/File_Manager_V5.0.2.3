.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;
.super Ljava/lang/Object;
.source "VHStorageVolumeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuotaInfoCallback"
.end annotation


# instance fields
.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;->mView:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    const-string v0, "QuotaInfo error"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "MiDrive_LOG"

    .line 20
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onQuotaInfoReceive(Lcom/micloud/midrive/infos/MiDriveQuotaInfo;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;->mView:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3b

    .line 9
    const v0, 0x7f1102c9

    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    const/4 v2, 0x0

    .line 16
    iget-wide v3, p1, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;->total:J

    .line 18
    iget-wide v5, p1, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;->used:J

    .line 20
    sub-long v7, v3, v5

    .line 22
    const-wide/16 v9, 0x0

    .line 24
    cmp-long v7, v7, v9

    .line 26
    if-lez v7, :cond_1d

    .line 28
    sub-long v9, v3, v5

    .line 30
    :cond_1d
    invoke-static {v9, v10}, Lcom/android/fileexplorer/util/MiuiFormatter;->getCloudQuantityStringWithUnit(J)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v1, v2

    .line 36
    const/4 v2, 0x1

    .line 37
    iget-wide v3, p1, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;->total:J

    .line 39
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/MiuiFormatter;->getCloudQuantityStringWithUnit(J)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    aput-object p1, v1, v2

    .line 45
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;->mView:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_3b
    return-void
.end method
