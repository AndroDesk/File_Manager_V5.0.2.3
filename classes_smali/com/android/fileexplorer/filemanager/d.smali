.class public final synthetic Lcom/android/fileexplorer/filemanager/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/filemanager/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/filemanager/d;->a:I

    packed-switch v0, :pswitch_data_e

    goto :goto_a

    :pswitch_6  #0x0
    invoke-static {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->a(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :goto_a
    invoke-static {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager$13;->b(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
