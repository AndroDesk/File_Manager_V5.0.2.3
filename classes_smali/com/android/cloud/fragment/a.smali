.class public final synthetic Lcom/android/cloud/fragment/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/cloud/fragment/CloudDriveFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/cloud/fragment/CloudDriveFragment;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/android/cloud/fragment/a;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/cloud/fragment/a;->b:Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/cloud/fragment/a;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/a;->b:Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->e(Lcom/android/cloud/fragment/CloudDriveFragment;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/android/cloud/fragment/a;->b:Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-static {v0, p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->b(Lcom/android/cloud/fragment/CloudDriveFragment;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
