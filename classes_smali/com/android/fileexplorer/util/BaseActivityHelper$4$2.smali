.class Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/BaseActivityHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/util/BaseActivityHelper$4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->cancelProcessDialog()V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    .line 10
    iget-object p2, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 12
    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    .line 14
    invoke-interface {p2, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->cancelOverWrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 21
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getOverWriteDialog()Lmiuix/appcompat/app/AlertDialog;

    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_25

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    .line 29
    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 31
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getOverWriteDialog()Lmiuix/appcompat/app/AlertDialog;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 38
    :cond_25
    return-void
.end method
