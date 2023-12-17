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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V
    .registers 13

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$6;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/mirror/modecallback/MirrorFileMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;Lcom/android/fileexplorer/filemanager/FileOperationManager;I)V

    return-void
.end method
