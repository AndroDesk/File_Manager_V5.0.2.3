.class public final synthetic Lcom/android/fileexplorer/widget/helper/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/widget/helper/a;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/widget/helper/a;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_22

    :pswitch_6  #0x3
    check-cast p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-static {p1}, Lcom/micloud/midrive/task/SyncTask;->b(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d  #0x2
    check-cast p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->g(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_14  #0x1
    check-cast p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-static {p1}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->e(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1b  #0x0
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileInfo;->getFileId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :goto_22
    check-cast p1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    invoke-static {p1}, Lcom/micloud/midrive/task/SyncTask;->c(Lcom/micloud/midrive/infos/SyncTotalFileInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_14  #00000001
        :pswitch_d  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
