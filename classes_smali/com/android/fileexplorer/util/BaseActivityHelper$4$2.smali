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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/util/BaseActivityHelper$4;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->cancelProcessDialog()V

    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    iget-object p2, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    invoke-interface {p2, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->cancelOverWrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V

    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getOverWriteDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$4;

    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getOverWriteDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_25
    return-void
.end method
