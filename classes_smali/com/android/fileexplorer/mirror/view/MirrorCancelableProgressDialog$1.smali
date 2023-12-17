.class Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$1;
.super Ljava/lang/Object;
.source "MirrorCancelableProgressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->show()V
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

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/view/MirrorCancelableProgressDialog;->cancel()V

    return-void
.end method
