.class Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;
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

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;->this$2:Lcom/android/fileexplorer/view/TextInputDialog$2$1;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;->val$text:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;->this$2:Lcom/android/fileexplorer/view/TextInputDialog$2$1;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 5
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$800(Lcom/android/fileexplorer/view/TextInputDialog;)Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;

    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;->val$text:Ljava/lang/String;

    .line 13
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/view/TextInputDialog$OnFinishListener;->onFinish(Ljava/lang/String;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1c

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;->this$2:Lcom/android/fileexplorer/view/TextInputDialog$2$1;

    .line 21
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 23
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 25
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 28
    goto :goto_25

    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$2;->this$2:Lcom/android/fileexplorer/view/TextInputDialog$2$1;

    .line 31
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    .line 33
    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    .line 35
    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$700(Lcom/android/fileexplorer/view/TextInputDialog;)V

    .line 38
    :goto_25
    return-void
.end method
