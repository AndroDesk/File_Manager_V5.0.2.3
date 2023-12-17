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
.method public constructor <init>(Lcom/android/fileexplorer/view/TextInputDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 3
    invoke-static {p2}, Lcom/android/fileexplorer/view/TextInputDialog;->access$000(Lcom/android/fileexplorer/view/TextInputDialog;)Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_3b

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->isFileNameTooLong(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_25

    .line 15
    iget-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 17
    invoke-static {p2}, Lcom/android/fileexplorer/view/TextInputDialog;->access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;

    .line 20
    move-result-object p2

    .line 21
    iget-object p3, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 23
    invoke-static {p3}, Lcom/android/fileexplorer/view/TextInputDialog;->access$100(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/content/Context;

    .line 26
    move-result-object p3

    .line 27
    const p4, 0x7f11015d

    .line 30
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 37
    goto :goto_2f

    .line 38
    :cond_25
    iget-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 40
    invoke-static {p2}, Lcom/android/fileexplorer/view/TextInputDialog;->access$200(Lcom/android/fileexplorer/view/TextInputDialog;)Landroid/widget/EditText;

    .line 43
    move-result-object p2

    .line 44
    const/4 p3, 0x0

    .line 45
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 48
    :goto_2f
    iget-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog$1;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 50
    const/4 p3, -0x1

    .line 51
    invoke-virtual {p2, p3}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 54
    move-result-object p2

    .line 55
    xor-int/lit8 p1, p1, 0x1

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    :cond_3b
    return-void
.end method
