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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/util/BaseActivityHelper$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;->skip()V

    goto :goto_17

    :cond_10
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2$2;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;->overwrite()V

    :goto_17
    return-void
.end method
