.class Lcom/android/fileexplorer/fragment/FileGroupFragment$6;
.super Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;
.source "FileGroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileGroupFragment;->setRecyclerViewHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;ILjava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$6;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;-><init>(ILjava/util/List;)V

    return-void
.end method
