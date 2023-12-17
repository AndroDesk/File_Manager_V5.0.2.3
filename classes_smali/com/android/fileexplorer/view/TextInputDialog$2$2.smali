.class Lcom/android/fileexplorer/view/TextInputDialog$2$2;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$2;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$2;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 8
    return-void
.end method
