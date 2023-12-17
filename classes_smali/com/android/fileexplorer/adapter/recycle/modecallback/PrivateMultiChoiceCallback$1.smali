.class Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback$1;
.super Ljava/lang/Object;
.source "PrivateMultiChoiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/PrivateMultiChoiceCallback;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f110114

    .line 12
    const v3, 0x7f110112

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x1

    .line 19
    invoke-static/range {v1 .. v7}, Lcom/android/fileexplorer/model/Util;->pickFolder(Landroid/app/Activity;IIZZZZ)V

    .line 22
    return-void
.end method
