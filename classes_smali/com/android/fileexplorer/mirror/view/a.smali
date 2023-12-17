.class public final synthetic Lcom/android/fileexplorer/mirror/view/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;

.field public final synthetic c:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;I)V
    .registers 4

    .line 1
    iput p3, p0, Lcom/android/fileexplorer/mirror/view/a;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/a;->b:Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;

    .line 5
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/a;->c:Lmiuix/appcompat/app/AlertDialog;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/a;->b:Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->a(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/a;->b:Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->d(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
