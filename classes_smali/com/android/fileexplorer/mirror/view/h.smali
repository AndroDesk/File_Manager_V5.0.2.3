.class public final synthetic Lcom/android/fileexplorer/mirror/view/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;I)V
    .registers 3

    iput p2, p0, Lcom/android/fileexplorer/mirror/view/h;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/h;->a:I

    packed-switch v0, :pswitch_data_48

    goto :goto_42

    :pswitch_6  #0x9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->e(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_c  #0x8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->d(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_12  #0x7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->i(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_18  #0x6
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->c(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x5
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->a(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_24  #0x4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->h(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_2a  #0x3
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->j(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_30  #0x2
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->f(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_36  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->l(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_3c  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->k(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :goto_42
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/h;->b:Lcom/android/fileexplorer/mirror/view/MirrorRenameView;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorRenameView;->m(Lcom/android/fileexplorer/mirror/view/MirrorRenameView;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3c  #00000000
        :pswitch_36  #00000001
        :pswitch_30  #00000002
        :pswitch_2a  #00000003
        :pswitch_24  #00000004
        :pswitch_1e  #00000005
        :pswitch_18  #00000006
        :pswitch_12  #00000007
        :pswitch_c  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method
