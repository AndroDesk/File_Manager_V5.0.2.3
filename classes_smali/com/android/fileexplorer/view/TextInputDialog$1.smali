.class Lcom/android/fileexplorer/view/TextInputDialog$1;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/TextInputDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/TextInputDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/TextInputDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

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

    iget-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p2}, Lcom/android/fileexplorer/view/TextInputDialog;->access$000(Lcom/android/fileexplorer/view/TextInputDialog;)Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->isFileNameTooLong(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p2}, Lcom/android/fileexplorer/view/TextInputDialog;->access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p3}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f182ccb

    invoke-static {p4}, Lnp/NPFog;->d(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_33

    :cond_29
    iget-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p2}, Lcom/android/fileexplorer/view/TextInputDialog;->access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :goto_33
    iget-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3f
    return-void
.end method
