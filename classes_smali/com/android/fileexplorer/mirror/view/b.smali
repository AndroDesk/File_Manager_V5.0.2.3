.class public final synthetic Lcom/android/fileexplorer/mirror/view/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;

.field public final synthetic c:Lmiuix/appcompat/app/AlertDialog;

.field public final synthetic d:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;I)V
    .registers 5

    .line 1
    iput p4, p0, Lcom/android/fileexplorer/mirror/view/b;->a:I

    .line 3
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/b;->b:Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;

    .line 5
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/b;->c:Lmiuix/appcompat/app/AlertDialog;

    .line 7
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/view/b;->d:Landroid/widget/CheckBox;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/mirror/view/b;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/b;->b:Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/b;->c:Lmiuix/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/b;->d:Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, p1}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->e(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/b;->b:Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/b;->c:Lmiuix/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/b;->d:Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, p1}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->f(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/b;->b:Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/b;->c:Lmiuix/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/view/b;->d:Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, p1}, Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory;->c(Lcom/android/fileexplorer/mirror/view/MirrorAlertDialogFactory$onOverrideClickListener;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
