.class Lcom/android/fileexplorer/util/BaseActivityHelper$3$2;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$3;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$3;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getOverWriteDialog()Lmiuix/appcompat/app/AlertDialog;

    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_19

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setToAll(Z)V

    .line 26
    :cond_19
    iget-object v0, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$3$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$3;

    .line 28
    iget-object v0, v0, Lcom/android/fileexplorer/util/BaseActivityHelper$3;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    .line 30
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;->replace()V

    .line 33
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 36
    return-void
.end method
