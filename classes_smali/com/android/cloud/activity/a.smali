.class public final synthetic Lcom/android/cloud/activity/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/cloud/activity/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/cloud/activity/a;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_e

    :pswitch_6  #0x1
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->c()V

    return-void

    :pswitch_a  #0x0
    invoke-static {}, Lcom/android/cloud/util/ExitUtils;->exitApp()V

    return-void

    :goto_e
    invoke-static {}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->d()V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_a  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
