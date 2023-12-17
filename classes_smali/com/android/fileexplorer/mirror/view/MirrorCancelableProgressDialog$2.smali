.class Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$2;
.super Ljava/lang/Object;
.source "MirrorCancelableProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->cancel()V

    return-void
.end method
