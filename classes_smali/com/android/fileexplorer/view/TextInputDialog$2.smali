.class Lcom/android/fileexplorer/view/TextInputDialog$2;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog$2$1;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/TextInputDialog$2$1;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 18
    const/4 v0, -0x2

    .line 19
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog$2$2;

    .line 25
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/TextInputDialog$2$2;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2;)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 33
    new-instance v0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;

    .line 35
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/TextInputDialog$2$3;-><init>(Lcom/android/fileexplorer/view/TextInputDialog$2;)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 43
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$1200(Lcom/android/fileexplorer/view/TextInputDialog;)V

    .line 46
    return-void
.end method
