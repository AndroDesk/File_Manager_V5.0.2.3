.class Lcom/android/fileexplorer/util/BaseActivityHelper$4;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/BaseActivityHelper;->showCancelOverwriteDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener2;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$4;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    const v1, 0x7f1102e9

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f11005c

    .line 22
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;

    .line 33
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$4$2;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$4;)V

    .line 36
    const v2, 0x7f1100eb

    .line 39
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/android/fileexplorer/util/BaseActivityHelper$4$1;

    .line 45
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/BaseActivityHelper$4$1;-><init>(Lcom/android/fileexplorer/util/BaseActivityHelper$4;)V

    .line 48
    const v2, 0x7f110050

    .line 51
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    .line 58
    return-void
.end method
