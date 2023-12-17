.class Lcom/android/fileexplorer/view/CancelableProgressDialog$1;
.super Ljava/lang/Object;
.source "CancelableProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/CancelableProgressDialog;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/CancelableProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/CancelableProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/CancelableProgressDialog$1;->this$0:Lcom/android/fileexplorer/view/CancelableProgressDialog;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/CancelableProgressDialog;->cancel()V

    return-void
.end method
