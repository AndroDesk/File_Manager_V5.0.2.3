.class public final synthetic Lcom/android/cloud/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/view/KeyEvent$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V
    .registers 4

    iput p3, p0, Lcom/android/cloud/b;->a:I

    iput-object p1, p0, Lcom/android/cloud/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/cloud/b;->c:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget v0, p0, Lcom/android/cloud/b;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/cloud/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/cloud/CloudDriveManager;

    iget-object v1, p0, Lcom/android/cloud/b;->c:Landroid/view/KeyEvent$Callback;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/CloudDriveManager;->a(Lcom/android/cloud/CloudDriveManager;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/cloud/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/EditDialogFragment;

    iget-object v1, p0, Lcom/android/cloud/b;->c:Landroid/view/KeyEvent$Callback;

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v0, v1, p1}, Lmiuix/navigator/EditDialogFragment;->f(Lmiuix/navigator/EditDialogFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
