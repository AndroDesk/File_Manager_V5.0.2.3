.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$6;
.super Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;
.source "MirrorFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V
    .registers 13

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$6;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move-object v4, p5

    .line 8
    move v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V

    .line 12
    return-void
.end method
