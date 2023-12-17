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
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object v1

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)I

    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/16 v4, 0xc

    .line 19
    if-eq v0, v4, :cond_16

    .line 21
    move v4, v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v4, v3

    .line 24
    :goto_17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    .line 26
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)I

    .line 29
    move-result v0

    .line 30
    const/4 v5, 0x6

    .line 31
    if-eq v0, v5, :cond_22

    .line 33
    move v0, v2

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move v0, v3

    .line 36
    :goto_23
    iget-object v6, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback$1;->this$0:Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;

    .line 38
    invoke-static {v6}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->access$000(Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;)I

    .line 41
    move-result v6

    .line 42
    if-eq v6, v5, :cond_2d

    .line 44
    move v6, v2

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v6, v3

    .line 47
    :goto_2e
    const/4 v7, 0x1

    .line 48
    const v2, 0x7f1100f3

    .line 51
    const v3, 0x7f1102ed

    .line 54
    move v5, v0

    .line 55
    invoke-static/range {v1 .. v7}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 58
    return-void
.end method
