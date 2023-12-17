.class Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$3;
.super Ljava/lang/Object;
.source "MirrorInformationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$3;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog$3;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;->access$300(Lcom/android/fileexplorer/mirror/view/MirrorInformationDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    return-void
.end method
