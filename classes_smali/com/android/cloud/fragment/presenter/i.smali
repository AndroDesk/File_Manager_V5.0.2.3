.class public final synthetic Lcom/android/cloud/fragment/presenter/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll2/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/android/cloud/fragment/presenter/i;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/i;->b:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/cloud/fragment/presenter/i;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/i;->b:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;

    check-cast p1, Lcom/micloud/midrive/infos/MiDriveQuotaInfo;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->A(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;Lcom/micloud/midrive/infos/MiDriveQuotaInfo;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/i;->b:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->e(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHStorageVolumeView$QuotaInfoCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
