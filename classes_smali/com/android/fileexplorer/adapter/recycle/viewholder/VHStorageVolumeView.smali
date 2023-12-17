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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    if-eqz p1, :cond_20

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    const/high16 v1, 0x3f800000  # 1.0f

    new-array v2, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p2, v1, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_20
    const p2, 0x7f032934

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mImage:Landroid/widget/ImageView;

    const p2, 0x7f032cbc

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mVolumeName:Landroid/widget/TextView;

    const p2, 0x7f032e28

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    return-void
.end method

.method private bindCloudStorage(Lcom/android/fileexplorer/model/StorageVolumeInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object p1, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->getVolumeIcon(Lcom/android/fileexplorer/model/StorageInfo;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_d
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mVolumeName:Landroid/widget/TextView;

    if-eqz p1, :cond_17

    const v0, 0x7f11006e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_17
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    if-eqz p1, :cond_34

    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    const v0, 0x7f1100d4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_2a
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;-><init>(Landroid/widget/TextView;)V

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestQuotaInfo(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;)V

    :cond_34
    return-void
.end method

.method private getVolumeIcon(Lcom/android/fileexplorer/model/StorageInfo;)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const p1, 0x7f0806a4

    return p1

    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isSDCardVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v0

    if-eqz v0, :cond_22

    const p1, 0x7f080122

    return p1

    :cond_22
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/model/StorageHelper;->isUsbVolume(Lcom/android/fileexplorer/model/StorageInfo;)Z

    move-result v0

    if-eqz v0, :cond_30

    const p1, 0x7f080298

    return p1

    :cond_30
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.mtp.documents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const p1, 0x7f0806a3

    return p1

    :cond_40
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isXspace()Z

    move-result v0

    if-eqz v0, :cond_4a

    const p1, 0x7f0802a6

    return p1

    :cond_4a
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    move-result p1

    if-eqz p1, :cond_54

    const p1, 0x7f080295

    return p1

    :cond_54
    const p1, 0x7f080296

    return p1
.end method


# virtual methods
.method public onBind(Lcom/android/fileexplorer/model/StorageVolumeInfo;IZZ)V
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    iget-object p3, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {p3}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->bindCloudStorage(Lcom/android/fileexplorer/model/StorageVolumeInfo;)V

    goto :goto_5a

    :cond_f
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mImage:Landroid/widget/ImageView;

    if-eqz p3, :cond_1c

    iget-object p4, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-direct {p0, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->getVolumeIcon(Lcom/android/fileexplorer/model/StorageInfo;)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1c
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mVolumeName:Landroid/widget/TextView;

    if-eqz p3, :cond_2f

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object p3

    iget-object p4, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->storageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {p3, p4}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mVolumeName:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2f
    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    if-eqz p3, :cond_5a

    iget-object p3, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->sdCardInfo:Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    if-eqz p3, :cond_5a

    const p4, 0x7f1102c9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p3, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    iget-object p1, p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;->sdCardInfo:Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    iget-wide v1, p1, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p3

    invoke-static {p4, v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->mSpaceText:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    check-cast p1, Lcom/android/fileexplorer/model/StorageVolumeInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView;->onBind(Lcom/android/fileexplorer/model/StorageVolumeInfo;IZZ)V

    return-void
.end method
