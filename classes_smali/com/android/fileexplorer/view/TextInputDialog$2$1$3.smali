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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/TextInputDialog$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$3;->this$2:Lcom/android/fileexplorer/view/TextInputDialog$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/view/TextInputDialog$2$1$3;->this$2:Lcom/android/fileexplorer/view/TextInputDialog$2$1;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2$1;->this$1:Lcom/android/fileexplorer/view/TextInputDialog$2;

    iget-object p1, p1, Lcom/android/fileexplorer/view/TextInputDialog$2;->this$0:Lcom/android/fileexplorer/view/TextInputDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/TextInputDialog;->access$700(Lcom/android/fileexplorer/view/TextInputDialog;)V

    return-void
.end method
