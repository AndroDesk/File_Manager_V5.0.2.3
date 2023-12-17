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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/TextInputDialog$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->dismiss()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$1000(Lcom/android/fileexplorer/view/TextInputDialog;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$1100(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;

    move-result-object p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$3;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$1100(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/fileexplorer/view/TextInputDialog$OnCancelListener;->onCancel()V

    :cond_23
    return-void
.end method
