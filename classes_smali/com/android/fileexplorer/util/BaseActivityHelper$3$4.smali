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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/util/BaseActivityHelper$3;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3$4;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_14

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_14

    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3$4;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$3;

    iget-object p3, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    invoke-interface {p3, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showCancelOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V

    return p2

    :cond_14
    const/4 p1, 0x0

    return p1
.end method
