.class public final synthetic Lcom/android/cloud/fragment/presenter/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll2/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

.field public final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZI)V
    .registers 4

    iput p3, p0, Lcom/android/cloud/fragment/presenter/d;->a:I

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/d;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iput-boolean p2, p0, Lcom/android/cloud/fragment/presenter/d;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/cloud/fragment/presenter/d;->a:I

    packed-switch v0, :pswitch_data_42

    goto :goto_38

    :pswitch_6  #0x4
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/d;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/presenter/d;->c:Z

    check-cast p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->n(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void

    :pswitch_10  #0x3
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/d;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/presenter/d;->c:Z

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->t(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLjava/lang/Throwable;)V

    return-void

    :pswitch_1a  #0x2
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/d;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/presenter/d;->c:Z

    check-cast p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->y(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void

    :pswitch_24  #0x1
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/d;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/presenter/d;->c:Z

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->D(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLjava/lang/Throwable;)V

    return-void

    :pswitch_2e  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/d;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/presenter/d;->c:Z

    check-cast p1, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->B(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLcom/micloud/midrive/session/action/SyncFileOperationResponse;)V

    return-void

    :goto_38
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/d;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-boolean v1, p0, Lcom/android/cloud/fragment/presenter/d;->c:Z

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->z(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;ZLjava/lang/Throwable;)V

    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_24  #00000001
        :pswitch_1a  #00000002
        :pswitch_10  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
