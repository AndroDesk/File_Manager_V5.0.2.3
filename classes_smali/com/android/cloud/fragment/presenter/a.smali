.class public final synthetic Lcom/android/cloud/fragment/presenter/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll2/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;I)V
    .registers 3

    iput p2, p0, Lcom/android/cloud/fragment/presenter/a;->a:I

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/a;->b:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/cloud/fragment/presenter/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/a;->b:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->a(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;Ljava/util/List;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/a;->b:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->b(Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
