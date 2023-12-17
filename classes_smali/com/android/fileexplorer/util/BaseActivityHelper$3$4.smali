.class Lcom/android/fileexplorer/util/BaseActivityHelper$3$4;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/BaseActivityHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$3;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/util/BaseActivityHelper$3;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3$4;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$3;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p2, p1, :cond_14

    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x1

    .line 9
    if-ne p1, p2, :cond_14

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3$4;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$3;

    .line 13
    iget-object p3, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 15
    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    .line 17
    invoke-interface {p3, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showCancelOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    .line 20
    return p2

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method
