.class public final synthetic Lcom/android/cloud/fragment/presenter/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll2/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/android/cloud/fragment/presenter/j;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/j;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/cloud/fragment/presenter/j;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/j;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;

    check-cast p1, Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->b(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;Lcom/micloud/midrive/server/protocol/CreateFolderResponse;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/j;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;->a(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$1;Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
