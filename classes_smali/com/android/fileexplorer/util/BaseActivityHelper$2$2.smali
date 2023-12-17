.class Lcom/android/fileexplorer/util/BaseActivityHelper$2$2;
.super Ljava/lang/Object;
.source "BaseActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/BaseActivityHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$2;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/util/BaseActivityHelper$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    .line 3
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_10

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;

    .line 13
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;->skip()V

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;

    .line 21
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;->overwrite()V

    .line 24
    :goto_17
    return-void
.end method
