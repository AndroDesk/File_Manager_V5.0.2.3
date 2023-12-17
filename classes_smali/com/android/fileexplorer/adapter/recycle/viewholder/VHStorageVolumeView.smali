.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;
.source "VHStorageVolumeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder<",
        "Lcom/android/fileexplorer/model/StorageVolumeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mSpaceText:Landroid/widget/TextView;

.field private mVolumeName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    if-eqz p1, :cond_20

    .line 6
    const/4 p2, 0x1

    .line 7
    new-array p2, p2, [Landroid/view/View;

    .line 9
    const/4 v0, 0x0

    .line 10
    aput-object p1, p2, v0

    .line 12
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 19
    move-result-object p2

    .line 20
    const/high16 v1, 0x3f800000  # 1.0f

    .line 22
    new-array v2, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 24
    invoke-interface {p2, v1, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 27
    move-result-object p2

    .line 28
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 30
    invoke-interface {p2, p1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 33
    :cond_20
    const p2, 0x7f0a04a2

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Landroid/widget/ImageView;

    .line 42
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mImage:Landroid/widget/ImageView;

    .line 44
    const p2, 0x7f0a012a

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Landroid/widget/TextView;

    .line 53
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mVolumeName:Landroid/widget/TextView;

    .line 55
    const p2, 0x7f0a03be

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/TextView;

    .line 64
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method private bindCloudStorage(Lcom/android/fileexplorer/model/StorageVolumeInfo;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mImage:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object p1, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 7
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->getVolumeIcon(Lcom/android/fileexplorer/model/StorageInfo;)I

    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mVolumeName:Landroid/widget/TextView;

    .line 16
    if-eqz p1, :cond_17

    .line 18
    const v0, 0x7f11006e

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 24
    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    .line 26
    if-eqz p1, :cond_34

    .line 28
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_2a

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f1100d4

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 42
    return-void

    .line 43
    :cond_2a
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    .line 47
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;-><init>(Landroid/widget/TextView;)V

    .line 50
    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestQuotaInfo(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;)V

    .line 53
    :cond_34
    return-void
.end method

.method private getVolumeIcon(Lcom/android/fileexplorer/model/StorageInfo;)I
    .registers 4

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_4
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "//"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_14

    .line 17
    const p1, 0x7f0806a4

    .line 20
    return p1

    .line 21
    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_22

    .line 31
    const p1, 0x7f080122

    .line 34
    return p1

    .line 35
    :cond_22
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_30

    .line 45
    const p1, 0x7f080298

    .line 48
    return p1

    .line 49
    :cond_30
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    const-string v1, "com.android.mtp.documents"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_40

    .line 61
    const p1, 0x7f0806a3

    .line 64
    return p1

    .line 65
    :cond_40
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4a

    .line 71
    const p1, 0x7f0802a6

    .line 74
    return p1

    .line 75
    :cond_4a
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_54

    .line 81
    const p1, 0x7f080295

    .line 84
    return p1

    .line 85
    :cond_54
    const p1, 0x7f080296

    .line 88
    return p1
.end method


# virtual methods
.method public onBind(Lcom/android/fileexplorer/model/StorageVolumeInfo;IZZ)V
    .registers 9

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 3
    iget-object p3, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {p3}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 4
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->bindCloudStorage(Lcom/android/fileexplorer/model/StorageVolumeInfo;)V

    goto :goto_5a

    .line 5
    :cond_f
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mImage:Landroid/widget/ImageView;

    if-eqz p3, :cond_1c

    .line 6
    iget-object p4, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-direct {p0, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->getVolumeIcon(Lcom/android/fileexplorer/model/StorageInfo;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    :cond_1c
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mVolumeName:Landroid/widget/TextView;

    if-eqz p3, :cond_2f

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p3

    iget-object p4, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {p3, p4}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    move-result-object p3

    .line 9
    iget-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mVolumeName:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_2f
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    if-eqz p3, :cond_5a

    iget-object p3, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->sdCardInfo:Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    if-eqz p3, :cond_5a

    const p4, 0x7f1102c9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11
    iget-wide v2, p3, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    .line 12
    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    iget-object p1, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->sdCardInfo:Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    iget-wide v1, p1, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    .line 13
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p3

    .line 14
    invoke-static {p4, v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_5a
    :goto_5a
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$1;

    invoke-direct {p3, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->onBind(Lcom/android/fileexplorer/model/StorageVolumeInfo;IZZ)V

    return-void
.end method
