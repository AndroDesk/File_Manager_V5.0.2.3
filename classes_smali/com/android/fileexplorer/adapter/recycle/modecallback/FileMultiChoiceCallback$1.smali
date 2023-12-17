.class Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;
.super Ljava/lang/Object;
.source "FileMultiChoiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-eq v0, v4, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v3

    :goto_17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)I

    move-result v0

    const/4 v5, 0x6

    if-eq v0, v5, :cond_22

    move v0, v2

    goto :goto_23

    :cond_22
    move v0, v3

    :goto_23
    iget-object v6, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    invoke-static {v6}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)I

    move-result v6

    if-eq v6, v5, :cond_2d

    move v6, v2

    goto :goto_2e

    :cond_2d
    move v6, v3

    :goto_2e
    const/4 v7, 0x1

    const v2, 0x7f1100f3

    const v3, 0x7f1102ed

    move v5, v0

    invoke-static/range {v1 .. v7}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    return-void
.end method
