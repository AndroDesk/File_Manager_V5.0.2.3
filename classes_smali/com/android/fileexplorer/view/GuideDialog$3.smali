.class Lcom/android/fileexplorer/view/GuideDialog$3;
.super Ljava/lang/Object;
.source "GuideDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/GuideDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/GuideDialog;

.field public final synthetic val$scrollTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/GuideDialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog$3;->this$0:Lcom/android/fileexplorer/view/GuideDialog;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/GuideDialog$3;->val$scrollTask:Ljava/lang/Runnable;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/GuideDialog$3;->val$scrollTask:Ljava/lang/Runnable;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->cancelTask(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method
