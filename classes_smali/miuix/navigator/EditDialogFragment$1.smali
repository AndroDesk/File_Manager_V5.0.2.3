.class Lmiuix/navigator/EditDialogFragment$1;
.super Ljava/lang/Object;
.source "EditDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/EditDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/EditDialogFragment;

.field public final synthetic val$dialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/EditDialogFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lmiuix/navigator/EditDialogFragment$1;->this$0:Lmiuix/navigator/EditDialogFragment;

    iput-object p2, p0, Lmiuix/navigator/EditDialogFragment$1;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p2, p0, Lmiuix/navigator/EditDialogFragment$1;->this$0:Lmiuix/navigator/EditDialogFragment;

    invoke-static {p2}, Lmiuix/navigator/EditDialogFragment;->access$000(Lmiuix/navigator/EditDialogFragment;)Lmiuix/navigator/EditDialogFragment$EditDialogListener;

    move-result-object p2

    if-eqz p2, :cond_27

    iget-object p2, p0, Lmiuix/navigator/EditDialogFragment$1;->this$0:Lmiuix/navigator/EditDialogFragment;

    invoke-static {p2}, Lmiuix/navigator/EditDialogFragment;->access$000(Lmiuix/navigator/EditDialogFragment;)Lmiuix/navigator/EditDialogFragment$EditDialogListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lmiuix/navigator/EditDialogFragment$EditDialogListener;->isPositiveBtnEnable(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object p2, p0, Lmiuix/navigator/EditDialogFragment$1;->val$dialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_27

    iget-object p1, p0, Lmiuix/navigator/EditDialogFragment$1;->this$0:Lmiuix/navigator/EditDialogFragment;

    invoke-static {p1}, Lmiuix/navigator/EditDialogFragment;->access$000(Lmiuix/navigator/EditDialogFragment;)Lmiuix/navigator/EditDialogFragment$EditDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/navigator/EditDialogFragment$EditDialogListener;->onPositiveDisable()V

    :cond_27
    return-void
.end method
