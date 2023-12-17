.class public final synthetic Lcom/android/cloud/fragment/model/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Li2/g;
.implements Ll2/c;
.implements Lcom/android/fileexplorer/model/category/CategoryEntryClickListener$CategoryEntryInnerClickListener;
.implements Ll2/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/cloud/fragment/model/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/cloud/fragment/model/g;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1e

    :pswitch_6  #0x4
    check-cast p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->i(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void

    :pswitch_c  #0x3
    check-cast p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->r(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void

    :pswitch_12  #0x2
    check-cast p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->o(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void

    :pswitch_18  #0x1
    check-cast p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->k(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void

    :goto_1e
    check-cast p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    invoke-static {p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->x(Lcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_12  #00000002
        :pswitch_c  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method

.method public final onClickEntry(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)V
    .registers 2

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/MoreCategoryFragment;->b(Lcom/android/fileexplorer/model/category/FileCategoryEntity;)V

    return-void
.end method

.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/cloud/fragment/model/g;->a:I

    packed-switch v0, :pswitch_data_e

    goto :goto_a

    :pswitch_6  #0x7
    invoke-static {}, Lcom/android/fileexplorer/util/AutoDisposeKt;->a()V

    return-void

    :goto_a
    invoke-static {}, Lcom/android/fileexplorer/util/AutoDisposeKt;->b()V

    return-void

    :pswitch_data_e
    .packed-switch 0x7
        :pswitch_6  #00000007
    .end packed-switch
.end method

.method public final subscribe(Li2/f;)V
    .registers 2

    invoke-static {p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->f(Li2/f;)V

    return-void
.end method
