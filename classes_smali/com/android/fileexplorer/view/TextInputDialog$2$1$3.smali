.class Lcom/android/fileexplorer/view/TextInputDialog$2$1$3;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/TextInputDialog$2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/android/fileexplorer/view/TextInputDialog$2$1;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$3;->this$2:Lcom/android/fileexplorer/view/TextInputDialog$2$1;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$3;->this$2:Lcom/android/fileexplorer/view/TextInputDialog$2$1;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 5
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$700(Lcom/android/fileexplorer/view/TextInputDialog;)V

    .line 10
    return-void
.end method
