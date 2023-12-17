.class Lcom/android/fileexplorer/view/TextInputDialog$2$3;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/TextInputDialog$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/TextInputDialog$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->dismiss()V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 10
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$1000(Lcom/android/fileexplorer/view/TextInputDialog;)V

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 17
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$1100(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_23

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 27
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 29
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$1100(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;

    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;->onCancel()V

    .line 36
    :cond_23
    return-void
.end method
