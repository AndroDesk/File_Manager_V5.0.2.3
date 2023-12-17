.class Lcom/android/fileexplorer/util/BaseActivityHelper$2$1;
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
    iput-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2$1;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2$1;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->cancelProcessDialog()V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/util/BaseActivityHelper$2$1;->this$0:Lcom/android/fileexplorer/util/BaseActivityHelper$2;

    .line 10
    iget-object p2, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$baseActivityOpInterface:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 12
    iget-object p1, p1, Lcom/android/fileexplorer/util/BaseActivityHelper$2;->val$listener:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;

    .line 14
    invoke-interface {p2, p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->cancelOverWrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface$OnOverwriteButtonClickedListener;)V

    .line 17
    return-void
.end method
